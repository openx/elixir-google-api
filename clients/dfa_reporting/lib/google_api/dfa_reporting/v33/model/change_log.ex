# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V33.Model.ChangeLog do
  @moduledoc """
  Describes a change that a user has made to a resource.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of the modified object.
  *   `action` (*type:* `String.t`, *default:* `nil`) - Action which caused the change.
  *   `changeTime` (*type:* `DateTime.t`, *default:* `nil`) - Time when the object was modified.
  *   `fieldName` (*type:* `String.t`, *default:* `nil`) - Field name of the object which changed.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this change log.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#changeLog`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#changeLog".
  *   `newValue` (*type:* `String.t`, *default:* `nil`) - New value of the object field.
  *   `objectId` (*type:* `String.t`, *default:* `nil`) - ID of the object of this change log. The object could be a campaign, placement, ad, or other type.
  *   `objectType` (*type:* `String.t`, *default:* `nil`) - Object type of the change log.
  *   `oldValue` (*type:* `String.t`, *default:* `nil`) - Old value of the object field.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of the modified object.
  *   `transactionId` (*type:* `String.t`, *default:* `nil`) - Transaction ID of this change log. When a single API call results in many changes, each change will have a separate ID in the change log but will share the same transactionId.
  *   `userProfileId` (*type:* `String.t`, *default:* `nil`) - ID of the user who modified the object.
  *   `userProfileName` (*type:* `String.t`, *default:* `nil`) - User profile name of the user who modified the object.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :action => String.t(),
          :changeTime => DateTime.t(),
          :fieldName => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :newValue => String.t(),
          :objectId => String.t(),
          :objectType => String.t(),
          :oldValue => String.t(),
          :subaccountId => String.t(),
          :transactionId => String.t(),
          :userProfileId => String.t(),
          :userProfileName => String.t()
        }

  field(:accountId)
  field(:action)
  field(:changeTime, as: DateTime)
  field(:fieldName)
  field(:id)
  field(:kind)
  field(:newValue)
  field(:objectId)
  field(:objectType)
  field(:oldValue)
  field(:subaccountId)
  field(:transactionId)
  field(:userProfileId)
  field(:userProfileName)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.ChangeLog do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.ChangeLog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.ChangeLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end