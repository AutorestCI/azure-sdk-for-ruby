# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a Virtual Machine.
    #
    class VirtualMachine < MsRestAzure::Resource

      include MsRestAzure

      # @return [Plan] Gets or sets the purchase plan when deploying virtual
      # machine from VM Marketplace images.
      attr_accessor :plan

      # @return [VirtualMachineProperties]
      attr_accessor :properties

      # @return [Array<VirtualMachineExtension>] Gets the virtual machine
      # child extension resources.
      attr_accessor :resources

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @plan.validate unless @plan.nil?
        @properties.validate unless @properties.nil?
        @resources.each{ |e| e.validate if e.respond_to?(:validate) } unless @resources.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.location
        output_object['location'] = serialized_property unless serialized_property.nil?

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        serialized_property = object.tags
        output_object['tags'] = serialized_property unless serialized_property.nil?

        serialized_property = object.plan
        unless serialized_property.nil?
          serialized_property = Plan.serialize_object(serialized_property)
        end
        output_object['plan'] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        unless serialized_property.nil?
          serialized_property = VirtualMachineProperties.serialize_object(serialized_property)
        end
        output_object['properties'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resources
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = VirtualMachineExtension.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['resources'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachine] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachine.new

        deserialized_property = object['location']
        output_object.location = deserialized_property

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['type']
        output_object.type = deserialized_property

        deserialized_property = object['tags']
        output_object.tags = deserialized_property

        deserialized_property = object['plan']
        unless deserialized_property.nil?
          deserialized_property = Plan.deserialize_object(deserialized_property)
        end
        output_object.plan = deserialized_property

        deserialized_property = object['properties']
        unless deserialized_property.nil?
          deserialized_property = VirtualMachineProperties.deserialize_object(deserialized_property)
        end
        output_object.properties = deserialized_property

        deserialized_property = object['resources']
        unless deserialized_property.nil?
          deserializedArray = [];
          deserialized_property.each do |element1|
            unless element1.nil?
              element1 = VirtualMachineExtension.deserialize_object(element1)
            end
            deserializedArray.push(element1);
          end
          deserialized_property = deserializedArray;
        end
        output_object.resources = deserialized_property

        output_object.validate

        output_object
      end
    end
  end
end
