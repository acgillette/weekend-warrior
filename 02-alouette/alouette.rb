class Alouette
  attr_accessor :verse

  def initialize
    @verse = []
  end

  def lines_for_verse(num)
    lines = ["Et la tête!", "Et le bec!", "Et les yeux!"]
    if num == 0
      @verse = ["Et la tête!"]
    else
      @verse == ["test"]
    end
    return @verse
  end

  def verse
  end

  def sing
  end

end
