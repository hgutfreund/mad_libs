MadLibs::Application.routes.draw do
  # get ("/", {controller => "greetings", :action => "hello"})
  get "/" => 'mad_libs#form'
  get "/results" => 'mad_libs#hello'
end
