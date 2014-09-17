# Cookbook Name:: app
# Recipe:: deploy
#

# This deploys the application
opsworks_play2 do
  app "app"
  deploy_data node[:deploy][:app] # This data comes from OpsWorks' JSON blob
end