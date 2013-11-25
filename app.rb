$:.unshift(File.dirname(__FILE__))
require "kso/app"

get '/' do
  File.read('index.html')
end
