#class Homework1

  def palindrome?(str)

    #Quitar caracteres raros, guión bajo y digitos
    str.downcase.gsub!(/\W|\_|\d/,"")
    #Validación del palíndromo - true si es palidromo, false si no
    str == str.reverse

  end

  palindrome? "A man, a plan, a canal -- Panama"

  #pal = Homework1.new
  #pal.palindrome?("A man, a plan, a canal -- Panama")

#end

