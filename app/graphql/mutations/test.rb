module Mutations
  class Test < BaseMutation
    pundit_policy_class ApplicationPolicy
    pundit_role :allow

    argument :something_ids, [ID],
      loads: [Something],
      required: false,
      pundit_policy_class: SomethingPolicy,
      pundit_role: :read

    field :success, Boolean, null: false

    def load_somethings(ids)
      ids.map{ |_| Something.new }
    end

    def resolve(**args)
      { success: true }
    end
  end
end
