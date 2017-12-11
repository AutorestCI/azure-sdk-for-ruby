# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # Describes conditions applicable to the Input, Output, or the job overall,
    # that warrant customer attention.
    #
    class Diagnostics

      include MsRestAzure

      # @return [Array<DiagnosticCondition>] A collection of zero or more
      # conditions applicable to the resource, or to the job overall, that
      # warrant customer attention.
      attr_accessor :conditions


      #
      # Mapper for Diagnostics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Diagnostics',
          type: {
            name: 'Composite',
            class_name: 'Diagnostics',
            model_properties: {
              conditions: {
                required: false,
                read_only: true,
                serialized_name: 'conditions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DiagnosticConditionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiagnosticCondition'
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
