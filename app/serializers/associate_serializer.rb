class AssociateSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :hours_per_week, :schedules
end
