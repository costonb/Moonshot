//
//  ContentView.swift
//  Moonshot
//
//  Created by Brandon Coston on 3/12/23.
//

import SwiftUI


struct ContentView: View {
    @State private var isGridView = true
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            Group {
                if isGridView {
                    MissionGridView(missions: missions, astronauts: astronauts)
                } else {
                    MissionListView(missions: missions, astronauts: astronauts)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    isGridView.toggle()
                } label: {
                    Image(systemName: isGridView ? "list.triangle" : "square.grid.2x2.fill")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
