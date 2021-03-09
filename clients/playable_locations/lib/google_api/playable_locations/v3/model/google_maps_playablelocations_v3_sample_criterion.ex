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

defmodule GoogleApi.PlayableLocations.V3.Model.GoogleMapsPlayablelocationsV3SampleCriterion do
  @moduledoc """
  Encapsulates a filter criterion for searching for a set of playable locations.

  ## Attributes

  *   `fieldsToReturn` (*type:* `String.t`, *default:* `nil`) - Specifies which `PlayableLocation` fields are returned. `name` (which is used for logging impressions), `center_point` and `place_id` (or `plus_code`) are always returned. The following fields are omitted unless you specify them here: * snapped_point * types Note: The more fields you include, the more expensive in terms of data and associated latency your query will be.
  *   `filter` (*type:* `GoogleApi.PlayableLocations.V3.Model.GoogleMapsPlayablelocationsV3SampleFilter.t`, *default:* `nil`) - Specifies filtering options, and specifies what will be included in the result set.
  *   `gameObjectType` (*type:* `integer()`, *default:* `nil`) - Required. An arbitrary, developer-defined identifier of the type of game object that the playable location is used for. This field allows you to specify criteria per game object type when searching for playable locations. You should assign a unique `game_object_type` ID across all `request_criteria` to represent a distinct type of game object. For example, 1=monster location, 2=powerup location. The response contains a map.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fieldsToReturn => String.t() | nil,
          :filter =>
            GoogleApi.PlayableLocations.V3.Model.GoogleMapsPlayablelocationsV3SampleFilter.t()
            | nil,
          :gameObjectType => integer() | nil
        }

  field(:fieldsToReturn)

  field(:filter,
    as: GoogleApi.PlayableLocations.V3.Model.GoogleMapsPlayablelocationsV3SampleFilter
  )

  field(:gameObjectType)
end

defimpl Poison.Decoder,
  for: GoogleApi.PlayableLocations.V3.Model.GoogleMapsPlayablelocationsV3SampleCriterion do
  def decode(value, options) do
    GoogleApi.PlayableLocations.V3.Model.GoogleMapsPlayablelocationsV3SampleCriterion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PlayableLocations.V3.Model.GoogleMapsPlayablelocationsV3SampleCriterion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
