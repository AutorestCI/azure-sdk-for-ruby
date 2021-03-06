# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Request body for verify operation.
    #
    class VerifyRequest

      include MsRestAzure

      # @return faceId of the first face, comes from Face - Detect
      attr_accessor :face_id1

      # @return faceId of the second face, comes from Face - Detect
      attr_accessor :face_id2


      #
      # Mapper for VerifyRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VerifyRequest',
          type: {
            name: 'Composite',
            class_name: 'VerifyRequest',
            model_properties: {
              face_id1: {
                client_side_validation: true,
                required: true,
                serialized_name: 'faceId1',
                type: {
                  name: 'String'
                }
              },
              face_id2: {
                client_side_validation: true,
                required: true,
                serialized_name: 'faceId2',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
