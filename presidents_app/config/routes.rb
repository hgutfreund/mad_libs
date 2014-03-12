PresidentsApp::Application.routes.draw do
  get("/presidents", { :controller => "allpresidents", :action => "list" }) 
end
