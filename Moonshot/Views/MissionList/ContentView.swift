//
//  ContentView.swift
//  Moonshot
//
//  Created by Brandon Coston on 3/12/23.
//

import SwiftUI


struct ContentView: View {
    @State private var isGridView = false
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            if isGridView {
                MissionGridView(missions: missions, astronauts: astronauts)
                    .navigationTitle("Moonshot")
                    .background(.darkBackground)
                    .preferredColorScheme(.dark)
                    .toolbar {
                        Button {
                            isGridView.toggle()
                        } label: {
                            Image(systemName: "list.triangle")
                        }
                        
                    }
            } else {
                MissionListView(missions: missions, astronauts: astronauts)
                    .navigationTitle("Moonshot")
                    .background(.darkBackground)
                    .preferredColorScheme(.dark)
                    .toolbar {
                        Button {
                            isGridView.toggle()
                        } label: {
                            Image(systemName: "square.grid.2x2.fill")
                        }
                        
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
