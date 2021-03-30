module UsersHelper
  def rate_format(rate_str)
    a, b = rate_str.split('.')

    puts "整数部： #{a}, 少数部: #{b}"

    if a == '0' && b == '0'
      '000'
    elsif a == '0'
      if b
        ".#{b.ljust(3, '0')}"
      else
        '000'
      end
    else
      rate_str
    end
  end
end
