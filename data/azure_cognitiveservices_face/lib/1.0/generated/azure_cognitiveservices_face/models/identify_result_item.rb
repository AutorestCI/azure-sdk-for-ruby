# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Response body for identify face operation.
    #
    class IdentifyResultItem

      include MsRestAzure

      # @return faceId of the query face
      attr_accessor :face_id

      # @return [Array<IdentifyResultCandidate>]
      attr_accessor :candidates


      #
      # Mapper for IdentifyResultItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IdentifyResultItem',
          type: {
            name: 'Composite',
            class_name: 'IdentifyResultItem',
            model_properties: {
              face_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'faceId',
                type: {
                  name: 'String'
                }
              },
              candidates: {
                client_side_validation: true,
                required: true,
                serialized_name: 'candidates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IdentifyResultCandidateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IdentifyResultCandidate'
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
