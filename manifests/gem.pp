# Copyright 2015 Hewlett-Packard Development Company, L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

# == Class: setproxy::gem
#
# A class to manage rubygems proxy settings
class setproxy::gem (
  $http_proxy   = undef,
  $https_proxy  = undef,
) {

  file { '/etc/gemrc':
    ensure  => file,
    content => template('setproxy/gemrc.erb'),
    mode    => '0644',
  }
}

