//
//  History.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 28/5/2568 BE.
//
import Foundation
import SwiftData


@Model
class History: Identifiable {
    var id: UUID
    var date: Date
    var attendees: [Attendee]
    var dailyScrum: DailyScrum?


    init(id: UUID = UUID(), date: Date = Date(), attendees: [Attendee]) {
        self.id = id
        self.date = date
        self.attendees = attendees
    }
}
