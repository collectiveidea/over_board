Types::UserType = GraphQL::ObjectType.define do
  name "User"
  global_id_field :id

  field :id, !types.ID
  field :username, !types.String
  field :website, !types.String

  connection :features, Types::FeatureType.connection_type do
    resolve ->(user, args, ctx) {
      Database.get_features
    }
  end

  implements GraphQL::Relay::Node.interface
end
