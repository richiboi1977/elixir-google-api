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

defmodule GoogleApi.Firestore.V1.Model.PartitionQueryResponse do
  @moduledoc """
  The response for Firestore.PartitionQuery.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A page token that may be used to request an additional set of results, up
      to the number specified by `partition_count` in the PartitionQuery request.
      If blank, there are no more results.
  *   `partitions` (*type:* `list(GoogleApi.Firestore.V1.Model.Cursor.t)`, *default:* `nil`) - Partition results.
      Each partition is a split point that can be used by RunQuery as a starting
      or end point for the query results. The RunQuery requests must be made with
      the same query supplied to this PartitionQuery request. The partition
      cursors will be ordered according to same ordering as the results of the
      query supplied to PartitionQuery.

      For example, if a PartitionQuery request returns partition cursors A and B,
      running the following three queries will return the entire result set of
      the original query:

       * query, end_at A
       * query, start_at A, end_at B
       * query, start_at B
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :partitions => list(GoogleApi.Firestore.V1.Model.Cursor.t())
        }

  field(:nextPageToken)
  field(:partitions, as: GoogleApi.Firestore.V1.Model.Cursor, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.PartitionQueryResponse do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.PartitionQueryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.PartitionQueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end