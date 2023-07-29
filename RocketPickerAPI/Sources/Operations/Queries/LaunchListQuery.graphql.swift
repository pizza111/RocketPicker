// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class LaunchListQuery: GraphQLQuery {
  public static let operationName: String = "LaunchList"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query LaunchList { launches { __typename launches { __typename id site mission { __typename name } rocket { __typename id name type } isBooked } } }"#
    ))

  public init() {}

  public struct Data: RocketPickerAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { RocketPickerAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("launches", Launches.self),
    ] }

    public var launches: Launches { __data["launches"] }

    /// Launches
    ///
    /// Parent Type: `LaunchConnection`
    public struct Launches: RocketPickerAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { RocketPickerAPI.Objects.LaunchConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("launches", [Launch?].self),
      ] }

      public var launches: [Launch?] { __data["launches"] }

      /// Launches.Launch
      ///
      /// Parent Type: `Launch`
      public struct Launch: RocketPickerAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { RocketPickerAPI.Objects.Launch }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", RocketPickerAPI.ID.self),
          .field("site", String?.self),
          .field("mission", Mission?.self),
          .field("rocket", Rocket?.self),
          .field("isBooked", Bool.self),
        ] }

        public var id: RocketPickerAPI.ID { __data["id"] }
        public var site: String? { __data["site"] }
        public var mission: Mission? { __data["mission"] }
        public var rocket: Rocket? { __data["rocket"] }
        public var isBooked: Bool { __data["isBooked"] }

        /// Launches.Launch.Mission
        ///
        /// Parent Type: `Mission`
        public struct Mission: RocketPickerAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { RocketPickerAPI.Objects.Mission }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String?.self),
          ] }

          public var name: String? { __data["name"] }
        }

        /// Launches.Launch.Rocket
        ///
        /// Parent Type: `Rocket`
        public struct Rocket: RocketPickerAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { RocketPickerAPI.Objects.Rocket }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", RocketPickerAPI.ID.self),
            .field("name", String?.self),
            .field("type", String?.self),
          ] }

          public var id: RocketPickerAPI.ID { __data["id"] }
          public var name: String? { __data["name"] }
          public var type: String? { __data["type"] }
        }
      }
    }
  }
}
