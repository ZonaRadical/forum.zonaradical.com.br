class ZrTopMenuItemSerializer < ApplicationSerializer
  attributes :id,
             :parent_id,
             :key,
             :text_en,
             :text_pt,
             :url

  has_many :children, serializer: ZrTopMenuItemSerializer, embed: :objects

end