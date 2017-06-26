class Collection < ActiveRecord::Base
    
belongs_to :user
has_many :article_collections, dependent: :delete_all
has_many :articles, through: :article_collections
validates :name, presence: true, length: { minimum: 3, maximum: 25 }
validates_uniqueness_of :name

end
