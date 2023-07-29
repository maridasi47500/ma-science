class Game < ApplicationRecord
  belongs_to :myscience
  has_many :circleobjects
  accepts_nested_attributes_for :circleobjects
  has_and_belongs_to_many :materials_images, :join_table => :gamehasmaterials
  #has_and_belongs_to_many :mystuffhaspics, :join_table => :mybatteries
  has_and_belongs_to_many :mystuffhaspics, :join_table => :gamehasstuffhaspics
  has_and_belongs_to_many :stuffs, :join_table => :gamehastuffs
  has_many :crossorticks
  accepts_nested_attributes_for :crossorticks
  has_many :images, :through => :crossorticks
  has_many :pics, through: :circleobjects, source: :image
  has_many :gamehaswords
  accepts_nested_attributes_for :gamehaswords, allow_destroy: true
      validate :validate_tags

  def validate_tags
    errors.add(:circleobjects, "not right nb must be equal 7") if pics.length > 0 and pics.length != 7
    errors.add(:materials, "add more objects") if materials_images.length > 0 and materials_images.length < 2
    errors.add(:word, "la description ne contient pas le mot") if gamehaswords.length > 0 and gamehaswords.any?{|h|!self.content.include?(h.text)}
    p "MY ERRORS/"
    p errors
  end
end
