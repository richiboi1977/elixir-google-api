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

defmodule GoogleApi.GamesManagement.V1management.Model.HiddenPlayer do
  @moduledoc """
  The HiddenPlayer resource.

  ## Attributes

  *   `hiddenTimeMillis` (*type:* `String.t`, *default:* `nil`) - Output only. The time this player was hidden.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Output only. Uniquely identifies the type of this resource. Value is always the fixed string `gamesManagement#hiddenPlayer`.
  *   `player` (*type:* `GoogleApi.GamesManagement.V1management.Model.Player.t`, *default:* `nil`) - Output only. The player information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hiddenTimeMillis => String.t() | nil,
          :kind => String.t() | nil,
          :player => GoogleApi.GamesManagement.V1management.Model.Player.t() | nil
        }

  field(:hiddenTimeMillis)
  field(:kind)
  field(:player, as: GoogleApi.GamesManagement.V1management.Model.Player)
end

defimpl Poison.Decoder, for: GoogleApi.GamesManagement.V1management.Model.HiddenPlayer do
  def decode(value, options) do
    GoogleApi.GamesManagement.V1management.Model.HiddenPlayer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GamesManagement.V1management.Model.HiddenPlayer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
