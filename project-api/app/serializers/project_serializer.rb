class ProjectSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :genre, :location, :studio
  end 