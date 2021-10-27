class GraphqlTestSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  def self.object_from_id(node_id, ctx)
    raise "this should not be called in this case as we are attempting to add a custom load method for the argument"
  end
end
