class AssociateSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_of_birth, :gender, :position, :hours_per_week
end
