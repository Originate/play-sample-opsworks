#
# Cookbook Name:: artifact
# Resource:: package
#
# Author:: Michael Ivey (<michael.ivey@riotgames.com>)
#
# Copyright 2013, Riot Games
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :install
default_action :install

attribute :name, :kind_of => String, :required => true, :name_attribute => true
attribute :location, :kind_of => String
attribute :checksum, :kind_of  => String
attribute :owner, :kind_of => String, :regex => Chef::Config[:user_valid_regex], :default => 'root'
attribute :group, :kind_of => String, :regex => Chef::Config[:user_valid_regex], :default => 'root'
attribute :download_retries, :kind_of => Integer, :default => 1
attribute :nexus_configuration, :kind_of => Chef::Artifact::NexusConfiguration, :default => Chef::Artifact::NexusConfiguration.from_data_bag
