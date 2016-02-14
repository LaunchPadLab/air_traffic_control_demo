class Trip < ApplicationRecord
  has_many :destinations, inverse_of: :trip, dependent: :destroy
  accepts_nested_attributes_for :destinations, reject_if: proc { |attributes| attributes['city'].blank? }

  validates :start_date, :end_date, :name, presence: true

  include Decanter::Core
  input :name, :string
  input :start_date, :date, parse_format: '%m/%d/%Y'
  input :end_date, :date, parse_format: '%m/%d/%Y'
end
