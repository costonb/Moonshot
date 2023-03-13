//
//  Mission.swift
//  Moonshot
//
//  Created by Brandon Coston on 3/12/23.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    struct CrewMember {
        let role: String
        let astronaut: Astronaut
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
    var formattedLaunchDateLong: String {
        launchDate?.formatted(date: .long, time: .omitted) ?? "N/A"
    }
    
    func mapCrewMembers(from astronautMap: [String: Astronaut]) -> [CrewMember] {
        crew.map({ member in
        if let astronaut = astronautMap[member.name] {
            return Mission.CrewMember(role: member.role, astronaut: astronaut)
        } else {
            fatalError("Missing \(member.name)")
        }
    })
    }
}
