class UserSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes :name, :avatar, :count
  # def prizeimage
  #   if object.prizeimage.attached?
  #     {
  #       url: rails_blob_url(object.prizeimage)
  #     }
  #   end
  # end

end
