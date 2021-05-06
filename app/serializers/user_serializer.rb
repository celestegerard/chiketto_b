class UserSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes :id, :name, :avatar, :count, :parent_id

  def avatar
    if object.avatar.attached?
      {
        url: rails_blob_url(object.avatar)
      }
    end
  end

end
