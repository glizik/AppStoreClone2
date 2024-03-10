//
//  SideMenu.swift
//  AppStoreClone
//
//

import Foundation

enum SideMenu: Identifiable, CaseIterable, Hashable {
    var id: String {
        switch self {
        case .discover:
            return "Discover"
        case .development:
            return "Development"
        case .games:
            return "Games"
        }
    }
    
    case discover, development, games
    
    static func == (lhs: SideMenu, rhs: SideMenu) -> Bool {
        return lhs.id == rhs.id
    }
    
    var iconName: String {
        switch self {
            case .discover:
                "checkmark.circle"
            case .development:
                "calendar"
            case .games:
                "folder"
        }
    }
}
