// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

nonisolated public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == RocketReserverAPI.SchemaMetadata {}

nonisolated public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == RocketReserverAPI.SchemaMetadata {}

nonisolated public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == RocketReserverAPI.SchemaMetadata {}

nonisolated public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == RocketReserverAPI.SchemaMetadata {}

nonisolated public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: any ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  private static let objectTypeMap: [String: ApolloAPI.Object] = [
    "Launch": RocketReserverAPI.Objects.Launch,
    "LaunchConnection": RocketReserverAPI.Objects.LaunchConnection,
    "Mission": RocketReserverAPI.Objects.Mission,
    "Mutation": RocketReserverAPI.Objects.Mutation,
    "Query": RocketReserverAPI.Objects.Query,
    "Rocket": RocketReserverAPI.Objects.Rocket,
    "TripUpdateResponse": RocketReserverAPI.Objects.TripUpdateResponse,
    "User": RocketReserverAPI.Objects.User
  ]

  @_spi(Execution) public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    objectTypeMap[typename]
  }
}

nonisolated public enum Objects {}
nonisolated public enum Interfaces {}
nonisolated public enum Unions {}
