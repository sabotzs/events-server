//
//  CreateEvent.swift
//  events-server
//
//  Created by Georgi Kuklev on 25.08.24.
//

import Vapor
import Fluent

struct CreateEvent: AsyncMigration {
    let schema = Event.schema
    let keys = Event.FieldKeys.self

    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .id()
            .field(keys.name, .string)
            .field(keys.place, .string)
            .field(keys.startTime, .datetime)
            .field(keys.endTime, .datetime)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema(schema).delete()
    }
}
