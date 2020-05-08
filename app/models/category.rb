class Category < ApplicationRecord
  enum status: [:ativo, :inativo]
end
