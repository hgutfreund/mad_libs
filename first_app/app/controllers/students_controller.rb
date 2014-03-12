require "open-uri" 
require "json" 

class StudentsController < ApplicationController 
  def index 
    request = open("https://raw.github.com/hs-webdev/yearbook/master/students.json").read
    @students = JSON.parse (request)
  end
end