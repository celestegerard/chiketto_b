class ParentSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers
  attributes :id, :name, :googleid, :avatar

  def avatar
    if object.avatar.attached?
      {
        url: rails_blob_url(object.avatar)
      }
    end
  end

end
