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

    @Field(key: FieldKeys.name)
    var name: String

    @Field(key: FieldKeys.place)
    var place: String

    @Field(key: FieldKeys.startTime)
    var startTime: Date

    @Field(key: FieldKeys.endTime)
    var endTime: Date

    init() { }

    init(
        id: UUID? = nil,
        name: String,
        place: String,
        startTime: Date,
        endTime: Date
    ) {
        self.id = id
        self.name = name
        self.place = place
        self.startTime = startTime
        self.endTime = endTime
    }
}

extension Event {
    var dto: EventDTO {
        EventDTO(
            id: id,
            name: name,
            place: place,
            startTime: startTime,
            endTime: endTime
        )
    }
}
