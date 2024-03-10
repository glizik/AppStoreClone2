//
//  DiscoverView.swift
//  AppStoreClone
//
//

import SwiftUI

struct DiscoverView: View {
    @Binding var navPath: NavigationPath//[String]
    
    var body: some View {
        NavigationStack(path: $navPath) {            
            VStack {
                Text("Screen discovery")
                Button("Navigate discovery Screen 2") {
                    navPath.append("Nav discovery Screen2Text")
                }
            }
            .navigationDestination(for: String.self) { text in
                Text(text)
            }
        }
    }
}

#Preview {
    DiscoverView(navPath: .constant(NavigationPath()))
}
