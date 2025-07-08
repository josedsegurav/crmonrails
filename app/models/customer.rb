class Customer < ApplicationRecord
    validates :name, :phone, presence: true
    has_one_attached :image

    def self.ransackable_attributes(auth_object = nil)
        %w[id name email phone notes created_at updated_at]
    end

    def self.ransackable_associations(auth_object = nil)
        %w[image_attachment image_blob]
    end
end
