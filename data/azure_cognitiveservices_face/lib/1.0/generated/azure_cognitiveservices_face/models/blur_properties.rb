# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Properties describing any presence of blur within the image.
    #
    class BlurProperties

      include MsRestAzure

      # @return [BlurLevels] An enum value indicating level of blurriness.
      # Possible values include: 'Low', 'Medium', 'High'
      attr_accessor :blur_level

      # @return [Float] A number indicating level of blurriness ranging from 0
      # to 1.
      attr_accessor :value


      #
      # Mapper for BlurProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BlurProperties',
          type: {
            name: 'Composite',
            class_name: 'BlurProperties',
            model_properties: {
              blur_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blurLevel',
                type: {
                  name: 'Enum',
                  module: 'BlurLevels'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                constraints: {
                  InclusiveMaximum: 1,
                  InclusiveMinimum: 0
                },
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
