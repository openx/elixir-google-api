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

defmodule GoogleApi.CloudSearch.V1.Model.NamedProperty do
  @moduledoc """
  A typed name-value pair for structured data.  The type of the value should
  be the same as the registered type for the `name` property in the object
  definition of `objectType`.

  ## Attributes

  *   `booleanValue` (*type:* `boolean()`, *default:* `nil`) - 
  *   `dateValues` (*type:* `GoogleApi.CloudSearch.V1.Model.DateValues.t`, *default:* `nil`) - 
  *   `doubleValues` (*type:* `GoogleApi.CloudSearch.V1.Model.DoubleValues.t`, *default:* `nil`) - 
  *   `enumValues` (*type:* `GoogleApi.CloudSearch.V1.Model.EnumValues.t`, *default:* `nil`) - 
  *   `htmlValues` (*type:* `GoogleApi.CloudSearch.V1.Model.HtmlValues.t`, *default:* `nil`) - 
  *   `integerValues` (*type:* `GoogleApi.CloudSearch.V1.Model.IntegerValues.t`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the property.  This name should correspond to the name of the
      property that was registered for object definition in the schema.
      The maximum allowable length for this property is 256 characters.
  *   `objectValues` (*type:* `GoogleApi.CloudSearch.V1.Model.ObjectValues.t`, *default:* `nil`) - 
  *   `textValues` (*type:* `GoogleApi.CloudSearch.V1.Model.TextValues.t`, *default:* `nil`) - 
  *   `timestampValues` (*type:* `GoogleApi.CloudSearch.V1.Model.TimestampValues.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanValue => boolean(),
          :dateValues => GoogleApi.CloudSearch.V1.Model.DateValues.t(),
          :doubleValues => GoogleApi.CloudSearch.V1.Model.DoubleValues.t(),
          :enumValues => GoogleApi.CloudSearch.V1.Model.EnumValues.t(),
          :htmlValues => GoogleApi.CloudSearch.V1.Model.HtmlValues.t(),
          :integerValues => GoogleApi.CloudSearch.V1.Model.IntegerValues.t(),
          :name => String.t(),
          :objectValues => GoogleApi.CloudSearch.V1.Model.ObjectValues.t(),
          :textValues => GoogleApi.CloudSearch.V1.Model.TextValues.t(),
          :timestampValues => GoogleApi.CloudSearch.V1.Model.TimestampValues.t()
        }

  field(:booleanValue)
  field(:dateValues, as: GoogleApi.CloudSearch.V1.Model.DateValues)
  field(:doubleValues, as: GoogleApi.CloudSearch.V1.Model.DoubleValues)
  field(:enumValues, as: GoogleApi.CloudSearch.V1.Model.EnumValues)
  field(:htmlValues, as: GoogleApi.CloudSearch.V1.Model.HtmlValues)
  field(:integerValues, as: GoogleApi.CloudSearch.V1.Model.IntegerValues)
  field(:name)
  field(:objectValues, as: GoogleApi.CloudSearch.V1.Model.ObjectValues)
  field(:textValues, as: GoogleApi.CloudSearch.V1.Model.TextValues)
  field(:timestampValues, as: GoogleApi.CloudSearch.V1.Model.TimestampValues)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.NamedProperty do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.NamedProperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.NamedProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end