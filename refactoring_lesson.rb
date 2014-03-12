# all attributes except for age are out of 5
class Llama 
  def initialize(name, age, mood)
    @name = name 
    @age = age
    @mood = mood
  end
  
  def llama_status
    puts
    puts "name: " + @name
    puts "age: " + @age.to_s
    puts "mood:" + @mood
    puts "===================="
    puts  
  end
end
  
def format_mood(llama_hash)
  if llama_hash["mood"] >= 4
    return "happy"
  elsif llama_hash["mood"] >= 2
    return "decent"
  else
    return "depressed"
  end
end

def change_mood(number)
  mood = llama_hash["mood"]
  mood = mood + number
  if mood > 5
    mood = 5
  elsif mood < 0 
    mood = 0
  end
  llama_hash["mood"] = mood 
end

format_mood(number)
change_mood(number)

  def name
    return @name
  end

  def age
    return @age
  end

  def mood
    return format_mood
  end 
    
my_llama = { "name" => "Bob", "age" => 5, "mood" => 4}
def llama_status(llama_hash)
  puts
  puts "name: " + llama_hash["name"]
  puts "age: " + llama_hash["age"].to_s
  puts "mood: " + format_mood(llama_hash)
  puts "===================="
  puts  
end
  
llama1 = Llama.new("Bob", 5, 4)
puts "The llama's name is #{llama1.name}"
puts "The llama's age is #{llama1.age}"
