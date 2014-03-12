# all values should be between 0 and 5, except for age
my_llama = { "name" => "Bob", "age" => 5, "happiness" => 4 }

def llama_status(llama_hash)
  puts
  puts "name: " + llama_hash["name"]
  puts "age: " + llama_hash["age"].to_s
  if llama_hash["happiness"] >= 4
    puts "hapiness: deliriously happy"
  elsif llama_hash["happiness"] >= 2
    puts "happiness: content"
  else
    puts "happiness: depressed"
  end
  puts "===================="
  puts  
end

def change_happiness(llama_hash, value)
  happiness = llama_hash["happiness"]
  happiness = happiness + value
  if happiness > 5
    happiness = 5
  elsif happiness < 0
    happiness = 0
  end
  llama_hash["happiness"] = happiness 
end

response = ""
while response != "4"
  puts "What do you want to do?"
  puts "1) View your llama"
  puts "2) Feed your llama"
  puts "3) Insult your llama"
  puts "4) Quit"
  print "Choose a number: "
  response = gets.chomp

  if response == "1"
    llama_status(my_llama)
  elsif response == "2"
    change_happiness(my_llama, 1)
  elsif response == "3"
    change_happiness(my_llama, -3)
  end
  
end