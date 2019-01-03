class Task < ApplicationRecord
  belongs_to :category

  validates :description, presence: true

  attr_reader :description, :status

  def initialize(description, status = false)
    @description = description
    @status = status
  end

end
