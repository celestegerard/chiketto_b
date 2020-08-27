class PrizeSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes :id, :title, :text, :prizeimage
  # def prizeimage
  #   if object.prizeimage.attached?
  #     {
  #       url: rails_blob_url(object.prizeimage)
  #     }
  #   end
  # end
  
end
