class User < ApplicationRecord
  has_many :pictures
  has_secure_password

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
