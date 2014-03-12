require "open-uri" 
require "json" 

class AllpresidentsController < ApplicationController 
  def list 
    request = open("https://raw.github.com/hs-webdev/rcav-api-lab/master/presidents.json").read
    @presidents = JSON.parse (request)
  end
end

