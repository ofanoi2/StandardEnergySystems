module ActiveRecord #:nodoc:
  # = Active Record \Serialization
  module Serialization

  	def as_json(options={})
  		attrs = super(options)
        attrs["meter_number"] = attrs["meter_number"].to_s
        attrs
   end
  end
end
