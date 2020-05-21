# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ServiceNetworking.V1.Model.AddDnsZoneResponse do
  @moduledoc """
  Represents managed DNS zones created in the shared producer host and consumer
  projects.

  ## Attributes

  *   `consumerPeeringZone` (*type:* `GoogleApi.ServiceNetworking.V1.Model.DnsZone.t`, *default:* `nil`) - The DNS peering zone created in the consumer project.
  *   `producerPrivateZone` (*type:* `GoogleApi.ServiceNetworking.V1.Model.DnsZone.t`, *default:* `nil`) - The private DNS zone created in the shared producer host project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerPeeringZone => GoogleApi.ServiceNetworking.V1.Model.DnsZone.t(),
          :producerPrivateZone => GoogleApi.ServiceNetworking.V1.Model.DnsZone.t()
        }

  field(:consumerPeeringZone, as: GoogleApi.ServiceNetworking.V1.Model.DnsZone)
  field(:producerPrivateZone, as: GoogleApi.ServiceNetworking.V1.Model.DnsZone)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.AddDnsZoneResponse do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.AddDnsZoneResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.AddDnsZoneResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
