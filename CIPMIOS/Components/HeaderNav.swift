//
//  HeaderNav.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 4/12/23.
//

import SwiftUI

struct HeaderNav: View {
    var location: String

    var body: some View {
        HStack {
            Spacer()

            Text(location)

            Spacer()
        }
        .bold()
        .font(.system(size: 22))
        .frame(maxWidth: .infinity, maxHeight: 200)
        .padding(.horizontal, 20)

        VStack {
            Color(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: 1)
        .padding(.top, 15)
    }
}
