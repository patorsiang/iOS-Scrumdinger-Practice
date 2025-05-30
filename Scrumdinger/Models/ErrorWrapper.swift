//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 30/5/2568 BE.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
