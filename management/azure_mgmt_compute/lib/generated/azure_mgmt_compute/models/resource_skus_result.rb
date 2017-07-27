# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The Compute List Skus operation response.
    #
    class ResourceSkusResult
      # @return [Array<ResourceSku>] The list of skus available for the
      # subscription.
      attr_accessor :value

      # @return [String] The uri to fetch the next page of Compute Skus. Call
      # ListNext() with this to fetch the next page of VMSS Skus.
      attr_accessor :next_link


      #
      # Mapper for ResourceSkusResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceSkusResult',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkusResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceSkuElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceSku'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
