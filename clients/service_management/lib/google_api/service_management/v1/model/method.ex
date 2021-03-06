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

defmodule GoogleApi.ServiceManagement.V1.Model.Method do
  @moduledoc """
  Method represents a method of an API interface.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The simple name of this method.
  *   `options` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.Option.t)`, *default:* `nil`) - Any metadata attached to the method.
  *   `requestStreaming` (*type:* `boolean()`, *default:* `nil`) - If true, the request is streamed.
  *   `requestTypeUrl` (*type:* `String.t`, *default:* `nil`) - A URL of the input message type.
  *   `responseStreaming` (*type:* `boolean()`, *default:* `nil`) - If true, the response is streamed.
  *   `responseTypeUrl` (*type:* `String.t`, *default:* `nil`) - The URL of the output message type.
  *   `syntax` (*type:* `String.t`, *default:* `nil`) - The source syntax of this method.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :options => list(GoogleApi.ServiceManagement.V1.Model.Option.t()),
          :requestStreaming => boolean(),
          :requestTypeUrl => String.t(),
          :responseStreaming => boolean(),
          :responseTypeUrl => String.t(),
          :syntax => String.t()
        }

  field(:name)
  field(:options, as: GoogleApi.ServiceManagement.V1.Model.Option, type: :list)
  field(:requestStreaming)
  field(:requestTypeUrl)
  field(:responseStreaming)
  field(:responseTypeUrl)
  field(:syntax)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Method do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Method.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Method do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
