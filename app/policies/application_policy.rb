class ApplicationPolicy
  attr_accessor :user, :record
  def initialize(user, record)
    @user = user
    @record = record
  end

  def allow?
    true
  end

  def deny?
    false
  end
end
