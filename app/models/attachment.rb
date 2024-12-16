class Attachment < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_one_attached :file

  # Validation pour s'assurer que le format du fichier est valide
  # validate :file_format
  # validates :file, presence: true


  # Validation pour s'assurer que le format du fichier est valide
  # validates :name, presence: true
  # validates :format, presence: true, inclusion: { in: %w[png jpg pdf txt], message: "%{value} is not a valid format" }
  # before_save :log_attachment

  private


def log_attachment
  Rails.logger.debug "Saving attachment for project ##{project_id}, user ##{user_id}, file attached? #{file.attached?}"
end

  def file_format
    return unless file.attached?

    valid_formats = %w[image/png image/jpeg application/pdf text/plain]
    unless valid_formats.include?(file.content_type)
      errors.add(:file, "must be a PNG, JPEG, PDF, or TXT file")
    end
  end
end
