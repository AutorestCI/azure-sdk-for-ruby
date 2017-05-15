# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties for evaluating a policy set.
    #
    class EvaluatePoliciesProperties

      include MsRestAzure

      # @return [String] The fact name.
      attr_accessor :fact_name

      # @return [String] The fact data.
      attr_accessor :fact_data

      # @return [String] The value offset.
      attr_accessor :value_offset


      #
      # Mapper for EvaluatePoliciesProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EvaluatePoliciesProperties',
          type: {
            name: 'Composite',
            class_name: 'EvaluatePoliciesProperties',
            model_properties: {
              fact_name: {
                required: false,
                serialized_name: 'factName',
                type: {
                  name: 'String'
                }
              },
              fact_data: {
                required: false,
                serialized_name: 'factData',
                type: {
                  name: 'String'
                }
              },
              value_offset: {
                required: false,
                serialized_name: 'valueOffset',
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
