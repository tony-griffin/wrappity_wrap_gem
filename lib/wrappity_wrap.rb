require "wrappity_wrap/version"

module WrappityWrap
  class Error < StandardError; end

    def wrap(string, column)
      if string.nil?
        return ""
      end

      return string if string.length <= column

      if string[0..column].index(" ") != nil
          whitespace = string[0...column].rindex(" ")
         return string[0...whitespace] + "/n" +wrap(string[whitespace+1..-1],column)
      end
      ""
    end
  end


