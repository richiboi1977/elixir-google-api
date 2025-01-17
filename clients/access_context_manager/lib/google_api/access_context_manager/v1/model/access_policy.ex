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

defmodule GoogleApi.AccessContextManager.V1.Model.AccessPolicy do
  @moduledoc """
  `AccessPolicy` is a container for `AccessLevels` (which define the necessary attributes to use Google Cloud services) and `ServicePerimeters` (which define regions of services able to freely pass data within a perimeter). An access policy is globally visible within an organization, and the restrictions it specifies apply to all projects within an organization.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. An opaque identifier for the current version of the `AccessPolicy`. This will always be a strongly validated etag, meaning that two Access Polices will be identical if and only if their etags are identical. Clients should not expect this to be in any specific format.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_policy}`
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  *   `title` (*type:* `String.t`, *default:* `nil`) - Required. Human readable title. Does not affect behavior.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :parent => String.t() | nil,
          :title => String.t() | nil
        }

  field(:etag)
  field(:name)
  field(:parent)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.AccessPolicy do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.AccessPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.AccessPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
