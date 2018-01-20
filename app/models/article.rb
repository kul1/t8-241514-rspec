# encoding: utf-8
class Article
  include Mongoid::Document
  # jinda begin
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  field :title, :type => String
  field :text, :type => String
  belongs_to :user
  has_many :comments
  validates :title, :text, :user_id, presence: true
  field :body, :type => String
  field :keywords, :type => String
  # jinda end
end
