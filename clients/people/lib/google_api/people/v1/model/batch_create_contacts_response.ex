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

defmodule GoogleApi.People.V1.Model.BatchCreateContactsResponse do
  @moduledoc """
  If not successful, returns BatchCreateContactsErrorDetails.contacts which contains a list of errors for each invalid contact. The response to a request to create a batch of contacts.

  ## Attributes

  *   `createdPeople` (*type:* `list(GoogleApi.People.V1.Model.PersonResponse.t)`, *default:* `nil`) - The contacts that were created, unless the request `read_mask` is empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdPeople => list(GoogleApi.People.V1.Model.PersonResponse.t()) | nil
        }

  field(:createdPeople, as: GoogleApi.People.V1.Model.PersonResponse, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.BatchCreateContactsResponse do
  def decode(value, options) do
    GoogleApi.People.V1.Model.BatchCreateContactsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.BatchCreateContactsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
