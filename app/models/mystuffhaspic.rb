class Mystuffhaspic < ApplicationRecord
  belongs_to :stuff
  belongs_to :image
  def self.batery
    all.joins(:stuff).select("*, mystuffhaspics.id as myid, stuffs.type as type").where("type = ?", "Battery")
  end
  def self.momentday
    all.joins(:stuff).select("mystuffhaspics.*, mystuffhaspics.id as myid, stuffs.type as type").where("type = ?", "Momentday")
  end
end
