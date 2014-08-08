# encoding : UTF-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      if enc.name != "ISO-2022-JP-2" && enc.name != "UTF-7"
      assert(RegexpM17N.non_empty?('.'.encode(enc)))
      assert(!(RegexpM17N.non_empty?(''.encode(enc))))
      else
      assert(RegexpM17N.non_empty?('.'.force_encoding(enc)))
      assert(!(RegexpM17N.non_empty?(''.force_encoding(enc))))
      end
    end
  end
end
