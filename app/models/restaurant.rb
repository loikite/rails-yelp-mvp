class Restaurant < ApplicationRecord
# as many reviews
has_many :reviews, dependent: :destroy
validates :name, :address, :category, presence: true
validates :category, acceptance: { accept: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
