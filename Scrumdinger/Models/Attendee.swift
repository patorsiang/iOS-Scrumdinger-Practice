//
//  Attendee.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 29/5/2568 BE.
//
import Foundation
import SwiftData


@Model
class Attendee: Identifiable {
    var id: UUID
    var name: String
    var dailyScrum: DailyScrum?


    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}
