# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Properties describing hair attributes.
    #
    class HairProperties

      include MsRestAzure

      # @return [Float] A number describing confidence level of whether the
      # person is bald.
      attr_accessor :bald

      # @return [Boolean] A boolean value describing whether the hair is
      # visible in the image.
      attr_accessor :invisible

      # @return [Array<ColorProperty>]
      attr_accessor :hair_color


      #
      # Mapper for HairProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HairProperties',
          type: {
            name: 'Composite',
            class_name: 'HairProperties',
            model_properties: {
              bald: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bald',
                constraints: {
                  InclusiveMaximum: 1,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Double'
                }
              },
              invisible: {
                client_side_validation: true,
                required: false,
                serialized_name: 'invisible',
                type: {
                  name: 'Boolean'
                }
              },
              hair_color: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hairColor',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ColorPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ColorProperty'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
