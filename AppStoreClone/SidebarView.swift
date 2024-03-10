//
//  SidebarView.swift
//  AppStoreClone
//
//

import SwiftUI

struct SidebarView: View {
    @Binding var menuSelected: SideMenu
    
    var body: some View {
        List(selection: $menuSelected) {
            ForEach(SideMenu.allCases) { item in
                Label(item.id, systemImage: item.iconName)
                    .tag(item)
            }
        }
    }
}

#Preview {
    SidebarView(menuSelected: .constant(.development))
}
