class Kouken < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :koukens_tag_relations, dependent: :destroy
    has_many :tags, through: :koukens_tag_relations, dependent: :destroy
end
