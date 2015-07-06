class ZrTopMenu

  attr_accessor :items

  def self.fetch
    @top_menu ||= self.build
  end

  def self.build
    #items = ZrTopMenuItem.
    self.new(items)
  end

  def initialize(items)
    @items = items
  end

  #has_many :items, class_name: 'ZrTopMenuItem'

end