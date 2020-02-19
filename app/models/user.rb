class User < ApplicationRecord
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
