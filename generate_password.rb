module PasswordGenerator

  def initialize(length,num=0)
    @length_pass=length
    @num=num
  end
  
  def generate_vowels() 
     vowels = ["a","e","i","y","o","u"]
     letter = vowels[rand(vowels.length)]
     return letter
  end

  def generate_consonants() 
     consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","x","w","z"]
     letter = consonants[rand(consonants.length)]
     return letter
  end

  def generate_number()
    number = rand(10)
    return number
  end

  def generate()
    password=""
    remain = ((@length_pass-@num)%5)
    if (remain!=0)
      remain = 5 - remain
    end
    len = ((@length_pass-@num)+remain)/5
    for i in 1..len
      password+=generate_consonants().capitalize+generate_vowels() + generate_consonants()+generate_vowels() + generate_consonants()
    end
    password=password[0...-remain]
    for i in 1..@num
      password+=generate_number().to_s
    end
    return password
  end
 
end
