require 'helper'

class TestPasteboarb < Test::Unit::TestCase
  
  context "Platform.OS" do
    should "be defined and return a symbol" do
      assert_nothing_thrown { PasteboaRb::Platform.OS }
      assert_instance_of Symbol, PasteboaRb::Platform.OS
    end
  end
  
  context "Object" do
    should "have a to_pboard method" do
      assert_respond_to "test", :to_pboard
    end
    
    should "have to_pb method" do
      assert_respond_to "test", :to_pb
    end
  end
  
  context "PasteboaRb::TO_PBOARD and PasteboaRb::PASTE" do
    should "exist" do
      assert_nothing_thrown { PasteboaRb::TO_PBOARD }
      assert_nothing_thrown { PasteboaRb::PASTE }
    end
    
    should "return a proc" do
      assert_instance_of Proc, PasteboaRb::TO_PBOARD
      assert_instance_of Proc, PasteboaRb::PASTE
    end
  end
  
  if supported? PasteboaRb::Platform.OS
    context "Specifying the pasteboard" do
      should "set the right pasteboard" do
        text = "testing"
      
        text.to_pboard :general
        assert_equal text, paste(:general)
        "".to_pboard :general
      
        text.to_pboard :find
        assert_equal text, paste(:find)
        "".to_pboard :find
      
        text.to_pboard :ruler
        assert_equal text, paste(:ruler)
        "".to_pboard :ruler
      
        text.to_pboard :font
        assert_equal text, paste(:font)
        "".to_pboard :font
      
      end
    end
  else
    context "Unsupported platform" do
      should "return false when calling TO_PBOARD" do
        assert_equal false, PasteboaRb::TO_PBOARD.call('', '')
      end
      should "return a warning when calling PASTE" do
        assert_equal "Platform not supported, only Mac OS X for the moment", PasteboaRb::PASTE.call('')
      end
    end
  end
end
