class VisitSerializer < ActiveModel::Serializer
  attributes(
    :id,
    :timestamp,
    :user,
    :merchant
  )

  def user
    { user_id: object.user.id }
  end

  def merchant
    MerchantSerializer.new(object.merchant, { root: false })
  end

  def timestamp
    object.created_at.to_i
  end
end
