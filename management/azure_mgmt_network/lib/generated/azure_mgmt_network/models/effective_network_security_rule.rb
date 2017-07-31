# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Effective network security rules.
    #
    class EffectiveNetworkSecurityRule

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the security rule specified by the user
      # (if created by the user).
      attr_accessor :name

      # @return [EffectiveSecurityRuleProtocol] The network protocol this rule
      # applies to. Possible values are: 'Tcp', 'Udp', and 'All'. Possible
      # values include: 'Tcp', 'Udp', 'All'
      attr_accessor :protocol

      # @return [String] The source port or range.
      attr_accessor :source_port_range

      # @return [String] The destination port or range.
      attr_accessor :destination_port_range

      # @return [Array<String>] The source port ranges. Expected values include
      # a single integer between 0 and 65535, a range using '-' as seperator
      # (e.g. 100-400), or an asterix (*)
      attr_accessor :source_port_ranges

      # @return [Array<String>] The destination port ranges. Expected values
      # include a single integer between 0 and 65535, a range using '-' as
      # seperator (e.g. 100-400), or an asterix (*)
      attr_accessor :destination_port_ranges

      # @return [String] The source address prefix.
      attr_accessor :source_address_prefix

      # @return [String] The destination address prefix.
      attr_accessor :destination_address_prefix

      # @return [Array<String>] The source address prefixes. Expected values
      # include CIDR IP ranges, Default Tags (VirtualNetwork, AureLoadBalancer,
      # Internet), System Tags, and the asterix (*).
      attr_accessor :source_address_prefixes

      # @return [Array<String>] The destination address prefixes. Expected
      # values include CIDR IP ranges, Default Tags (VirtualNetwork,
      # AureLoadBalancer, Internet), System Tags, and the asterix (*).
      attr_accessor :destination_address_prefixes

      # @return [Array<String>] The expanded source address prefix.
      attr_accessor :expanded_source_address_prefix

      # @return [Array<String>] Expanded destination address prefix.
      attr_accessor :expanded_destination_address_prefix

      # @return [SecurityRuleAccess] Whether network traffic is allowed or
      # denied. Possible values are: 'Allow' and 'Deny'. Possible values
      # include: 'Allow', 'Deny'
      attr_accessor :access

      # @return [Integer] The priority of the rule.
      attr_accessor :priority

      # @return [SecurityRuleDirection] The direction of the rule. Possible
      # values are: 'Inbound and Outbound'. Possible values include: 'Inbound',
      # 'Outbound'
      attr_accessor :direction


      #
      # Mapper for EffectiveNetworkSecurityRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EffectiveNetworkSecurityRule',
          type: {
            name: 'Composite',
            class_name: 'EffectiveNetworkSecurityRule',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              source_port_range: {
                required: false,
                serialized_name: 'sourcePortRange',
                type: {
                  name: 'String'
                }
              },
              destination_port_range: {
                required: false,
                serialized_name: 'destinationPortRange',
                type: {
                  name: 'String'
                }
              },
              source_port_ranges: {
                required: false,
                serialized_name: 'sourcePortRanges',
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
              destination_port_ranges: {
                required: false,
                serialized_name: 'destinationPortRanges',
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
              source_address_prefix: {
                required: false,
                serialized_name: 'sourceAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              destination_address_prefix: {
                required: false,
                serialized_name: 'destinationAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              source_address_prefixes: {
                required: false,
                serialized_name: 'sourceAddressPrefixes',
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
              destination_address_prefixes: {
                required: false,
                serialized_name: 'destinationAddressPrefixes',
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
              expanded_source_address_prefix: {
                required: false,
                serialized_name: 'expandedSourceAddressPrefix',
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
              expanded_destination_address_prefix: {
                required: false,
                serialized_name: 'expandedDestinationAddressPrefix',
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
              access: {
                required: false,
                serialized_name: 'access',
                type: {
                  name: 'String'
                }
              },
              priority: {
                required: false,
                serialized_name: 'priority',
                type: {
                  name: 'Number'
                }
              },
              direction: {
                required: false,
                serialized_name: 'direction',
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
