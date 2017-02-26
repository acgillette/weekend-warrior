class Alouette
  @@song = []

  def self.lines_for_verse(verse)
    lines = []
    line = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!",
    "Et les pattes!", "Et la queue!", "Et le dos!"]
    until verse < 0
      lines << line[verse]
      verse -= 1
    end
    return lines
  end

  def self.verse(num)
    verse = ""
    middle = lines_for_verse(num)
    plumerai = middle[0].split(" ")
    plumerai.shift
    plumerai = plumerai.join(" ")
    plumerai.delete! '!'
    2.times do
      verse += "Je te plumerai #{plumerai}.\n"
    end
    middle.each do |line|
      2.times do
        verse += line + "\n"
      end
    end
    verse += "Alouette!\nAlouette!\nA-a-a-ah"
    return verse
  end

  def self.sing
    num = 0
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n"
    end_song = "\n\nAlouette, gentille alouette,\nAlouette, je te plumerai."
    @@song << refrain
    until num > 7
      @@song << verse(num)
      @@song << "\n\n"
      @@song << refrain
      num += 1
    end
    2.times do
    @@song.pop
    end
    @@song << end_song

    return @@song.join("")
  end

end
