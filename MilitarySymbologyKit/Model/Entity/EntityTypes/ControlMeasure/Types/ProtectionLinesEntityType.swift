//
//  ProtectionLinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum ProtectionLinesEntityType: String, CaseIterable, EntityType {
    case obstacleLine = "01"
    case antitankObstacles = "02"
    case wireObstacles = "03"
    case mineCluster = "04"
    case tripWire = "05"
    case lane = "06"
    case ferry = "07"
    case raftSite = "08"
    case fortifiedLine = "09"
    case fortifiedPosition = "10"
    
    var id: String { rawValue }
    
    var name: String {
        switch self {
        case .obstacleLine:
            String(localized: "Obstacle Line", comment: "Protection Lines Entity Type")
        case .antitankObstacles:
            String(localized: "Antitank Obstacles", comment: "Protection Lines Entity Type")
        case .wireObstacles:
            String(localized: "Wire Obstacles", comment: "Protection Lines Entity Type")
        case .mineCluster:
            String(localized: "Mine Cluster", comment: "Protection Lines Entity Type")
        case .tripWire:
            String(localized: "Trip Wire", comment: "Protection Lines Entity Type")
        case .lane:
            String(localized: "Lane", comment: "Protection Lines Entity Type")
        case .ferry:
            String(localized: "Ferry", comment: "Protection Lines Entity Type")
        case .raftSite:
            String(localized: "Raft Site", comment: "Protection Lines Entity Type")
        case .fortifiedLine:
            String(localized: "Fortified Line", comment: "Protection Lines Entity Type")
        case .fortifiedPosition:
            String(localized: "Fortified Position", comment: "Protection Lines Entity Type")
        }
    }
}
