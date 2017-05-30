class Order < ApplicationRecord

  before_create :generate_token

  def generate_token
    self.token = Securerandom.uuid
  end

  belongs_to :user
  has_many :product_lists

  validates :billing_name, presence: true
   validates :billing_address, presence: true
   validates :shipping_name, presence: true
   validates :shipping_address, presence: true
end
