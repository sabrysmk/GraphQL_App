//  This file was automatically generated and should not be edited.

import Apollo

public final class CreateAttendeeMutation: GraphQLMutation {
  public static let operationDefinition =
    "mutation CreateAttendee($name: String!) {" +
    "  createAttendee(name: $name) {" +
    "    __typename" +
    "    id" +
    "    name" +
    "  }" +
    "}"

  public let name: String

  public init(name: String) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLMappable {
    public let createAttendee: CreateAttendee?

    public init(reader: GraphQLResultReader) throws {
      createAttendee = try reader.optionalValue(for: Field(responseName: "createAttendee", arguments: ["name": reader.variables["name"]]))
    }

    public struct CreateAttendee: GraphQLMappable {
      public let __typename: String
      public let id: GraphQLID
      public let name: String

      public init(reader: GraphQLResultReader) throws {
        __typename = try reader.value(for: Field(responseName: "__typename"))
        id = try reader.value(for: Field(responseName: "id"))
        name = try reader.value(for: Field(responseName: "name"))
      }
    }
  }
}