class Gossip < ApplicationRecord
  belongs_to :user
  has_many :affiliations, dependent: :delete_all
  has_many :tags, through: :affiliations
end
