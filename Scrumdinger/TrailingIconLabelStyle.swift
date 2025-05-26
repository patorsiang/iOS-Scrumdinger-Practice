//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 24/5/2568 BE.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
