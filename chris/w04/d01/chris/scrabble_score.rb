# Scrabble Score
# Write a program that, given a word, computes the scrabble score for that word.
 
 
#     Scrabble.score("cabbage")
#     => 14
 
 
# Your program should be in a file named scrabble.rb.
 
# Letter Values
 
# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10

class Scrabble

scores = {

  1 => 'AEIOULNRST',
  2 => 'DG',
  3 => 'BCMP',
  4 => 'FHVWY',
  5 => 'FHVWY',
  8 => 'JX',
  10 => 'QZ'

  }


      def self.score(word) #call self

        total_score = 0

        word.each_char do |char|
         scores.each do |score, letters|
            letters.include? char.upcase
              total_score += score
            end

          end

        end


        total_score
      end
end
puts Scrabble.score("cabbage")
