# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_datalake_store'

module Azure::Profiles::Latest
  module DataLakeStore
    module Mgmt
      FirewallRules = Azure::DataLakeStore::Mgmt::V2016_11_01::FirewallRules
      TrustedIdProviders = Azure::DataLakeStore::Mgmt::V2016_11_01::TrustedIdProviders
      Account = Azure::DataLakeStore::Mgmt::V2016_11_01::Account

      module Models
        UpdateKeyVaultMetaInfo = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateKeyVaultMetaInfo
        UpdateFirewallRuleParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
        UpdateEncryptionConfig = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateEncryptionConfig
        UpdateTrustedIdProviderParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderParameters
        DataLakeStoreAccountUpdateParameters = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountUpdateParameters
        DataLakeStoreTrustedIdProviderListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreTrustedIdProviderListResult
        DataLakeStoreFirewallRuleListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreFirewallRuleListResult
        EncryptionIdentity = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionIdentity
        EncryptionConfig = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfig
        SubResource = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubResource
        Resource = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Resource
        KeyVaultMetaInfo = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::KeyVaultMetaInfo
        DataLakeStoreAccountListResult = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountListResult
        ErrorDetails = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::ErrorDetails
        FirewallRule = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRule
        TrustedIdProvider = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProvider
        DataLakeStoreAccount = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccount
        DataLakeStoreAccountBasic = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountBasic
        EncryptionConfigType = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfigType
        EncryptionState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionState
        EncryptionProvisioningState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionProvisioningState
        FirewallState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallState
        TrustedIdProviderState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderState
        TierType = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TierType
        FirewallAllowAzureIpsState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
        DataLakeStoreAccountStatus = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountStatus
        DataLakeStoreAccountState = Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountState
      end

      class DataLakeStoreManagementClass
        attr_reader :firewall_rules, :trusted_id_providers, :account, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          client_0 = Azure::DataLakeStore::Mgmt::V2016_11_01::DataLakeStoreAccountManagementClient.new(configurable.credentials, base_url, options)
          if(client_0.respond_to?(:subscription_id))
            client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(client_0)
          @firewall_rules = client_0.firewall_rules
          @trusted_id_providers = client_0.trusted_id_providers
          @account = client_0.account

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = 'Profiles/azure_sdk/Latest/DataLakeStore/Mgmt'
          client.add_user_agent_information(profile_information)
        end

        class ModelClasses
          def update_key_vault_meta_info
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateKeyVaultMetaInfo
          end
          def update_firewall_rule_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateFirewallRuleParameters
          end
          def update_encryption_config
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateEncryptionConfig
          end
          def update_trusted_id_provider_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::UpdateTrustedIdProviderParameters
          end
          def data_lake_store_account_update_parameters
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountUpdateParameters
          end
          def data_lake_store_trusted_id_provider_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreTrustedIdProviderListResult
          end
          def data_lake_store_firewall_rule_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreFirewallRuleListResult
          end
          def encryption_identity
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionIdentity
          end
          def encryption_config
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfig
          end
          def sub_resource
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::SubResource
          end
          def resource
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::Resource
          end
          def key_vault_meta_info
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::KeyVaultMetaInfo
          end
          def data_lake_store_account_list_result
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountListResult
          end
          def error_details
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::ErrorDetails
          end
          def firewall_rule
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallRule
          end
          def trusted_id_provider
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProvider
          end
          def data_lake_store_account
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccount
          end
          def data_lake_store_account_basic
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountBasic
          end
          def encryption_config_type
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionConfigType
          end
          def encryption_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionState
          end
          def encryption_provisioning_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::EncryptionProvisioningState
          end
          def firewall_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallState
          end
          def trusted_id_provider_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TrustedIdProviderState
          end
          def tier_type
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::TierType
          end
          def firewall_allow_azure_ips_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::FirewallAllowAzureIpsState
          end
          def data_lake_store_account_status
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountStatus
          end
          def data_lake_store_account_state
            Azure::DataLakeStore::Mgmt::V2016_11_01::Models::DataLakeStoreAccountState
          end
        end
      end
    end
  end
end
