# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Properties describing noise level of the image.
    #
    class NoiseProperties

      include MsRestAzure

      # @return [NoiseLevels] An enum value indicating level of noise. Possible
      # values include: 'Low', 'Medium', 'High'
      attr_accessor :noise_level

      # @return [Float] A number indicating level of noise level ranging from 0
      # to 1. [0, 0.25) is under exposure. [0.25, 0.75) is good exposure.
      # [0.75, 1] is over exposure. [0, 0.3) is low noise level. [0.3, 0.7) is
      # medium noise level. [0.7, 1] is high noise level.
      attr_accessor :value


      #
      # Mapper for NoiseProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NoiseProperties',
          type: {
            name: 'Composite',
            class_name: 'NoiseProperties',
            model_properties: {
              noise_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noiseLevel',
                type: {
                  name: 'Enum',
                  module: 'NoiseLevels'
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
