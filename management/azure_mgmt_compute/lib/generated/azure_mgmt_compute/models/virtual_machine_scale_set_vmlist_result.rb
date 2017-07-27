# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The List Virtual Machine Scale Set VMs operation response.
    #
    class VirtualMachineScaleSetVMListResult
      # @return [Array<VirtualMachineScaleSetVM>] The list of virtual machine
      # scale sets VMs.
      attr_accessor :value

      # @return [String] The uri to fetch the next page of Virtual Machine
      # Scale Set VMs. Call ListNext() with this to fetch the next page of VMSS
      # VMs
      attr_accessor :next_link


      #
      # Mapper for VirtualMachineScaleSetVMListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetVMListResult',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetVMListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetVMElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetVM'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
