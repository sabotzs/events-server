//
//  Event.swift
//  events-server
//
//  Created by Georgi Kuklev on 25.08.24.
//

import Vapor
import Fluent

final class Event: Model, @unchecked Sendable {
    static let schema: String = "events"

    @ID
    var id: UUID?

    init() { }
}
