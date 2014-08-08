module RegexpM17N
  def self.non_empty?(str)
     p str.encoding.name
     begin
      regexp = /^.+$/
      str =~ regexp
#      p str.encoding.name
#      str.encode('UTF-8') =~ /^.+$/
#      str.force_encoding('UTF-8') =~ /^.+$/
     rescue Encoding::CompatibilityError
#      p str.encoding.name
      begin
      str.encode('UTF-8') =~ regexp
      rescue Encoding::ConverterNotFoundError
#      p str, str.encoding.name, str.force_encoding('UTF-8')
      str.force_encoding('UTF-8') =~ regexp
#      str.encode('UTF-32', :invalid => :replace, :replace => 'X').encode('UTF-8') =~ /^.+$/
      end
#      str.encode('UTF-16', :invalid => :replace, :replace => 'X').encode('UTF-8') =~ /^.+$/
     end
#    begin
#      str.encode('UTF-16', :invalid => :replace, :replace => 'X').encode('UTF-8') =~ /^.+$/
#    rescue Encoding::ConverterNotFoundError
#      p str.encoding.name
#      true
#    end
#    str.length > 0
#    if str.encoding.name === "Emacs-Mule" || str.encoding.name === "EUC-TW" || str.encoding.name === "IBM864"
#      true
#    else
#      str.encode('UTF-16', :invalid => :replace, :replace => 'X').encode('UTF-8') =~ /^.+$/
#    end
  end
end
