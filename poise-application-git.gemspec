#
# Copyright 2015, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poise_application_git/version'

Gem::Specification.new do |spec|
  spec.name = 'poise-application-git'
  spec.version = PoiseApplicationGit::VERSION
  spec.authors = ['Noah Kantrowitz']
  spec.email = %w{noah@coderanger.net}
  spec.description = 'A plugin for poise-application to deploy applications from git.'
  spec.summary = spec.description
  spec.homepage = 'https://github.com/poise/application_git'
  spec.license = 'Apache 2.0'
  spec.metadata['halite_name'] = 'application_git'

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w{lib}

  spec.add_dependency 'halite', '~> 1.0'
  spec.add_dependency 'poise', '~> 2.0'
  spec.add_dependency 'poise-application', '~> 5.0'

  spec.add_development_dependency 'berkshelf', '~> 4.0'
  spec.add_development_dependency 'poise-boiler', '~> 1.6'

  spec.metadata['halite_dependencies'] = 'git'
end
