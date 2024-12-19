# shell_smart_pay_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellSmartPayApi
  # FinaliseFuelingRequest Model.
  class FinaliseFuelingRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :site_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :timestamp

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :volume_quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :volume_unit

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :final_price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :site_address

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :original_price

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :discount

    # TODO: Write general description for this method
    # @return [Payment]
    attr_accessor :payment

    # TODO: Write general description for this method
    # @return [Array[Product]]
    attr_accessor :products

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mpp_transaction_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['site_name'] = 'siteName'
      @_hash['timestamp'] = 'timestamp'
      @_hash['volume_quantity'] = 'volumeQuantity'
      @_hash['volume_unit'] = 'volumeUnit'
      @_hash['final_price'] = 'finalPrice'
      @_hash['currency'] = 'currency'
      @_hash['status'] = 'status'
      @_hash['site_address'] = 'siteAddress'
      @_hash['original_price'] = 'originalPrice'
      @_hash['discount'] = 'discount'
      @_hash['payment'] = 'payment'
      @_hash['products'] = 'products'
      @_hash['mpp_transaction_id'] = 'mppTransactionId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        site_name
        timestamp
        volume_quantity
        volume_unit
        final_price
        currency
        status
        site_address
        original_price
        discount
        payment
        products
        mpp_transaction_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(site_name = SKIP, timestamp = SKIP, volume_quantity = SKIP,
                   volume_unit = SKIP, final_price = SKIP, currency = SKIP,
                   status = SKIP, site_address = SKIP, original_price = SKIP,
                   discount = SKIP, payment = SKIP, products = SKIP,
                   mpp_transaction_id = SKIP)
      @site_name = site_name unless site_name == SKIP
      @timestamp = timestamp unless timestamp == SKIP
      @volume_quantity = volume_quantity unless volume_quantity == SKIP
      @volume_unit = volume_unit unless volume_unit == SKIP
      @final_price = final_price unless final_price == SKIP
      @currency = currency unless currency == SKIP
      @status = status unless status == SKIP
      @site_address = site_address unless site_address == SKIP
      @original_price = original_price unless original_price == SKIP
      @discount = discount unless discount == SKIP
      @payment = payment unless payment == SKIP
      @products = products unless products == SKIP
      @mpp_transaction_id = mpp_transaction_id unless mpp_transaction_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      site_name = hash.key?('siteName') ? hash['siteName'] : SKIP
      timestamp = hash.key?('timestamp') ? hash['timestamp'] : SKIP
      volume_quantity =
        hash.key?('volumeQuantity') ? hash['volumeQuantity'] : SKIP
      volume_unit = hash.key?('volumeUnit') ? hash['volumeUnit'] : SKIP
      final_price = hash.key?('finalPrice') ? hash['finalPrice'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      site_address = hash.key?('siteAddress') ? hash['siteAddress'] : SKIP
      original_price = hash.key?('originalPrice') ? hash['originalPrice'] : SKIP
      discount = hash.key?('discount') ? hash['discount'] : SKIP
      payment = Payment.from_hash(hash['payment']) if hash['payment']
      # Parameter is an array, so we need to iterate through it
      products = nil
      unless hash['products'].nil?
        products = []
        hash['products'].each do |structure|
          products << (Product.from_hash(structure) if structure)
        end
      end

      products = SKIP unless hash.key?('products')
      mpp_transaction_id =
        hash.key?('mppTransactionId') ? hash['mppTransactionId'] : SKIP

      # Create object from extracted values.
      FinaliseFuelingRequest.new(site_name,
                                 timestamp,
                                 volume_quantity,
                                 volume_unit,
                                 final_price,
                                 currency,
                                 status,
                                 site_address,
                                 original_price,
                                 discount,
                                 payment,
                                 products,
                                 mpp_transaction_id)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} site_name: #{@site_name}, timestamp: #{@timestamp}, volume_quantity:"\
      " #{@volume_quantity}, volume_unit: #{@volume_unit}, final_price: #{@final_price}, currency:"\
      " #{@currency}, status: #{@status}, site_address: #{@site_address}, original_price:"\
      " #{@original_price}, discount: #{@discount}, payment: #{@payment}, products: #{@products},"\
      " mpp_transaction_id: #{@mpp_transaction_id}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} site_name: #{@site_name.inspect}, timestamp: #{@timestamp.inspect},"\
      " volume_quantity: #{@volume_quantity.inspect}, volume_unit: #{@volume_unit.inspect},"\
      " final_price: #{@final_price.inspect}, currency: #{@currency.inspect}, status:"\
      " #{@status.inspect}, site_address: #{@site_address.inspect}, original_price:"\
      " #{@original_price.inspect}, discount: #{@discount.inspect}, payment: #{@payment.inspect},"\
      " products: #{@products.inspect}, mpp_transaction_id: #{@mpp_transaction_id.inspect}>"
    end
  end
end