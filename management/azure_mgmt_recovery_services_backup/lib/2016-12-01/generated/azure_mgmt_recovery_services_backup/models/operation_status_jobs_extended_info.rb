# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Operation status extended info for list of jobs.
    #
    class OperationStatusJobsExtendedInfo < OperationStatusExtendedInfo

      include MsRestAzure


      def initialize
        @objectType = "OperationStatusJobsExtendedInfo"
      end

      attr_accessor :objectType

      # @return [Array<String>] IDs of the jobs created for the protected item.
      attr_accessor :job_ids

      # @return [Hash{String => String}] Stores all the failed jobs along with
      # the corresponding error codes.
      attr_accessor :failed_jobs_error


      #
      # Mapper for OperationStatusJobsExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationStatusJobsExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'OperationStatusJobsExtendedInfo',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              job_ids: {
                required: false,
                serialized_name: 'jobIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              failed_jobs_error: {
                required: false,
                serialized_name: 'failedJobsError',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
