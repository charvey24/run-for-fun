class HomeController < ApplicationController
    def home
        render html: "hello, world!"
    end
end
