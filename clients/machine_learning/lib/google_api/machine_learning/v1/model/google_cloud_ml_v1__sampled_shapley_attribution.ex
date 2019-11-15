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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_SampledShapleyAttribution do
  @moduledoc """
  An attribution method that approximates Shapley values for features that
  contribute to the label being predicted. A sampling strategy is used to
  approximate the value rather than considering all subsets of features.

  ## Attributes

  *   `numPaths` (*type:* `integer()`, *default:* `nil`) - The number of feature permutations to consider when approximating the
      shapley values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numPaths => integer()
        }

  field(:numPaths)
end

defimpl Poison.Decoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_SampledShapleyAttribution do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_SampledShapleyAttribution.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_SampledShapleyAttribution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
