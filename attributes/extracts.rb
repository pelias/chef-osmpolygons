#
# Cookbook Name:: osmpolygons
# Attributes:: extracts
#

# the planet prep and build steps subscribe to the download of new planet
#   data. You can force them to run by setting the below to true. Slice creation
#   does not subscribe to the download of new data. You must set it to true to
#   process new slices.
default[:osmpolygons][:extract][:force][:prep]           = false
default[:osmpolygons][:extract][:force][:build]          = false
default[:osmpolygons][:extract][:force][:slice]          = false

default[:osmpolygons][:extract][:prep][:timeout]         = 14_400   # 4 hours
default[:osmpolygons][:extract][:build][:timeout]        = 43_200  # 12 hours

# see README
default[:osmpolygons][:extract][:slices][:jobs]          = node[:cpu][:total] < 2 ? 1 : (node[:cpu][:total] * 0.4).floor
default[:osmpolygons][:extract][:slices][:timeout]       = 604_800 # 1 week
default[:osmpolygons][:extract][:slices][:exclude_array] = %w()

# planet
#   NOTE: must support an accompanying .md5
#   at the same location, e.g. planet-latest.osm.pbf.md5
default[:osmpolygons][:planet][:download_timeout]        = 7_200 # two hours
default[:osmpolygons][:planet][:verify_checksum]         = true
default[:osmpolygons][:planet][:url]                     = 'http://planet.us-east-1.mapzen.com/planet-latest.osm.pbf'
