class Homework1

  def palindrome?(str)

    #Quitar caracteres raros, guión bajo y digitos
    str.downcase.gsub!(/\W|\_|\d/,"")
    #Validación del palíndromo - true si es palidromo, false si no
    str == str.reverse
    puts str == str.reverse

  end

  #palindrome? "A man, a plan, a canal -- Panama"

  # @param str [Object]
  def count_words(str)

    frase = str.gsub!(/\W|\_\d/," ").split(" ")
    frase.each do |palabra|

      veces = frase.count(palabra)
      hash[palabra] = veces

    end
    hash



  end

end

oelo = Homework1.new
oelo.palindrome?("Doo bee doo bee doo")

