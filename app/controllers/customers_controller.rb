class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end

    def alphabetized
        @customers = Customer.order(:name)
    end
end
