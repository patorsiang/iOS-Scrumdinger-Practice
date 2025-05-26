//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 24/5/2568 BE.
//

import SwiftUI


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
  
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}


#Preview {
    @Previewable @State var scrums = DailyScrum.sampleData
        ScrumsView(scrums: $scrums)
}
