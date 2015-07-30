# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Network
  module Models
    #
    # SKU of application gateway
    #
    class ApplicationGatewaySku
      # @return Gets or sets name of application gateway SKU. Possible values
      # for this property include: 'Standard_Small', 'Standard_Medium',
      # 'Standard_Large'
      attr_accessor :name

      # @return Gets or sets tier of application gateway. Possible values for
      # this property include: 'Standard'
      attr_accessor :tier

      # @return [Integer] Gets or sets capacity (instance count) of
      # application gateway
      attr_accessor :capacity

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tier
        output_object['tier'] = serialized_property unless serialized_property.nil?

        serialized_property = object.capacity
        output_object['capacity'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ApplicationGatewaySku] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ApplicationGatewaySku.new

        deserialized_property = object['name']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !Azure::ARM::Network::Models::ApplicationGatewaySkuName.constants.any? { |e| Azure::ARM::Network::Models::ApplicationGatewaySkuName.const_get(e) == deserialized_property })
        output_object.name = deserialized_property

        deserialized_property = object['tier']
        fail MsRest::DeserializationError.new('Error occured in deserializing the enum', nil, nil, nil) if (!deserialized_property.nil? && !deserialized_property.empty? && !Azure::ARM::Network::Models::ApplicationGatewayTier.constants.any? { |e| Azure::ARM::Network::Models::ApplicationGatewayTier.const_get(e) == deserialized_property })
        output_object.tier = deserialized_property

        deserialized_property = object['capacity']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.capacity = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
