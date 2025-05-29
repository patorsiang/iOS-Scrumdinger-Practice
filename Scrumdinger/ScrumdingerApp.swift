//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 23/5/2568 BE.
//

import SwiftUI
import SwiftData


@main
struct ScrumdingerApp: App {


    var body: some Scene {
        WindowGroup {
            ScrumsView()
        }
        .modelContainer(for: DailyScrum.self)
    }
}
