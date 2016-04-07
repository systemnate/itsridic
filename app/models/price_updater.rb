require "peddler"

class PriceUpdater
  Dotenv.load
  def self.update
    item = MWS::Products::Client.new(
      primary_marketplace_id: ENV["PRIMARY_MARKETPLACE_ID"],
      merchant_id: ENV["MERCHANT_ID"],
      aws_access_key_id: ENV["AWS_ACCESS_KEY_ID2"],
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY2"]
    )
    Product.all.each do |product|
      unless product.sku.blank?
        sku = product.sku
        product.price = item.get_my_price_for_sku(sku).xml['GetMyPriceForSKUResponse']['GetMyPriceForSKUResult']['Product']['Offers']['Offer']['BuyingPrice']['LandedPrice']['Amount'].to_f
        product.save
      end
    end
  end
end
