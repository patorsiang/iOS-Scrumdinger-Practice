//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Napatchol Thaipanich on 26/5/2568 BE.
//

import SwiftUI
import ThemeKit

struct ThemeView: View {
    let theme: Theme
    var body: some View {
        Text(theme.name)
            .frame(maxWidth: .infinity)
            .padding(4)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
