# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Response for GetConnectionSharedKey Api servive call
    #
    class ConnectionSharedKey

      include MsRestAzure

      # @return [String] The virtual network connection shared key value
      attr_accessor :value

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.value
        output_object['value'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ConnectionSharedKey] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ConnectionSharedKey.new

        deserialized_property = object['value']
        output_object.value = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
