class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5 }
  enum color: [:red, :green, :blue]
end
