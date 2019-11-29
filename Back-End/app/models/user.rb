    class User < ApplicationRecord
        has_secure_password
        has_many :favorites
    
        validates :username, uniqueness: true
    
    #   extend FriendlyId
    #   friendly_id :username, use: :slugged
   

    def serializable_hash(opts)
        super(opts.merge(only: [:id, :username], include: :favorites))
      end
    
end
