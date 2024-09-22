//
//  Event+FieldKeys.swift
//  events-server
//
//  Created by Georgi Kuklev on 25.08.24.
//

import Vapor
import Fluent

extension Event {
    struct FieldKeys {
        static var name: FieldKey { "name" }
        static var place: FieldKey { "place" }
        static var startTime: FieldKey { "start_time" }
        static var endTime: FieldKey { "end_time" }
    }
}
