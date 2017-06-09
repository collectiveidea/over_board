Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  # Used by Relay to lookup objects by UUID:
  field :node, GraphQL::Relay::Node.field

  # Fetches a list of objects given a list of IDs
  field :nodes, GraphQL::Relay::Node.plural_field

  field :viewer do
    type Types::UserType
    resolve ->(obj, args, ctx) { Database.get_user(1) }
  end
end
