# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::AnalysisServices
  module Models
    #
    # Status of gateway is live.
    #
    class GatewayListStatusLive

      include MsRestAzure

      include MsRest::JSONable
      # @return [Status] Live message of list gateway. Possible values include:
      # 'Live'
      attr_accessor :status


      #
      # Mapper for GatewayListStatusLive class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GatewayListStatusLive',
          type: {
            name: 'Composite',
            class_name: 'GatewayListStatusLive',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
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
