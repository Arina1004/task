module PasswordGenerator

VOWELS = ["a","e","i","y","o","u"]
CONSONANTS = ["b","c","d","f","g","h","j","k","l","m","n",
  "p","q","r","s","t","v","x","w","z"]

def initialize(length, num = 0)
  # Password length
  @length_pass = length
  # Number of digits in the password
  @num = num
end  

def password
  generate
end

private
 
def generate_vowels
 VOWELS[rand(VOWELS.size)]
end

def generate_consonants
 CONSONANTS[rand(CONSONANTS.size)]
end

def generate_number
  rand(10)
end

def generate
  password = ""
  remain = ((@length_pass-@num)%5)
  remain = remain == 0 ?
  remain : 5 - remain
  len = ((@length_pass - @num) + remain)/5
    for i in 1..len
    password += generate_consonants.capitalize + generate_vowels + 
    generate_consonants + generate_vowels + generate_consonants
  end
  password = password[0...-remain]
  for i in 1..@num
    password += generate_number.to_s
  end
  return password
end
end
