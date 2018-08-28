=begin
 Complete the method so that passing in RGB decimal values will result
 in a hexadecimal representation being returned. The valid decimal values for
  RGB are 0 - 255. Any (r,g,b) argument values that fall out of that range
  should be rounded to the closest valid value.
=end
def rgb(r, g, b)
    str  = ""
    if r < 0
         str << 0.to_s(16).rjust(2,'0')
     elsif r > 255
         str << 255.to_s(16).rjust(2,'0')
    else
        str << r.to_s(16).rjust(2,'0')
    end

    if g < 0
         str << 0.to_s(16).rjust(2,'0')
    elsif g > 255
         str << 255.to_s(16).rjust(2,'0')
    else
        str << g.to_s(16).rjust(2,'0')
    end

    if b < 0
         str << 0.to_s(16).rjust(2,'0')
     elsif b > 255
         str << 255.to_s(16).rjust(2,'0')
    else
        str << b.to_s(16).rjust(2,'0')
    end

 str.upcase
end
rgb(255, 255, 255)
rgb(255, 255, 300)
rgb(0,0,0)
rgb(148, 0, 211)
