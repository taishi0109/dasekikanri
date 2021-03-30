module GamesHelper
  def rate_format(rate_str)
    a, b = rate_str.split('.')
    puts "整数部： #{a}, 少数部: #{b}"
    if a == '0' && b == '0'
      '000'
    elsif a == '0'
      ".#{b.ljust(3, '0')}"
    else
      rate_str
    end
  end
end
