class ZrTopMenuSerializer < ApplicationSerializer
  attributes :id

  has_many :items, serializer: ZrTopMenuItemSerializer, embed: :objects

end