class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :active, :duedate
end
