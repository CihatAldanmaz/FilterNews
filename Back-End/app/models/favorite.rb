class Favorite < ApplicationRecord
    extend FriendlyId
  friendly_id :news_url, use: :slugged

  # def serializable_hash(opts)
  #   super(opts.merge(only: [:id, :title]))
  # end

end

#burada kaldim, news_urlye gore yap