class SomethingPolicy < ApplicationPolicy
  def read?
    # contrived example - I just want to check anything about the specific record,
    # for example ownership by the current user, or specific attributes that could
    # affect whether the user is authorized
    record.can_be_accessed_by_user?(user)
  end
end
