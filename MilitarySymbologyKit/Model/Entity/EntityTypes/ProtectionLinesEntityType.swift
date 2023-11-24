//
//  ProtectionLinesEntityType.swift
//  MilitarySymbologyKit
//
//  Created by Ярослав Шерстюк on 24/11/2023.
//

import Foundation

enum ProtectionLinesEntityType: String, CaseIterable, Identifiable {
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
            return String(localized: "Obstacle Line", comment: "Protection Lines Entity Type")
        case .antitankObstacles:
            return String(localized: "Antitank Obstacles", comment: "Protection Lines Entity Type")
        case .wireObstacles:
            return String(localized: "Wire Obstacles", comment: "Protection Lines Entity Type")
        case .mineCluster:
            return String(localized: "Mine Cluster", comment: "Protection Lines Entity Type")
        case .tripWire:
            return String(localized: "Trip Wire", comment: "Protection Lines Entity Type")
        case .lane:
            return String(localized: "Lane", comment: "Protection Lines Entity Type")
        case .ferry:
            return String(localized: "Ferry", comment: "Protection Lines Entity Type")
        case .raftSite:
            return String(localized: "Raft Site", comment: "Protection Lines Entity Type")
        case .fortifiedLine:
            return String(localized: "Fortified Line", comment: "Protection Lines Entity Type")
        case .fortifiedPosition:
            return String(localized: "Fortified Position", comment: "Protection Lines Entity Type")
        }
    }
}
