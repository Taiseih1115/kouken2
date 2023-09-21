class Tag < ApplicationRecord
    validates :name, presence: true
    has_many :koukens_tag_relations, dependent: :destroy
    has_many :koukens, through: :koukens_tag_relations, dependent: :destroy
end
