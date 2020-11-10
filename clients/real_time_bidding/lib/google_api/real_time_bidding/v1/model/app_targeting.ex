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

defmodule GoogleApi.RealTimeBidding.V1.Model.AppTargeting do
  @moduledoc """
  A subset of app inventory to target. Bid requests that match criteria in at least one of the specified dimensions will be sent.

  ## Attributes

  *   `mobileAppCategoryTargeting` (*type:* `GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension.t`, *default:* `nil`) - Lists of included and excluded mobile app categories as defined in https://developers.google.com/adwords/api/docs/appendix/mobileappcategories.csv.
  *   `mobileAppTargeting` (*type:* `GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension.t`, *default:* `nil`) - Targeted app IDs. App IDs can refer to those found in an app store or ones that are not published in an app store. A maximum of 30,000 app IDs can be targeted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mobileAppCategoryTargeting =>
            GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension.t(),
          :mobileAppTargeting => GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension.t()
        }

  field(:mobileAppCategoryTargeting,
    as: GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension
  )

  field(:mobileAppTargeting, as: GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.AppTargeting do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.AppTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.AppTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end