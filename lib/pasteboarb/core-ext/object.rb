require 'pasteboarb/platform'
require "pasteboarb/platforms/#{PasteboaRb::Platform.OS}"

class Object
  #copy to pasteboard
  #pboard = general | ruler | find | font
  def to_pboard(pboard=:general)
    paste pboard if PasteboaRb::TO_PBOARD.call self, pboard
  end
  alias :to_pb :to_pboard

  #paste from given pasteboard
  #pboard = general | ruler | find | font
  def paste(pboard=:general)
    PasteboaRb::PASTE.call pboard
  end
  
  def to_find
    self.to_pb :find
  end
end
