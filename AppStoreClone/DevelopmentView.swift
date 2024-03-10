//
//  DevelopmentView.swift
//  AppStoreClone
//
//

import SwiftUI

struct DevelopmentView: View {
    @Binding var navPath: NavigationPath
    
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack {
                Text("Development")
                NavigationLink("Press dev next screen") {
                    Text("Dev next Screen")
                }
            }
        }
    }
}

#Preview {
    DevelopmentView(navPath: .constant(NavigationPath()))
}
