# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2016_11_01
  module Models
    #
    # Basic Data Lake Store account information, returned on list calls.
    #
    class DataLakeStoreAccountBasic < Resource

      include MsRestAzure

      # @return [DataLakeStoreAccountStatus] the provisioning status of the
      # Data Lake Store account. Possible values include: 'Failed', 'Creating',
      # 'Running', 'Succeeded', 'Patching', 'Suspending', 'Resuming',
      # 'Deleting', 'Deleted', 'Undeleting', 'Canceled'
      attr_accessor :provisioning_state

      # @return [DataLakeStoreAccountState] the state of the Data Lake Store
      # account. Possible values include: 'Active', 'Suspended'
      attr_accessor :state

      # @return [DateTime] the account creation time.
      attr_accessor :creation_time

      # @return [DateTime] the account last modified time.
      attr_accessor :last_modified_time

      # @return [String] the full CName endpoint for this account.
      attr_accessor :endpoint

      # @return The unique identifier associated with this Data Lake Store
      # account.
      attr_accessor :account_id


      #
      # Mapper for DataLakeStoreAccountBasic class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataLakeStoreAccountBasic',
          type: {
            name: 'Composite',
            class_name: 'DataLakeStoreAccountBasic',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'DataLakeStoreAccountStatus'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'DataLakeStoreAccountState'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endpoint',
                type: {
                  name: 'String'
                }
              },
              account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accountId',
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
