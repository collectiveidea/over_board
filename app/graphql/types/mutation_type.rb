Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"
  # Add the mutation's derived field to the mutation type
  field :addFeature, field: Mutations::AddFeatureMutation.field
end
