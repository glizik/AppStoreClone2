//
//  ContentView.swift
//  AppStoreClone
//
//

import SwiftUI

struct ContentView: View {
    @State var menuSelected: SideMenu = .discover
    /*@State var discoverNavPath = [String]()
    @State var developmentNavPath = NavigationPath()
    @State var gamesNavPath = [Int]()*/
    @State var discoverNavPath = NavigationPath()
    @State var developmentNavPath = NavigationPath()
    @State var gamesNavPath = NavigationPath()
    
    var body: some View {
        NavigationSplitView {
            SidebarView(menuSelected: $menuSelected)
        } detail: {
            switch menuSelected {
            case .discover:
                DiscoverView(navPath: $discoverNavPath)
            case .development:
                DevelopmentView(navPath: $developmentNavPath)
            case .games:
                GamesView(navPath: $gamesNavPath)
            }
        }
    }
}

#Preview {
    ContentView()
}
