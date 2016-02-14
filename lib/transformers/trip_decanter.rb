module Transformers
  class TripDecanter
    include Decanter::Core

    input :name
    input :start_date, :date, parse_format: '%m/%d/%Y'
    input :end_date, :date, parse_format: '%m/%d/%Y'
    has_many :destinations
  end
end
