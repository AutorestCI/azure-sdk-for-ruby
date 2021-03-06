# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Profiles::V2017_03_09
  module Storage
    module Mgmt
      StorageAccounts = Azure::Storage::Mgmt::V2016_01_01::StorageAccounts
      UsageOperations = Azure::Storage::Mgmt::V2016_01_01::UsageOperations

      module Models
        StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountCheckNameAvailabilityParameters
        StorageAccountKey = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountKey
        Sku = Azure::Storage::Mgmt::V2016_01_01::Models::Sku
        StorageAccountListResult = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountListResult
        EncryptionService = Azure::Storage::Mgmt::V2016_01_01::Models::EncryptionService
        StorageAccountListKeysResult = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountListKeysResult
        Encryption = Azure::Storage::Mgmt::V2016_01_01::Models::Encryption
        StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountRegenerateKeyParameters
        Endpoints = Azure::Storage::Mgmt::V2016_01_01::Models::Endpoints
        StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountUpdateParameters
        CustomDomain = Azure::Storage::Mgmt::V2016_01_01::Models::CustomDomain
        UsageName = Azure::Storage::Mgmt::V2016_01_01::Models::UsageName
        StorageAccountCreateParameters = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountCreateParameters
        Usage = Azure::Storage::Mgmt::V2016_01_01::Models::Usage
        EncryptionServices = Azure::Storage::Mgmt::V2016_01_01::Models::EncryptionServices
        UsageListResult = Azure::Storage::Mgmt::V2016_01_01::Models::UsageListResult
        CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2016_01_01::Models::CheckNameAvailabilityResult
        Resource = Azure::Storage::Mgmt::V2016_01_01::Models::Resource
        StorageAccount = Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccount
        Reason = Azure::Storage::Mgmt::V2016_01_01::Models::Reason
        SkuName = Azure::Storage::Mgmt::V2016_01_01::Models::SkuName
        SkuTier = Azure::Storage::Mgmt::V2016_01_01::Models::SkuTier
        AccessTier = Azure::Storage::Mgmt::V2016_01_01::Models::AccessTier
        Kind = Azure::Storage::Mgmt::V2016_01_01::Models::Kind
        ProvisioningState = Azure::Storage::Mgmt::V2016_01_01::Models::ProvisioningState
        AccountStatus = Azure::Storage::Mgmt::V2016_01_01::Models::AccountStatus
        KeyPermission = Azure::Storage::Mgmt::V2016_01_01::Models::KeyPermission
        UsageUnit = Azure::Storage::Mgmt::V2016_01_01::Models::UsageUnit
      end

      class StorageManagementClass
        attr_reader :storage_accounts, :usage_operations, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          client_0 = Azure::Storage::Mgmt::V2016_01_01::StorageManagementClient.new(configurable.credentials, base_url, options)
          if(client_0.respond_to?(:subscription_id))
            client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(client_0)
          @storage_accounts = client_0.storage_accounts
          @usage_operations = client_0.usage_operations

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = 'Profiles/azure_sdk/V2017_03_09/Storage/Mgmt'
          client.add_user_agent_information(profile_information)
        end

        class ModelClasses
          def storage_account_check_name_availability_parameters
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountCheckNameAvailabilityParameters
          end
          def storage_account_key
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountKey
          end
          def sku
            Azure::Storage::Mgmt::V2016_01_01::Models::Sku
          end
          def storage_account_list_result
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountListResult
          end
          def encryption_service
            Azure::Storage::Mgmt::V2016_01_01::Models::EncryptionService
          end
          def storage_account_list_keys_result
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountListKeysResult
          end
          def encryption
            Azure::Storage::Mgmt::V2016_01_01::Models::Encryption
          end
          def storage_account_regenerate_key_parameters
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountRegenerateKeyParameters
          end
          def endpoints
            Azure::Storage::Mgmt::V2016_01_01::Models::Endpoints
          end
          def storage_account_update_parameters
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountUpdateParameters
          end
          def custom_domain
            Azure::Storage::Mgmt::V2016_01_01::Models::CustomDomain
          end
          def usage_name
            Azure::Storage::Mgmt::V2016_01_01::Models::UsageName
          end
          def storage_account_create_parameters
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccountCreateParameters
          end
          def usage
            Azure::Storage::Mgmt::V2016_01_01::Models::Usage
          end
          def encryption_services
            Azure::Storage::Mgmt::V2016_01_01::Models::EncryptionServices
          end
          def usage_list_result
            Azure::Storage::Mgmt::V2016_01_01::Models::UsageListResult
          end
          def check_name_availability_result
            Azure::Storage::Mgmt::V2016_01_01::Models::CheckNameAvailabilityResult
          end
          def resource
            Azure::Storage::Mgmt::V2016_01_01::Models::Resource
          end
          def storage_account
            Azure::Storage::Mgmt::V2016_01_01::Models::StorageAccount
          end
          def reason
            Azure::Storage::Mgmt::V2016_01_01::Models::Reason
          end
          def sku_name
            Azure::Storage::Mgmt::V2016_01_01::Models::SkuName
          end
          def sku_tier
            Azure::Storage::Mgmt::V2016_01_01::Models::SkuTier
          end
          def access_tier
            Azure::Storage::Mgmt::V2016_01_01::Models::AccessTier
          end
          def kind
            Azure::Storage::Mgmt::V2016_01_01::Models::Kind
          end
          def provisioning_state
            Azure::Storage::Mgmt::V2016_01_01::Models::ProvisioningState
          end
          def account_status
            Azure::Storage::Mgmt::V2016_01_01::Models::AccountStatus
          end
          def key_permission
            Azure::Storage::Mgmt::V2016_01_01::Models::KeyPermission
          end
          def usage_unit
            Azure::Storage::Mgmt::V2016_01_01::Models::UsageUnit
          end
        end
      end
    end
  end
end
