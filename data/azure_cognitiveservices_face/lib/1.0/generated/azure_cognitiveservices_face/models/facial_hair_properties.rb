# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Properties describing facial hair attributes.
    #
    class FacialHairProperties

      include MsRestAzure

      # @return [Float]
      attr_accessor :moustache

      # @return [Float]
      attr_accessor :beard

      # @return [Float]
      attr_accessor :sideburns


      #
      # Mapper for FacialHairProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FacialHairProperties',
          type: {
            name: 'Composite',
            class_name: 'FacialHairProperties',
            model_properties: {
              moustache: {
                client_side_validation: true,
                required: false,
                serialized_name: 'moustache',
                constraints: {
                  InclusiveMaximum: 1,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Double'
                }
              },
              beard: {
                client_side_validation: true,
                required: false,
                serialized_name: 'beard',
                constraints: {
                  InclusiveMaximum: 1,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Double'
                }
              },
              sideburns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sideburns',
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