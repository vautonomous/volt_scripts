import argparse
import os
import errno

import lanelet2
from lanelet2.projection import UtmProjector
from lanelet2.core import AttributeMap, Lanelet, LineString3d, Point3d, getId, LaneletMap, BoundingBox2d, BasicPoint2d


class Lanelet2Processor:
    def __init__(self, args):
        self.map_in = args.file
        self.map_out = args.output
        self.projector = UtmProjector(lanelet2.io.Origin(args.origin[0], args.origin[1]))
        self.map = None
        self.check_input_map()

    def run(self):
        self.load_map()
        centerlines_linestring3d = self.get_centerline()
        self.add_centerlines_to_map(centerlines_linestring3d)
        self.export_map()

    def check_input_map(self):
        # Check whether the input file exist
        if not os.path.exists(self.map_in):
            raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), self.map_in)

    def load_map(self):
        # Load map
        print('LOG: Loading map!')
        self.map, errors = lanelet2.io.loadRobust(self.map_in, self.projector)
        assert not errors

    def get_centerline(self):
        # Calculate centerlines by iterating over lanelet2 map and return LineStrings
        print('LOG: Calcuting centerlines!')
        arr_centerline = []
        for lanelet in self.map.laneletLayer:
            # Filter lanelet object if they represent road regulators
            if lanelet.attributes["subtype"] == "crosswalk" or \
               lanelet.attributes["subtype"] == "speed_bump":
                continue
            cl_temp = lanelet.centerline
            centerline_points = []
            centerline_linestring = LineString3d(getId(), [])
            # Centerlines are calculated with InvalID which is 0
            # We need to create new variables with unique IDs
            for point in cl_temp:
                centerline_linestring.append(Point3d(getId(), point.x, point.y, point.z))
                # centerline_points.append(Point3d(getId(), point.x, point.y, point.z))
            centerline_linestring.attributes["oneway"] = "yes"
            arr_centerline.append(centerline_linestring)
        return arr_centerline

    def add_centerlines_to_map(self, centerline_array):
        for centerline in centerline_array:
            self.map.add(centerline)

    def export_map(self):
        print('LOG: Exporting map!')
        lanelet2.io.write(self.map_out, self.map, self.projector)


if __name__ == '__main__':
    # Get input and output maps from user
    parser = argparse.ArgumentParser(description='Create centerline nodes for given the lanelet2 map')
    parser.add_argument('--file', type=str, help='path for input lanelet2 map')
    parser.add_argument('--output', type=str, help='path for output lanelet2 map')
    parser.add_argument('--origin', nargs='+', type=float, help='Coordinates of origin point lat/long')
    args = parser.parse_args()

    # Create Lanelet2 processor object
    map_processor = Lanelet2Processor(args)
    map_processor.run()
