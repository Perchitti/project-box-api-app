class ProjectSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :genre, :location, :studio, :like, :liked, :like_count
  end 