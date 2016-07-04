class Article < ActiveRecord::Base
  # getters and setters are automatically generated for each column in the table
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end
