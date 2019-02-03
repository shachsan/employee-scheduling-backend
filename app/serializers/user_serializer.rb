class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :dept_manager_id, :associate_id
end
