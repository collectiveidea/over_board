Types::FeatureType = GraphQL::ObjectType.define do
  name "Feature"
  global_id_field :id

  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
  field :url, !types.String

  implements GraphQL::Relay::Node.interface
end
