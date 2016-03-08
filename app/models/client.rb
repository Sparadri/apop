class Client < ActiveRecord::Base
  validates :email, presence: true
end
