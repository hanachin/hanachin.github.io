require File.expand_path '../hanachin', __dir__
require 'sitespec'

Sitespec.configuration.application = Hanachin.new

describe 'hanachin.github.io' do
  include Sitespec

  it 'has hello world' do
    get '/index.html'
  end
end
