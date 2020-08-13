class ProductsController < ApplicationController

    def index
        # byebug
        session[:cart] = session[:cart] || []
        # @cart = session[:cart] = session[:cart] || []
    end 

    def add
        # byebug
        session[:cart] = session[:cart] || []
        session[:cart] << (params["product"])
        redirect_to root_path
    end

end
