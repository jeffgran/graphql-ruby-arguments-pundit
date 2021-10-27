require 'test_helper'

class GraphqlMutationTest < ActionDispatch::IntegrationTest
  test "top level" do
    query_string = <<-GRAPHQL
      mutation test($something_ids: [ID!]){
        mutation_result: test(input: {somethingIds: $something_ids}) {
          success
        }
      }
    GRAPHQL

    result = GraphqlTestSchema.execute(query_string, variables: { something_ids: ["some_id", "other_id"]})
pp result
    assert result.to_h["data"]["mutation_result"]["success"] == true
  end
end
