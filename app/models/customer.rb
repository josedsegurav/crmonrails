class Customer < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        %w[id name email phone notes created_at updated_at]
    end
end
