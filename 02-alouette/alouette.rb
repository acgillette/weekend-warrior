class Alouette
  attr_accessor :verse, :song

  def initialize
    @verse = ""
    @song = []
  end

  def lines_for_verse(verse)
    lines = []
    line = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!",
    "Et les pattes!", "Et la queue!", "Et le dos!"]
    until verse < 0
      lines << line[verse]
      verse -= 1
    end
    return lines
  end

  def verse(verse)
    middle = lines_for_verse(verse)
    plumerai = middle[0].split(" ")
    plumerai.shift
    plumerai = plumerai.join(" ")
    plumerai.delete! '!'
    2.times do
      @verse += "Je te plumerai #{plumerai}.\n"
    end
    middle.each do |line|
      2.times do
        @verse += line + "\n"
      end
    end
    @verse += "Alouette!\nAlouette!\nA-a-a-ah"
    return @verse
  end

  def sing
    @song << "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"
    @song << "\n\nAlouette, gentille alouette,\nAlouette, je te plumerai."

    return @song.join("")
  end

end

song = Alouette.new
puts song.sing
