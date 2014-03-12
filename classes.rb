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

s = Student.new("Bob", "Odenkirk", "Berwyn")
s.introduce 
