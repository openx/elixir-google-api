# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.PubSub.V1.Model.Subscription do
  @moduledoc """
  A subscription resource.

  ## Attributes

  - ackDeadlineSeconds (integer()): The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscriber to acknowledge receipt before resending the message. In the interval after the message is delivered and before it is acknowledged, it is considered to be &lt;i&gt;outstanding&lt;/i&gt;. During that time period, the message will not be redelivered (on a best-effort basis).  For pull subscriptions, this value is used as the initial value for the ack deadline. To override this value for a given message, call &#x60;ModifyAckDeadline&#x60; with the corresponding &#x60;ack_id&#x60; if using non-streaming pull or send the &#x60;ack_id&#x60; in a &#x60;StreamingModifyAckDeadlineRequest&#x60; if using streaming pull. The minimum custom deadline you can specify is 10 seconds. The maximum custom deadline you can specify is 600 seconds (10 minutes). If this parameter is 0, a default value of 10 seconds is used.  For push delivery, this value is also used to set the request timeout for the call to the push endpoint.  If the subscriber never acknowledges the message, the Pub/Sub system will eventually redeliver the message. Defaults to: `null`.
  - expirationPolicy (ExpirationPolicy): A policy that specifies the conditions for this subscription&#39;s expiration. A subscription is considered active as long as any connected subscriber is successfully consuming messages from the subscription or is issuing operations on the subscription. If &#x60;expiration_policy&#x60; is not set, a *default policy* with &#x60;ttl&#x60; of 31 days will be used. The minimum allowed value for &#x60;expiration_policy.ttl&#x60; is 1 day. &lt;b&gt;BETA:&lt;/b&gt; This feature is part of a beta release. This API might be changed in backward-incompatible ways and is not recommended for production use. It is not subject to any SLA or deprecation policy. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): See &lt;a href&#x3D;\&quot;https://cloud.google.com/pubsub/docs/labels\&quot;&gt; Creating and managing labels&lt;/a&gt;. Defaults to: `null`.
  - messageRetentionDuration (String.t): How long to retain unacknowledged messages in the subscription&#39;s backlog, from the moment a message is published. If &#x60;retain_acked_messages&#x60; is true, then this also configures the retention of acknowledged messages, and thus configures how far back in time a &#x60;Seek&#x60; can be done. Defaults to 7 days. Cannot be more than 7 days or less than 10 minutes. Defaults to: `null`.
  - name (String.t): The name of the subscription. It must have the format &#x60;\&quot;projects/{project}/subscriptions/{subscription}\&quot;&#x60;. &#x60;{subscription}&#x60; must start with a letter, and contain only letters (&#x60;[A-Za-z]&#x60;), numbers (&#x60;[0-9]&#x60;), dashes (&#x60;-&#x60;), underscores (&#x60;_&#x60;), periods (&#x60;.&#x60;), tildes (&#x60;~&#x60;), plus (&#x60;+&#x60;) or percent signs (&#x60;%&#x60;). It must be between 3 and 255 characters in length, and it must not start with &#x60;\&quot;goog\&quot;&#x60;. Defaults to: `null`.
  - pushConfig (PushConfig): If push delivery is used with this subscription, this field is used to configure it. An empty &#x60;pushConfig&#x60; signifies that the subscriber will pull and ack messages using API methods. Defaults to: `null`.
  - retainAckedMessages (boolean()): Indicates whether to retain acknowledged messages. If true, then messages are not expunged from the subscription&#39;s backlog, even if they are acknowledged, until they fall out of the &#x60;message_retention_duration&#x60; window. This must be true if you would like to &lt;a href&#x3D;\&quot;https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time\&quot;&gt; Seek to a timestamp&lt;/a&gt;. Defaults to: `null`.
  - topic (String.t): The name of the topic from which this subscription is receiving messages. Format is &#x60;projects/{project}/topics/{topic}&#x60;. The value of this field will be &#x60;_deleted-topic_&#x60; if the topic has been deleted. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ackDeadlineSeconds => any(),
          :expirationPolicy => GoogleApi.PubSub.V1.Model.ExpirationPolicy.t(),
          :labels => map(),
          :messageRetentionDuration => any(),
          :name => any(),
          :pushConfig => GoogleApi.PubSub.V1.Model.PushConfig.t(),
          :retainAckedMessages => any(),
          :topic => any()
        }

  field(:ackDeadlineSeconds)
  field(:expirationPolicy, as: GoogleApi.PubSub.V1.Model.ExpirationPolicy)
  field(:labels, type: :map)
  field(:messageRetentionDuration)
  field(:name)
  field(:pushConfig, as: GoogleApi.PubSub.V1.Model.PushConfig)
  field(:retainAckedMessages)
  field(:topic)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.Subscription do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.Subscription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.Subscription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
