# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Parameters used to specify the type of function to retrieve the default
    # definition for.
    #
    class FunctionRetrieveDefaultDefinitionParameters

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["Microsoft.StreamAnalytics/JavascriptUdf"] = "JavaScriptFunctionRetrieveDefaultDefinitionParameters"
      @@discriminatorMap["Microsoft.MachineLearning/WebService"] = "AzureMachineLearningWebServiceFunctionRetrieveDefaultDefinitionParameters"

      def initialize
        @bindingType = "FunctionRetrieveDefaultDefinitionParameters"
      end

      attr_accessor :bindingType


      #
      # Mapper for FunctionRetrieveDefaultDefinitionParameters class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FunctionRetrieveDefaultDefinitionParameters',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'bindingType',
            uber_parent: 'FunctionRetrieveDefaultDefinitionParameters',
            class_name: 'FunctionRetrieveDefaultDefinitionParameters',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
