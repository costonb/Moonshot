//
//  MissionDivider.swift
//  Moonshot
//
//  Created by Brandon Coston on 3/12/23.
//

import SwiftUI

struct MissionDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct MissionDivider_Previews: PreviewProvider {
    static var previews: some View {
        MissionDivider()
    }
}
