class Anagrams
  # To change this template use File | Settings | File Templates.
  def combine_anagrams(words)

    hash = Hash.new
    words.each do |word|

      hash[word.downcase.sum] ||= []
      hash[word.downcase.sum] << word

    end
    puts hash
  end
end

oelo = Anagrams.new
oelo.combine_anagrams(["er","er","yeah","jum"])