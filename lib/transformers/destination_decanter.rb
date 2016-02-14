module Transformers
  class DestinationTransformer < ATC::Form
    input :city
    input :state
    input :arrival_date, :date, parse_format: '%m/%d/%Y'
    input :departure_date, :date, parse_format: '%m/%d/%Y'
  end
end
