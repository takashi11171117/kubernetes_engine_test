require 'serverspec'
require 'docker'

image = Docker::Image.build_from_dir('.')
set :backend, :docker
set :os, family: :ubuntu
set :docker_image, image.id
