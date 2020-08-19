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

defmodule GoogleApi.CloudScheduler.V1.Model.RetryConfig do
  @moduledoc """
  Settings that determine the retry behavior. By default, if a job does not complete successfully (meaning that an acknowledgement is not received from the handler, then it will be retried with exponential backoff according to the settings in RetryConfig.

  ## Attributes

  *   `maxBackoffDuration` (*type:* `String.t`, *default:* `nil`) - The maximum amount of time to wait before retrying a job after it fails. The default value of this field is 1 hour.
  *   `maxDoublings` (*type:* `integer()`, *default:* `nil`) - The time between retries will double `max_doublings` times. A job's retry interval starts at min_backoff_duration, then doubles `max_doublings` times, then increases linearly, and finally retries at intervals of max_backoff_duration up to retry_count times. For example, if min_backoff_duration is 10s, max_backoff_duration is 300s, and `max_doublings` is 3, then the a job will first be retried in 10s. The retry interval will double three times, and then increase linearly by 2^3 * 10s. Finally, the job will retry at intervals of max_backoff_duration until the job has been attempted retry_count times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s, 300s, .... The default value of this field is 5.
  *   `maxRetryDuration` (*type:* `String.t`, *default:* `nil`) - The time limit for retrying a failed job, measured from time when an execution was first attempted. If specified with retry_count, the job will be retried until both limits are reached. The default value for max_retry_duration is zero, which means retry duration is unlimited.
  *   `minBackoffDuration` (*type:* `String.t`, *default:* `nil`) - The minimum amount of time to wait before retrying a job after it fails. The default value of this field is 5 seconds.
  *   `retryCount` (*type:* `integer()`, *default:* `nil`) - The number of attempts that the system will make to run a job using the exponential backoff procedure described by max_doublings. The default value of retry_count is zero. If retry_count is zero, a job attempt will *not* be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. If retry_count is set to a non-zero number then Cloud Scheduler will retry failed attempts, using exponential backoff, retry_count times, or until the next scheduled execution time, whichever comes first. Values greater than 5 and negative values are not allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxBackoffDuration => String.t(),
          :maxDoublings => integer(),
          :maxRetryDuration => String.t(),
          :minBackoffDuration => String.t(),
          :retryCount => integer()
        }

  field(:maxBackoffDuration)
  field(:maxDoublings)
  field(:maxRetryDuration)
  field(:minBackoffDuration)
  field(:retryCount)
end

defimpl Poison.Decoder, for: GoogleApi.CloudScheduler.V1.Model.RetryConfig do
  def decode(value, options) do
    GoogleApi.CloudScheduler.V1.Model.RetryConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudScheduler.V1.Model.RetryConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
