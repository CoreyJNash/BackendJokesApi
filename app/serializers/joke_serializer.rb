class JokeSerializer < ActiveModel::Serializer
  attributes :id, :title, :joke, :writer
  has_one :user
end
