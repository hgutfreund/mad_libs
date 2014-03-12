FirstApp::Application.routes.draw do
  get("/formal", { :controller => "greetings", :action => "hello" })
  get("/casual", { :controller => "greetings", :action => "que_pasa" })
  get("/chicken", { :controller => "foods", :action => "rotisserie" }) 
  get("/students", { :controller => "students", :action => "index" }) 
  get("/knock_knock", { :controller => "greetings", :action => "knock_knock" }) 
end
