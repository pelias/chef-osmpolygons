#
# Cookbook Name:: osmpolygons
# Recipe:: user
#

# create user provided someone doesn't tell us to
#   run as root.
user_account node[:osmpolygons][:user][:id] do
  home          node[:osmpolygons][:setup][:basedir]
  shell         node[:osmpolygons][:user][:shell]
  manage_home   node[:osmpolygons][:user][:manage_home]
  create_group  node[:osmpolygons][:user][:create_group]
  ssh_keygen    node[:osmpolygons][:user][:ssh_keygen]
  not_if        { node[:osmpolygons][:user][:id] == 'root' }
end
