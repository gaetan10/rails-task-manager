class ManagerTask < ApplicationRecord
  validates :name, presence: true
  validates :due_date, presence: true
end
