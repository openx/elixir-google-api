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

defmodule GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelAssignedTargetingOptionDetails do
  @moduledoc """
  Targeting details for digital content label. This will be
  populated in the details field of an AssignedTargetingOption when
  targeting_type is
  `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`.

  ## Attributes

  *   `contentRatingTier` (*type:* `String.t`, *default:* `nil`) - Output only. The display name of the digital content label rating tier.
  *   `excludedTargetingOptionId` (*type:* `String.t`, *default:* `nil`) - Required. ID of the digital content label to be EXCLUDED.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentRatingTier => String.t(),
          :excludedTargetingOptionId => String.t()
        }

  field(:contentRatingTier)
  field(:excludedTargetingOptionId)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelAssignedTargetingOptionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
