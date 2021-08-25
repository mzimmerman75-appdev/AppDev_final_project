class HomeController < ActionController::Base

    def show


        render({ :template => "home/show.html.erb" })
    end

    def index

        render({ :template => "home/index.html.erb" })
    end
end
