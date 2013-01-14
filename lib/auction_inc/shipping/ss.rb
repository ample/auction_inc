module AuctionInc
  module Shipping
    class Ss < Base
      attr_accessor :destination_address, :items

      def request_xml
        doc = Nokogiri::XML::Document.new
        doc.root = self.envelope.to_xml
        doc.to_s
      end

      def envelope
        Envelope.new(:header => self.header, :body => self.body)
      end

      def header
        Header.new(:account_id => self.class.license_key)
      end

      def body
        Body.new(:get_item_ship_rate_s_s => self.content)
      end

      def content
        content = GetItemShipRateSs.new
        content.version = self.class.api_version
        content.detail_level = self.class.detail_level
        content.currency = self.currency
        content.destination_address = destination_address unless destination_address.blank?
        content.items = items unless items.blank?
        content
      end
    end
  end
end