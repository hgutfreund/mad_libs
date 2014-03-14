class MadLibsController < ApplicationController 
  def hello 
    @name = params['name']
    @adjective = params['adjective']
    @pluralnoun = params['pluralnoun']
    @verb = params['verb']
    @singularnoun = params['singularnoun']
    @femalename = params['femalename']
    @adjective2 = params['adjective2']
  end
  def
    form
  end
end