Rails.application.routes.draw do


    get("/", { :controller => "home", :action => "show" })



end
