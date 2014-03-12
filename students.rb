require 'open-uri'
require 'json'

class Student
  def initialize(firstname, lastname, hometown)
    @firstname = firstname
    @lastname = lastname
    @hometown = hometown
  end
  
def introduce
   puts @firstname + " " + @lastname + " " + "is from" + " " + @hometown
   puts "***************************"
  end
end

# s = Student.new("Bob", "Odenkirk", "Berwyn")
# s.introduce 

url = "https://raw.github.com/hs-webdev/yearbook/master/students.json" 

response = open(url).read

student_hashes = JSON.parse(response)

student_hashes.each do |student_hash|
  s = Student.new(student_hash["first"], student_hash["last"], student_hash["hometown"])
  s.introduce
end