class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end

    def _customer
        @customer = Customer.find(params[:id])
    end
end
