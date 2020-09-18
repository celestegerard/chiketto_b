class UserSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes :name, :avatar, :count

  def avatar
    if object.avatar.attached?
      {
        url: rails_blob_url(object.avatar)
      }
    end
  end

end
