#
# Cookbook Name:: osmpolygons
# Recipe:: default
#

%w(
  osmpolygons::_user
  osmpolygons::_setup
  osmpolygons::_deploy
  osmpolygons::_extracts
).each do |r|
  include_recipe r
end
