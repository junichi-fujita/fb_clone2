class User < ApplicationRecord
  has_many :pictures
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, 'valid_email_2/email': true

  class << self
    def search(query)
      rel = order("id")
      if query.present?
        rel = rel.where("name LIKE ?", "%#{query}%")
      else
        rel = nil
      end
      rel
    end
  end
end
