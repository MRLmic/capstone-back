class ArgumentSerializer < ActiveModel::Serializer
  attributes :id, :content, :position, :user_id
end
