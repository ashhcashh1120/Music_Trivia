class GenreSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre
  has_many :songs
end
