//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 23/5/2568 BE.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
