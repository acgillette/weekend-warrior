class Alouette
  attr_accessor :verse, :lines

  def initialize
    @verse = ""
    @lines = []
  end

  def lines_for_verse(verse)
    line = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!",
    "Et les pattes!", "Et la queue!", "Et le dos!"]
    until verse < 0
      @lines << line[num]
      verse -= 1
    end
    return @line
  end

  def verse(verse)
    return @verse
  end

  def sing
  end

end
