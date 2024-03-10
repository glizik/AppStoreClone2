//
//  GamesView.swift
//  AppStoreClone
//
//

import SwiftUI

struct GamesView: View {
    @Binding var navPath: NavigationPath//[Int]
    
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack {
                Text("Games")
                Button("Navigate Games Screen 2") {
                    navPath.append(23)
                }
            }
            .navigationDestination(for: Int.self) { numb in
                Text("Games Number screen \(numb)")
            }
        }
    }
}

#Preview {
    GamesView(navPath: .constant(NavigationPath()))
}
