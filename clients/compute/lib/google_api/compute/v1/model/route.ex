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

defmodule GoogleApi.Compute.V1.Model.Route do
  @moduledoc """
  Represents a Route resource. A route defines a path from VM instances in the VPC network to a specific destination. This destination can be inside or outside the VPC network. For more information, read the Routes overview.

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this field when you create the resource.
  *   `destRange` (*type:* `String.t`, *default:* `nil`) - The destination range of outgoing packets that this route applies to. Both IPv4 and IPv6 are supported.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#route`) - [Output Only] Type of this resource. Always compute#routes for Route resources.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Fully-qualified URL of the network that this route applies to.
  *   `nextHopGateway` (*type:* `String.t`, *default:* `nil`) - The URL to a gateway that should handle matching packets. You can only specify the internet gateway using a full or partial valid URL: projects/ project/global/gateways/default-internet-gateway
  *   `nextHopIlb` (*type:* `String.t`, *default:* `nil`) - The URL to a forwarding rule of type loadBalancingScheme=INTERNAL that should handle matching packets or the IP address of the forwarding Rule. For example, the following are all valid URLs: - 10.128.0.56 - https://www.googleapis.com/compute/v1/projects/project/regions/region /forwardingRules/forwardingRule - regions/region/forwardingRules/forwardingRule 
  *   `nextHopInstance` (*type:* `String.t`, *default:* `nil`) - The URL to an instance that should handle matching packets. You can specify this as a full or partial URL. For example: https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
  *   `nextHopIp` (*type:* `String.t`, *default:* `nil`) - The network IP address of an instance that should handle matching packets. Only IPv4 is supported.
  *   `nextHopNetwork` (*type:* `String.t`, *default:* `nil`) - The URL of the local network if it should handle matching packets.
  *   `nextHopPeering` (*type:* `String.t`, *default:* `nil`) - [Output Only] The network peering name that should handle matching packets, which should conform to RFC1035.
  *   `nextHopVpnTunnel` (*type:* `String.t`, *default:* `nil`) - The URL to a VpnTunnel that should handle matching packets.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - The priority of this route. Priority is used to break ties in cases where there is more than one matching route of equal prefix length. In cases where multiple routes have equal prefix length, the one with the lowest-numbered priority value wins. The default value is `1000`. The priority value must be from `0` to `65535`, inclusive.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined fully-qualified URL for this resource.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - A list of instance tags to which this route applies.
  *   `warnings` (*type:* `list(GoogleApi.Compute.V1.Model.RouteWarnings.t)`, *default:* `nil`) - [Output Only] If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :destRange => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :network => String.t() | nil,
          :nextHopGateway => String.t() | nil,
          :nextHopIlb => String.t() | nil,
          :nextHopInstance => String.t() | nil,
          :nextHopIp => String.t() | nil,
          :nextHopNetwork => String.t() | nil,
          :nextHopPeering => String.t() | nil,
          :nextHopVpnTunnel => String.t() | nil,
          :priority => integer() | nil,
          :selfLink => String.t() | nil,
          :tags => list(String.t()) | nil,
          :warnings => list(GoogleApi.Compute.V1.Model.RouteWarnings.t()) | nil
        }

  field(:creationTimestamp)
  field(:description)
  field(:destRange)
  field(:id)
  field(:kind)
  field(:name)
  field(:network)
  field(:nextHopGateway)
  field(:nextHopIlb)
  field(:nextHopInstance)
  field(:nextHopIp)
  field(:nextHopNetwork)
  field(:nextHopPeering)
  field(:nextHopVpnTunnel)
  field(:priority)
  field(:selfLink)
  field(:tags, type: :list)
  field(:warnings, as: GoogleApi.Compute.V1.Model.RouteWarnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Route do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Route.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Route do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
