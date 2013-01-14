module AuctionInc
  module Shipping
    class GetItemShipRateSs < Node
      xml_accessor :version, :from => "@version"
      xml_accessor :detail_level
      xml_accessor :currency
      xml_accessor :destination_address, :as => DestinationAddress
      xml_accessor :items, :as => [Item], :in => "ItemList"
    end
  end
end
