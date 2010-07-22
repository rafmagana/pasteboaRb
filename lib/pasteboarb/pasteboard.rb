module PasteboaRb
  class PasteboardBase
    attr_reader :pboard
  end
  
  class General < PasteboardBase
    def initialize
      @pboard = :general
    end
  end
end