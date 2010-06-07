require 'md5'

class Rack::Bundle::CSSBundle
  attr_accessor :contents, :hash
  def initialize *files
    @contents = files.join "\n"
    @hash = MD5.new @contents
  end  
end