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

defmodule GoogleApi.CloudResourceManager.V2.Model.ProjectCreationStatus do
  @moduledoc """
  A status object which is used as the `metadata` field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation time of the project creation workflow.
  *   `gettable` (*type:* `boolean()`, *default:* `nil`) - True if the project can be retrieved using GetProject. No other operations on the project are guaranteed to work until the project creation is complete.
  *   `ready` (*type:* `boolean()`, *default:* `nil`) - True if the project creation process is complete.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :gettable => boolean() | nil,
          :ready => boolean() | nil
        }

  field(:createTime, as: DateTime)
  field(:gettable)
  field(:ready)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V2.Model.ProjectCreationStatus do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V2.Model.ProjectCreationStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V2.Model.ProjectCreationStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
