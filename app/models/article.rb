class Article < ActiveRecord::Base
   validates :title, :text, presence:true,
   length: {minimum: 5}
 
   has_many :comments, dependent: :destroy

end
