//
//  MissionListItemView.swift
//  Moonshot
//
//  Created by Brandon Coston on 3/12/23.
//

import SwiftUI

struct MissionListItemView: View {
    let mission: Mission
    var body: some View {
        HStack {
            Image(mission.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            VStack {
                Text(mission.displayName)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(mission.formattedLaunchDate)
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.5))
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
        }
        .background(.lightBackground)
    }
}

struct MissionListItemView_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MissionListItemView(mission: missions[0])
            .preferredColorScheme(.dark)
    }
}
