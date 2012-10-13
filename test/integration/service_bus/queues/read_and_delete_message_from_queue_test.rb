# #-------------------------------------------------------------------------
# # Copyright (c) Microsoft. All rights reserved.
# #
# # Licensed under the Apache License, Version 2.0 (the "License");
# # you may not use this file except in compliance with the License.
# # You may obtain a copy of the License at
# #   http://www.apache.org/licenses/LICENSE-2.0
# #
# # Unless required by applicable law or agreed to in writing, software
# # distributed under the License is distributed on an "AS IS" BASIS,
# # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# # See the License for the specific language governing permissions and
# # limitations under the License.
# #--------------------------------------------------------------------------
# require "integration/test_helper"
# require "azure/service_bus/queues"
# require "azure/service_bus/brokered_message"

# describe "Read and Delete a Message from a Queue" do

#   after do
#     ServiceBusQueueNameHelper.clean
#   end

#   before do
#     @queue = Azure::ServiceBus::Queues.create(ServiceBusQueueNameHelper.name)
#   end

#   it "should be able to read-delete a message from a queue" do
#     message = Azure::ServiceBus::BrokeredMessage.new("some text") {|m| m.to = 'me' }
#     Azure::ServiceBus::Queues.send_message_to_queue(@queue, message)

#     retrieved = Azure::ServiceBus::Queues.read_delete_message_from_queue(@queue)

#     retrieved.must_be :kind_of?, Azure::ServiceBus::BrokeredMessage
#     assert retrieved.valid?
#     retrieved.body.must_equal message.body
#     retrieved.to.must_equal message.to

#     # it should be deleted
#     retrieved = Azure::ServiceBus::Queues.read_delete_message_from_queue(@queue, :timeout => 2)
#     refute retrieved.valid?
#     retrieved.error.message.must_equal "No messages available within the specified timeout period."
#   end
# end
