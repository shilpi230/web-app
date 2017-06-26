class ArticleCollection < ActiveRecord::Base
    
belongs_to :article
belongs_to :collection

end
