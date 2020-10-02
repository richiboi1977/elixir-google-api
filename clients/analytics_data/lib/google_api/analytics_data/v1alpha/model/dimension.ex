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

defmodule GoogleApi.AnalyticsData.V1alpha.Model.Dimension do
  @moduledoc """
  Dimensions are attributes of your data. For example, the dimension City indicates the city, for example, "Paris" or "New York", from which an event originates. Requests are allowed up to 8 dimensions.

  ## Attributes

  *   `dimensionExpression` (*type:* `GoogleApi.AnalyticsData.V1alpha.Model.DimensionExpression.t`, *default:* `nil`) - One dimension can be the result of an expression of multiple dimensions. For example, dimension "country, city": concatenate(country, ", ", city).
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the dimension.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionExpression => GoogleApi.AnalyticsData.V1alpha.Model.DimensionExpression.t(),
          :name => String.t()
        }

  field(:dimensionExpression, as: GoogleApi.AnalyticsData.V1alpha.Model.DimensionExpression)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1alpha.Model.Dimension do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1alpha.Model.Dimension.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1alpha.Model.Dimension do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end