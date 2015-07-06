class ZrTopMenuItem < ActiveRecord::Base
  acts_as_tree order: 'sort_number'

  belongs_to :parent, class_name: 'ZrTopMenuItem', foreign_key: 'parent_id'
  has_many :children, class_name: 'ZrTopMenuItem', foreign_key: 'parent_id'

  scope :top_level, -> { where(parent_id: nil) }

end