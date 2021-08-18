class HomeController < ActionController::Base

    def show


        render({ :template => "home/show.html.erb" })
    end
end
