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

defmodule GoogleApi.CloudResourceManager.V1.Model.ListAvailableOrgPolicyConstraintsRequest do
  @moduledoc """
  The request sent to the `ListAvailableOrgPolicyConstraints` method on the project, folder, or organization.

  ## Attributes

  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil
        }

  field(:pageSize)
  field(:pageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudResourceManager.V1.Model.ListAvailableOrgPolicyConstraintsRequest do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.ListAvailableOrgPolicyConstraintsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudResourceManager.V1.Model.ListAvailableOrgPolicyConstraintsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
