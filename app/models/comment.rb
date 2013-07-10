class Comment < ActiveRecord::Base
  attr_accessible :text, :link_id
end
