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

defmodule GoogleApi.Classroom.V1.Model.StudentSubmission do
  @moduledoc """
  Student submission for course work.

  StudentSubmission items are generated when a CourseWork item is created.

  StudentSubmissions that have never been accessed (i.e. with `state` = NEW)
  may not have a creation time or update time.

  ## Attributes

  *   `alternateLink` (*type:* `String.t`, *default:* `nil`) - Absolute link to the submission in the Classroom web UI.

      Read-only.
  *   `assignedGrade` (*type:* `float()`, *default:* `nil`) - Optional grade. If unset, no grade was set.
      This value must be non-negative. Decimal (i.e. non-integer) values are
      allowed, but will be rounded to two decimal places.

      This may be modified only by course teachers.
  *   `assignmentSubmission` (*type:* `GoogleApi.Classroom.V1.Model.AssignmentSubmission.t`, *default:* `nil`) - Submission content when course_work_type is ASSIGNMENT.

      Students can modify this content using
      google.classroom.Work.ModifyAttachments.
  *   `associatedWithDeveloper` (*type:* `boolean()`, *default:* `nil`) - Whether this student submission is associated with the Developer Console
      project making the request.

      See google.classroom.Work.CreateCourseWork for more
      details.

      Read-only.
  *   `courseId` (*type:* `String.t`, *default:* `nil`) - Identifier of the course.

      Read-only.
  *   `courseWorkId` (*type:* `String.t`, *default:* `nil`) - Identifier for the course work this corresponds to.

      Read-only.
  *   `courseWorkType` (*type:* `String.t`, *default:* `nil`) - Type of course work this submission is for.

      Read-only.
  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation time of this submission.
      This may be unset if the student has not accessed this item.

      Read-only.
  *   `draftGrade` (*type:* `float()`, *default:* `nil`) - Optional pending grade. If unset, no grade was set.
      This value must be non-negative. Decimal (i.e. non-integer) values are
      allowed, but will be rounded to two decimal places.

      This is only visible to and modifiable by course teachers.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Classroom-assigned Identifier for the student submission.
      This is unique among submissions for the relevant course work.

      Read-only.
  *   `late` (*type:* `boolean()`, *default:* `nil`) - Whether this submission is late.

      Read-only.
  *   `multipleChoiceSubmission` (*type:* `GoogleApi.Classroom.V1.Model.MultipleChoiceSubmission.t`, *default:* `nil`) - Submission content when course_work_type is MULTIPLE_CHOICE_QUESTION.
  *   `shortAnswerSubmission` (*type:* `GoogleApi.Classroom.V1.Model.ShortAnswerSubmission.t`, *default:* `nil`) - Submission content when course_work_type is SHORT_ANSWER_QUESTION.
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of this submission.

      Read-only.
  *   `submissionHistory` (*type:* `list(GoogleApi.Classroom.V1.Model.SubmissionHistory.t)`, *default:* `nil`) - The history of the submission (includes state and grade histories).

      Read-only.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Last update time of this submission.
      This may be unset if the student has not accessed this item.

      Read-only.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Identifier for the student that owns this submission.

      Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateLink => String.t(),
          :assignedGrade => float(),
          :assignmentSubmission => GoogleApi.Classroom.V1.Model.AssignmentSubmission.t(),
          :associatedWithDeveloper => boolean(),
          :courseId => String.t(),
          :courseWorkId => String.t(),
          :courseWorkType => String.t(),
          :creationTime => DateTime.t(),
          :draftGrade => float(),
          :id => String.t(),
          :late => boolean(),
          :multipleChoiceSubmission => GoogleApi.Classroom.V1.Model.MultipleChoiceSubmission.t(),
          :shortAnswerSubmission => GoogleApi.Classroom.V1.Model.ShortAnswerSubmission.t(),
          :state => String.t(),
          :submissionHistory => list(GoogleApi.Classroom.V1.Model.SubmissionHistory.t()),
          :updateTime => DateTime.t(),
          :userId => String.t()
        }

  field(:alternateLink)
  field(:assignedGrade)
  field(:assignmentSubmission, as: GoogleApi.Classroom.V1.Model.AssignmentSubmission)
  field(:associatedWithDeveloper)
  field(:courseId)
  field(:courseWorkId)
  field(:courseWorkType)
  field(:creationTime, as: DateTime)
  field(:draftGrade)
  field(:id)
  field(:late)
  field(:multipleChoiceSubmission, as: GoogleApi.Classroom.V1.Model.MultipleChoiceSubmission)
  field(:shortAnswerSubmission, as: GoogleApi.Classroom.V1.Model.ShortAnswerSubmission)
  field(:state)
  field(:submissionHistory, as: GoogleApi.Classroom.V1.Model.SubmissionHistory, type: :list)
  field(:updateTime, as: DateTime)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.StudentSubmission do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.StudentSubmission.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.StudentSubmission do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
