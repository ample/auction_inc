module AuctionInc
  module Shipping
    class Body < Node
      xml_accessor :get_item_ship_rate_x_s, :as => GetItemShipRateXs
      xml_accessor :get_item_ship_rate_s_s, :as => GetItemShipRateSs
      xml_accessor :item_ship_rate, :as => ItemShipRate
      xml_accessor :errors, :as => [Error], :in => "ErrorList"
    end
  end
end
