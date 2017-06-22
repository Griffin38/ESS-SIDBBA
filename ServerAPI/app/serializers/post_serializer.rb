class PostSerializer < ActiveModel::Serializer
  attributes :id, :Sensor, :Value, :Latitude, :Longitude, :Date, :Time
  has_one :user
end
