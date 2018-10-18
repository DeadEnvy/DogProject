#Marcus Mamott - Beer Song
#September 14, 2018

class BeerSong
    def verse(current_verse)
        case
        when current_verse == 0
            "No more bottles of beer on the wall, no more bottles of beer.\n" \
            "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        when current_verse == 1
            "#{current_verse} bottle of beer on the wall, #{current_verse} bottle of beer.\n" \
            "Take it down and pass it around, no more bottles of beer on the wall.\n"
        when current_verse == 2
            "#{current_verse} bottles of beer on the wall, #{current_verse} bottles of beer.\n" \
            "Take one down and pass it around, #{current_verse - 1} bottle of beer on the wall.\n"
        else
            "#{current_verse} bottles of beer on the wall, #{current_verse} bottles of beer.\n" \
            "Take one down and pass it around, #{current_verse - 1} bottles of beer on the wall.\n"
        end
    end

    def verses(first_verse, second_verse)
        str = ""
        while first_verse >= second_verse do
          str += "#{verse(first_verse)}\n"
          first_verse -= 1
        end
        str.chomp
    end

    def lyrics
        verses(99,0)
    end
end