# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  module Models
    #
    # A Data Lake Analytics account object, containing all information
    # associated with the named Data Lake Analytics account.
    #
    class DataLakeAnalyticsAccount < Resource

      include MsRestAzure

      # @return [DataLakeAnalyticsAccountStatus] The provisioning status of the
      # Data Lake Analytics account. Possible values include: 'Failed',
      # 'Creating', 'Running', 'Succeeded', 'Patching', 'Suspending',
      # 'Resuming', 'Deleting', 'Deleted', 'Undeleting', 'Canceled'
      attr_accessor :provisioning_state

      # @return [DataLakeAnalyticsAccountState] The state of the Data Lake
      # Analytics account. Possible values include: 'Active', 'Suspended'
      attr_accessor :state

      # @return [DateTime] The account creation time.
      attr_accessor :creation_time

      # @return [DateTime] The account last modified time.
      attr_accessor :last_modified_time

      # @return [String] The full CName endpoint for this account.
      attr_accessor :endpoint

      # @return The unique identifier associated with this Data Lake Analytics
      # account.
      attr_accessor :account_id

      # @return [String] The default data lake storage account associated with
      # this Data Lake Analytics account.
      attr_accessor :default_data_lake_store_account

      # @return [Integer] The maximum supported degree of parallelism for this
      # account. Default value: 30 .
      attr_accessor :max_degree_of_parallelism

      # @return [Integer] The number of days that job metadata is retained.
      # Default value: 30 .
      attr_accessor :query_store_retention

      # @return [Integer] The maximum supported jobs running under the account
      # at the same time. Default value: 3 .
      attr_accessor :max_job_count

      # @return [Integer] The system defined maximum supported degree of
      # parallelism for this account, which restricts the maximum value of
      # parallelism the user can set for the account.
      attr_accessor :system_max_degree_of_parallelism

      # @return [Integer] The system defined maximum supported jobs running
      # under the account at the same time, which restricts the maximum number
      # of running jobs the user can set for the account.
      attr_accessor :system_max_job_count

      # @return [Array<AddDataLakeStoreWithAccountParameters>] The list of Data
      # Lake Store accounts associated with this account.
      attr_accessor :data_lake_store_accounts

      # @return [Array<AddStorageAccountWithAccountParameters>] The list of
      # Azure Blob storage accounts associated with this account.
      attr_accessor :storage_accounts

      # @return [TierType] The commitment tier for the next month. Possible
      # values include: 'Consumption', 'Commitment_100AUHours',
      # 'Commitment_500AUHours', 'Commitment_1000AUHours',
      # 'Commitment_5000AUHours', 'Commitment_10000AUHours',
      # 'Commitment_50000AUHours', 'Commitment_100000AUHours',
      # 'Commitment_500000AUHours'
      attr_accessor :new_tier

      # @return [TierType] The commitment tier in use for the current month.
      # Possible values include: 'Consumption', 'Commitment_100AUHours',
      # 'Commitment_500AUHours', 'Commitment_1000AUHours',
      # 'Commitment_5000AUHours', 'Commitment_10000AUHours',
      # 'Commitment_50000AUHours', 'Commitment_100000AUHours',
      # 'Commitment_500000AUHours'
      attr_accessor :current_tier

      # @return [FirewallState] The current state of the IP address firewall
      # for this Data Lake Analytics account. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :firewall_state

      # @return [FirewallAllowAzureIpsState] The current state of allowing or
      # disallowing IPs originating within Azure through the firewall. If the
      # firewall is disabled, this is not enforced. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :firewall_allow_azure_ips

      # @return [Array<CreateFirewallRuleWithAccountParameters>] The list of
      # firewall rules associated with this Data Lake Analytics account.
      attr_accessor :firewall_rules

      # @return [Integer] The maximum supported degree of parallelism per job
      # for this account.
      attr_accessor :max_degree_of_parallelism_per_job

      # @return [Integer] The minimum supported priority per job for this
      # account.
      attr_accessor :min_priority_per_job

      # @return [Array<CreateComputePolicyWithAccountParameters>] The list of
      # compute policies associated with this account.
      attr_accessor :compute_policies


      #
      # Mapper for DataLakeAnalyticsAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataLakeAnalyticsAccount',
          type: {
            name: 'Composite',
            class_name: 'DataLakeAnalyticsAccount',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
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
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'DataLakeAnalyticsAccountStatus'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'DataLakeAnalyticsAccountState'
                }
              },
              creation_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endpoint',
                type: {
                  name: 'String'
                }
              },
              account_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.accountId',
                type: {
                  name: 'String'
                }
              },
              default_data_lake_store_account: {
                required: true,
                serialized_name: 'properties.defaultDataLakeStoreAccount',
                type: {
                  name: 'String'
                }
              },
              max_degree_of_parallelism: {
                required: false,
                serialized_name: 'properties.maxDegreeOfParallelism',
                default_value: 30,
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              query_store_retention: {
                required: false,
                serialized_name: 'properties.queryStoreRetention',
                default_value: 30,
                constraints: {
                  InclusiveMaximum: 180,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              max_job_count: {
                required: false,
                serialized_name: 'properties.maxJobCount',
                default_value: 3,
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              system_max_degree_of_parallelism: {
                required: false,
                read_only: true,
                serialized_name: 'properties.systemMaxDegreeOfParallelism',
                type: {
                  name: 'Number'
                }
              },
              system_max_job_count: {
                required: false,
                read_only: true,
                serialized_name: 'properties.systemMaxJobCount',
                type: {
                  name: 'Number'
                }
              },
              data_lake_store_accounts: {
                required: true,
                serialized_name: 'properties.dataLakeStoreAccounts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AddDataLakeStoreWithAccountParametersElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AddDataLakeStoreWithAccountParameters'
                      }
                  }
                }
              },
              storage_accounts: {
                required: false,
                serialized_name: 'properties.storageAccounts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AddStorageAccountWithAccountParametersElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AddStorageAccountWithAccountParameters'
                      }
                  }
                }
              },
              new_tier: {
                required: false,
                serialized_name: 'properties.newTier',
                type: {
                  name: 'Enum',
                  module: 'TierType'
                }
              },
              current_tier: {
                required: false,
                read_only: true,
                serialized_name: 'properties.currentTier',
                type: {
                  name: 'Enum',
                  module: 'TierType'
                }
              },
              firewall_state: {
                required: false,
                serialized_name: 'properties.firewallState',
                type: {
                  name: 'Enum',
                  module: 'FirewallState'
                }
              },
              firewall_allow_azure_ips: {
                required: false,
                serialized_name: 'properties.firewallAllowAzureIps',
                type: {
                  name: 'Enum',
                  module: 'FirewallAllowAzureIpsState'
                }
              },
              firewall_rules: {
                required: false,
                serialized_name: 'properties.firewallRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CreateFirewallRuleWithAccountParametersElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CreateFirewallRuleWithAccountParameters'
                      }
                  }
                }
              },
              max_degree_of_parallelism_per_job: {
                required: false,
                serialized_name: 'properties.maxDegreeOfParallelismPerJob',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              min_priority_per_job: {
                required: false,
                serialized_name: 'properties.minPriorityPerJob',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              compute_policies: {
                required: false,
                serialized_name: 'properties.computePolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'CreateComputePolicyWithAccountParametersElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CreateComputePolicyWithAccountParameters'
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
