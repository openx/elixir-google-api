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

defmodule GoogleApi.Firebase.V1beta1.Model.StatusProto do
  @moduledoc """
  Wire-format for a Status object

  ## Attributes

  *   `canonicalCode` (*type:* `integer()`, *default:* `nil`) - The canonical error code (see codes.proto) that most closely
      corresponds to this status. May be missing.
  *   `code` (*type:* `integer()`, *default:* `nil`) - Numeric code drawn from the space specified below. Often, this is the
      canonical error space, and code is drawn from google3/util/task/codes.proto
  *   `message` (*type:* `String.t`, *default:* `nil`) - Detail message
  *   `messageSet` (*type:* `GoogleApi.Firebase.V1beta1.Model.MessageSet.t`, *default:* `nil`) - message_set associates an arbitrary proto message with the status.
  *   `payload` (*type:* `GoogleApi.Firebase.V1beta1.Model.TypedMessage.t`, *default:* `nil`) - DEPRECATED.

      This field was deprecated in 2011 with cl/20297133.  Java support
      for the field was moved to a proto1 backward compatibility class
      in April 2017 with cl/142615857 and cl/154123203.  There was
      never support for this field in Go; if set Go will ignore it.
      C++ stopped setting StatusProto::payload in October 2015 with cl/106347055,
      and stopped reading the field in October 2017 with cl/173324114.

      In general, newly written code should use only "message_set". If you need
      to maintain backward compatibility with code written before 3/25/2011, do
      the following:

      - During the transition period, either (1) set both "payload" and
        "message_set", or (2) write the consumer of StatusProto so that it can
        forge a MessageSet object from "payload" if "message_set" is missing.
        The C++ util::Status implementation does (2).

      - Once all the consumers are converted to accept "message_set", then
        remove the use of "payload" on the producer side.
  *   `space` (*type:* `String.t`, *default:* `nil`) - The following are usually only present when code != 0
      Space to which this status belongs
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalCode => integer(),
          :code => integer(),
          :message => String.t(),
          :messageSet => GoogleApi.Firebase.V1beta1.Model.MessageSet.t(),
          :payload => GoogleApi.Firebase.V1beta1.Model.TypedMessage.t(),
          :space => String.t()
        }

  field(:canonicalCode)
  field(:code)
  field(:message)
  field(:messageSet, as: GoogleApi.Firebase.V1beta1.Model.MessageSet)
  field(:payload, as: GoogleApi.Firebase.V1beta1.Model.TypedMessage)
  field(:space)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.StatusProto do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.StatusProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.StatusProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
