ESPERANTO_ALPHABET="abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
require 'pry'

def alphabetize(arr)
  sorted = arr.sort_by do |string|
  ESPERANTO_ALPHABET.index(string[0])
  end
  i = 0
  while i < sorted.length - 1
    #binding.pry
      if sorted[i][0] == sorted[i + 1][0]
        sorted = sorted.sort_by do |string|
          ESPERANTO_ALPHABET.index(string[1])
        end
      end
      i += 1
  end
  i = 0
  while i < sorted.length - 1 && sorted[i].length >= 7
      if sorted[i][4] == sorted[i + 1][4]
        sorted = sorted.sort_by do |string|
          #binding.pry
          ESPERANTO_ALPHABET.index(string[6])
        end
      end
      i += 1
  end
  i = 0
  while i < sorted.length - 1
      if sorted[i][4] == sorted[i + 1][4]
        sorted = sorted.sort_by do |string|
          #binding.pry
          ESPERANTO_ALPHABET.index(string[5])
        end
      end
      i += 1
  end
  sorted
end
