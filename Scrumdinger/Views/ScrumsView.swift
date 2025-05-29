//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 24/5/2568 BE.
//

import SwiftUI
import SwiftData


struct ScrumsView: View {
    @Query(sort: \DailyScrum.title) private var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
        .sheet(isPresented: $isPresentingNewScrumView) {
            NewScrumSheet()
        }
    }
}


#Preview(traits: .dailyScrumsSampleData) {
    ScrumsView()
}
