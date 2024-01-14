class Bottles

  def song()
    verses
  end

  def verse(verse_no)
    <<-VERSE
#{starting_sentence(verse_no)}
#{remaining_sentence(verse_no - 1)}
VERSE
  end

  def verses(first=99, last=0)
    first.downto(last).map { |n| verse(n) }.join("\n")
  end

  private

  def bottle_tense(no)
    no > 1 ? "bottles" : "bottle"
  end

  def starting_sentence(count)
    case count
    when 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      "#{count} #{bottle_tense(count)} of beer on the wall, #{count} #{bottle_tense(count)} of beer."
    end
  end

  def remaining_sentence(count)
    case count
    when 0
      "Take it down and pass it around, no more bottles of beer on the wall."
    when -1
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take one down and pass it around, #{count} #{bottle_tense(count)} of beer on the wall."
    end
  end
end