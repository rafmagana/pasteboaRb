module PasteboaRb
  TO_PBOARD = lambda do |context, pboard|
    %x[printf %s "#{context.to_s}" | pbcopy -pboard #{pboard.to_s}]
  end
  
  PASTE = lambda do |pboard|
    %x[pbpaste -pboard #{pboard.to_s}].chomp
  end
end