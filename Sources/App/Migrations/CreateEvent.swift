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

    func prepare(on database: FluentKit.Database) async throws {
        try await database.schema(schema)
            .id()
            .create()
    }

    func revert(on database: FluentKit.Database) async throws {
        try await database.schema(schema).delete()
    }
}
