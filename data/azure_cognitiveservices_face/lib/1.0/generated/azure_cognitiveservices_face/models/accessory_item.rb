# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Accessory item and corresponding confidence level.
    #
    class AccessoryItem

      include MsRestAzure

      # @return [String] Description of an accessory
      attr_accessor :type

      # @return [Float]
      attr_accessor :confidence


      #
      # Mapper for AccessoryItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccessoryItem',
          type: {
            name: 'Composite',
            class_name: 'AccessoryItem',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              confidence: {
                client_side_validation: true,
                required: false,
                serialized_name: 'confidence',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
