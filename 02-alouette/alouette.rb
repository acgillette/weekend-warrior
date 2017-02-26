class Alouette
  attr_accessor :verse

  def initialize
    @verse = []
  end

  def lines_for_verse(num)
    lines = ["Et la tête!", "Et le bec!", "Et les yeux!"]
    until num < 0
      @verse << lines[num]
      num -= 1
    end
    return @verse
  end

  def verse
  end

  def sing
  end

end
