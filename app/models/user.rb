require 'ostruct'

class User
  delegate :email_address, to: '@opts'

  def initialize(opts = nil)
    @opts = OpenStruct.new(opts || {})
  end

  def persisted?
    false
  end
end
