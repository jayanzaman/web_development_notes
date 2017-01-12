class RubyRobot
  def introduce_yourself
    "Hi. I am Ruby Robot. Matz is nice, so then I am nice."
  end
  def say_back(*args)
    "#{args.join(" ").upcase}!"
  end

end
