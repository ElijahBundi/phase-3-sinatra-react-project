class Author < ActiveRecord::Base
    has_many :blogs
    has_many :reviews, through: :blogs
end