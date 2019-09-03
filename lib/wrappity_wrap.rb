require "wrappity_wrap/version"

module WrappityWrap
  class Error < StandardError; end

    def wrap(string, column) 
      return "" if string.nil?  
       
      return string if string.length <= column 
  
      if string[0... column].index(" ") != nil
        white_space = string[0... column].rindex(" ")
        string[0... white_space] + "\n" + wrap(string[white_space+1.. -1], column)
        elsif string[column] == " "
          string[0... column] + "\n" + wrap(string[column.. -1].strip, column)
            else
              string[0... column].strip + "\n" + wrap(string[column.. -1], column)
      end 
    end  
  end


