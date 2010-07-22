require 'rubygems'
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'pasteboaRb'

class Test::Unit::TestCase
  def self.supported? platform
    supported = ''
    PasteboaRb::Platform::Supported.constants.each_with_index do |k, i|
      if platform == PasteboaRb::Platform::Supported::class_eval(k)
        supported = true
        break
      else
        supported = false
      end
    end
    supported
  end
end
