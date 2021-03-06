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

defmodule GoogleApi.ToolResults.V1beta3.Model.History do
  @moduledoc """
  A History represents a sorted list of Executions ordered by the
  start_timestamp_millis field (descending). It can be used to group all the
  Executions of a continuous build.

  Note that the ordering only operates on one-dimension. If a repository has
  multiple branches, it means that multiple histories will need to be
  used in order to order Executions per branch.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A short human-readable (plain text) name to display in the UI.
      Maximum of 100 characters.

      - In response: present if set during create.
      - In create request: optional
  *   `historyId` (*type:* `String.t`, *default:* `nil`) - A unique identifier within a project for this History.

      Returns INVALID_ARGUMENT if this field is set or overwritten by the caller.

      - In response always set
      - In create request: never set
  *   `name` (*type:* `String.t`, *default:* `nil`) - A name to uniquely identify a history within a project.
      Maximum of 200 characters.

      - In response always set
      - In create request: always set
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :historyId => String.t(),
          :name => String.t()
        }

  field(:displayName)
  field(:historyId)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.History do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.History.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.History do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
