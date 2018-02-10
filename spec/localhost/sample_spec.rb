require 'spec_helper'
describe package('bash') do
  it { should be_installed }
end

describe command('pip -V') do
  its(:stdout) { should match (/pip/) }
end

describe command('pip list | grep Flask') do
  its(:stdout) { should match (/Flask/) }
end

describe port(80) do
  it { should be_listening }
end
