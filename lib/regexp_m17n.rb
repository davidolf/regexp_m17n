module RegexpM17N
  def self.non_empty?(str)
#     p str.encoding.name
     begin
       regexp = /^.+$/
       str =~ regexp
     rescue Encoding::CompatibilityError
       begin
         str.encode('UTF-8') =~ regexp
       rescue Encoding::ConverterNotFoundError
         str.force_encoding('UTF-8') =~ regexp
       end
     end
  end
end
