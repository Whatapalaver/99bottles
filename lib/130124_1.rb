class Bottles

  def song()
    verses
  end

  def verse(verse_no)
    <<-VERSE
#{first_sentence(verse_no)}
#{last_sentence(verse_no - 1)}
VERSE
  end

  def verses(first=99, last=0)
    first.downto(last).map { |n| verse(n) }.join("\n")
  end

  private

  def bottle_tense(no)
    no > 1 ? "bottles" : "bottle"
  end

  def first_sentence(starting_bottles)
    case starting_bottles
    when 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      "#{starting_bottles} #{bottle_tense(starting_bottles)} of beer on the wall, #{starting_bottles} #{bottle_tense(starting_bottles)} of beer."
    end
  end

  def last_sentence(remaining_bottles)
    case remaining_bottles
    when 0
      "Take it down and pass it around, no more bottles of beer on the wall."
    when -1
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take one down and pass it around, #{remaining_bottles} #{bottle_tense(remaining_bottles)} of beer on the wall."
    end
  end
end