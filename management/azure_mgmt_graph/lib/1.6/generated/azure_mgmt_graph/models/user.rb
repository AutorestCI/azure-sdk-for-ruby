# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::Mgmt::V1_6
  module Models
    #
    # Active Directory user information.
    #
    class User < DirectoryObject

      include MsRestAzure


      def initialize
        @objectType = "User"
      end

      attr_accessor :objectType

      # @return [String] This must be specified if you are using a federated
      # domain for the user's userPrincipalName (UPN) property when creating a
      # new user account. It is used to associate an on-premises Active
      # Directory user account with their Azure AD user object.
      attr_accessor :immutable_id

      # @return [String] A two letter country code (ISO standard 3166).
      # Required for users that will be assigned licenses due to legal
      # requirement to check for availability of services in countries.
      # Examples include: "US", "JP", and "GB".
      attr_accessor :usage_location

      # @return [String] The given name for the user.
      attr_accessor :given_name

      # @return [String] The user's surname (family name or last name).
      attr_accessor :surname

      # @return [UserType] A string value that can be used to classify user
      # types in your directory, such as 'Member' and 'Guest'. Possible values
      # include: 'Member', 'Guest'
      attr_accessor :user_type

      # @return [Boolean] Whether the account is enabled.
      attr_accessor :account_enabled

      # @return [String] The display name of the user.
      attr_accessor :display_name

      # @return [String] The principal name of the user.
      attr_accessor :user_principal_name

      # @return [String] The mail alias for the user.
      attr_accessor :mail_nickname

      # @return [String] The primary email address of the user.
      attr_accessor :mail

      # @return [Array<SignInName>] The sign-in names of the user.
      attr_accessor :sign_in_names


      #
      # Mapper for User class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'User',
          type: {
            name: 'Composite',
            class_name: 'User',
            model_properties: {
              object_id: {
                required: false,
                read_only: true,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              deletion_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'deletionTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              immutable_id: {
                required: false,
                serialized_name: 'immutableId',
                type: {
                  name: 'String'
                }
              },
              usage_location: {
                required: false,
                serialized_name: 'usageLocation',
                type: {
                  name: 'String'
                }
              },
              given_name: {
                required: false,
                serialized_name: 'givenName',
                type: {
                  name: 'String'
                }
              },
              surname: {
                required: false,
                serialized_name: 'surname',
                type: {
                  name: 'String'
                }
              },
              user_type: {
                required: false,
                serialized_name: 'userType',
                type: {
                  name: 'String'
                }
              },
              account_enabled: {
                required: false,
                serialized_name: 'accountEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              user_principal_name: {
                required: false,
                serialized_name: 'userPrincipalName',
                type: {
                  name: 'String'
                }
              },
              mail_nickname: {
                required: false,
                serialized_name: 'mailNickname',
                type: {
                  name: 'String'
                }
              },
              mail: {
                required: false,
                serialized_name: 'mail',
                type: {
                  name: 'String'
                }
              },
              sign_in_names: {
                required: false,
                serialized_name: 'signInNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SignInNameElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SignInName'
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
