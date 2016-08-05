class Player < ApplicationRecord

  # Relations

  # Scopes

  # Validations

  validates :name, :nationality, :position, :birthdate, presence: true

  # Methods

end
