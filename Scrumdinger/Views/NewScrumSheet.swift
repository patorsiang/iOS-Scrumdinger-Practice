//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 28/5/2568 BE.
//

import SwiftUI


struct NewScrumSheet: View {


    var body: some View {
        NavigationStack {
            DetailEditView(scrum: nil)
        }
    }
}


#Preview {
    NewScrumSheet()
}
