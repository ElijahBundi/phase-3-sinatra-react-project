class Blog < ActiveRecord::Base
    has_many :reviews
    belongs_to :author
end

