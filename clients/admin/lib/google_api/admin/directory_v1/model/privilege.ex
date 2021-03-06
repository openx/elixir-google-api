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

defmodule GoogleApi.Admin.Directory_v1.Model.Privilege do
  @moduledoc """
  JSON template for privilege resource in Directory API.

  ## Attributes

  *   `childPrivileges` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.Privilege.t)`, *default:* `nil`) - A list of child privileges. Privileges for a service form a tree. Each privilege can have a list of child privileges; this list is empty for a leaf privilege.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `isOuScopable` (*type:* `boolean()`, *default:* `nil`) - If the privilege can be restricted to an organization unit.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#privilege`) - The type of the API resource. This is always admin#directory#privilege.
  *   `privilegeName` (*type:* `String.t`, *default:* `nil`) - The name of the privilege.
  *   `serviceId` (*type:* `String.t`, *default:* `nil`) - The obfuscated ID of the service this privilege is for. This value is returned with Privileges.list().
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - The name of the service this privilege is for.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childPrivileges => list(GoogleApi.Admin.Directory_v1.Model.Privilege.t()),
          :etag => String.t(),
          :isOuScopable => boolean(),
          :kind => String.t(),
          :privilegeName => String.t(),
          :serviceId => String.t(),
          :serviceName => String.t()
        }

  field(:childPrivileges, as: GoogleApi.Admin.Directory_v1.Model.Privilege, type: :list)
  field(:etag)
  field(:isOuScopable)
  field(:kind)
  field(:privilegeName)
  field(:serviceId)
  field(:serviceName)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.Privilege do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.Privilege.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.Privilege do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
