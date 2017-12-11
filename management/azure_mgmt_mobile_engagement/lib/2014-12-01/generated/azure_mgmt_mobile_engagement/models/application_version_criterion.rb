# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Used to target devices based on the version of the application they are
    # using.
    #
    class ApplicationVersionCriterion < Criterion

      include MsRestAzure


      def initialize
        @type = "application-version"
      end

      attr_accessor :type

      # @return [String] The application version.
      attr_accessor :name


      #
      # Mapper for ApplicationVersionCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'application-version',
          type: {
            name: 'Composite',
            class_name: 'ApplicationVersionCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
