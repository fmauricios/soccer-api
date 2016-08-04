class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :nationality, :position, :birthdate
end
