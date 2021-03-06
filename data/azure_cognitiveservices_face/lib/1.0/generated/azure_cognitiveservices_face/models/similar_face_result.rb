# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Response body for find similar face operation.
    #
    class SimilarFaceResult

      include MsRestAzure

      # @return faceId of candidate face when find by faceIds. faceId is
      # created by Face - Detect and will expire 24 hours after the detection
      # call
      attr_accessor :face_id

      # @return persistedFaceId of candidate face when find by faceListId.
      # persistedFaceId in face list is persisted and will not expire. As
      # showed in below response
      attr_accessor :persisted_face_id

      # @return [Float]
      attr_accessor :confidence


      #
      # Mapper for SimilarFaceResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SimilarFaceResult',
          type: {
            name: 'Composite',
            class_name: 'SimilarFaceResult',
            model_properties: {
              face_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'faceId',
                type: {
                  name: 'String'
                }
              },
              persisted_face_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'persistedFaceId',
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
