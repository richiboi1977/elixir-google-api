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

defmodule GoogleApi.Composer.V1beta1.Model.IPAllocationPolicy do
  @moduledoc """
  Configuration for controlling how IPs are allocated in the GKE cluster.

  ## Attributes

  *   `clusterIpv4CidrBlock` (*type:* `String.t`, *default:* `nil`) - Optional. The IP address range used to allocate IP addresses to pods in the cluster. This field is applicable only when `use_ip_aliases` is true. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. `/14`) to have GKE choose a range with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use. Specify `cluster_secondary_range_name` or `cluster_ipv4_cidr_block` but not both.
  *   `clusterSecondaryRangeName` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the cluster's secondary range used to allocate IP addresses to pods. Specify either `cluster_secondary_range_name` or `cluster_ipv4_cidr_block` but not both. This field is applicable only when `use_ip_aliases` is true. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true.
  *   `servicesIpv4CidrBlock` (*type:* `String.t`, *default:* `nil`) - Optional. The IP address range of the services IP addresses in this cluster. This field is applicable only when `use_ip_aliases` is true. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true. Set to blank to have GKE choose a range with the default size. Set to /netmask (e.g. `/14`) to have GKE choose a range with a specific netmask. Set to a [CIDR](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. `10.96.0.0/14`) from the RFC-1918 private networks (e.g. `10.0.0.0/8`, `172.16.0.0/12`, `192.168.0.0/16`) to pick a specific range to use. Specify `services_secondary_range_name` or `services_ipv4_cidr_block` but not both.
  *   `servicesSecondaryRangeName` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the services' secondary range used to allocate IP addresses to the cluster. Specify either `services_secondary_range_name` or `services_ipv4_cidr_block` but not both. This field is applicable only when `use_ip_aliases` is true. For Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*, this field is applicable only when `use_ip_aliases` is true.
  *   `useIpAliases` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether or not to enable Alias IPs in the GKE cluster. If `true`, a VPC-native cluster is created. This field is only supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*. Environments in newer versions always use VPC-native GKE clusters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterIpv4CidrBlock => String.t() | nil,
          :clusterSecondaryRangeName => String.t() | nil,
          :servicesIpv4CidrBlock => String.t() | nil,
          :servicesSecondaryRangeName => String.t() | nil,
          :useIpAliases => boolean() | nil
        }

  field(:clusterIpv4CidrBlock)
  field(:clusterSecondaryRangeName)
  field(:servicesIpv4CidrBlock)
  field(:servicesSecondaryRangeName)
  field(:useIpAliases)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.IPAllocationPolicy do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.IPAllocationPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.IPAllocationPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
