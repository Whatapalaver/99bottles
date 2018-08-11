# 99 Bottles of Beer
class Bottles
  def verse(num)
    line1 = "#{tense_one(num)} on the wall, #{tense_one(num).downcase}."
    line2 = if num.zero?
              'Go to the store and buy some more, 99 bottles of beer on the wall.'
            else
              "Take #{one_it(num)} down and pass it around, #{tense_two(num)}."
            end
    [line1, line2, ''].join("\n")
  end

  def one_it(num)
    num == 1 ? 'it' : 'one'
  end

  def tense_one(num)
    if num.zero?
      then 'No more bottles of beer'
    elsif num == 1
      then '1 bottle of beer'
    else
      "#{num} bottles of beer"
    end
  end

  def tense_two(num)
    if num == 2
      then '1 bottle of beer on the wall'
    elsif num == 1
      then 'no more bottles of beer on the wall'
    else
      "#{num - 1} bottles of beer on the wall"
    end
  end
end
