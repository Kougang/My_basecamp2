class Project < ApplicationRecord
    has_many :user_projects
    has_many :users, through: :user_projects
    has_many :attachments, dependent: :destroy
    has_many :threads, class_name: "TThread", dependent: :destroy
end


