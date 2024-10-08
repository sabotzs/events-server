//
//  EventDTO.swift
//  events-server
//
//  Created by Georgi Kuklev on 25.08.24.
//

import Vapor
import Fluent

struct EventDTO: Content {
    var id: UUID?
    var name: String
    var place: String
    var startTime: Date
    var endTime: Date
}
