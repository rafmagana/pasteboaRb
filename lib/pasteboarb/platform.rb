module PasteboaRb
  class Platform
    def self.OS
        os = NonSupported::UNKNOWN
        if RUBY_PLATFORM =~ /darwin/i
          os = Supported::MACOSX
        end
        os
    end
    
    module Supported
      MACOSX = :macosx
    end
    
    module NonSupported
      UNKNOWN = :unknown
    end
  end
end

PasteboaRb::Platform::Supported::MACOSX # => :macosx
