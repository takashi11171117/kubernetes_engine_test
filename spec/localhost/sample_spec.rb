require 'spec_helper'

describe command('python -V 2>&1') do
  its(:stdout) { should match (/Python 2.7/) }
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
