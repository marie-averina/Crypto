//
//  CryptoApp.swift
//  Crypto
//
//  Created by Мария Аверина on 15.09.2023.
//

import SwiftUI

@main
struct CryptoApp: App {
    @StateObject private var vm = HomeViewModel()
    @State private var showLaunchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                
                ZStack {
                    NavigationView {
                        HomeView()
                            .toolbar(.hidden, for: .navigationBar)
                    }
                    .environmentObject(vm)
                    
                    ZStack {
                        if showLaunchView {
                            LaunchView(showLaunchView: $showLaunchView)
                                .transition(.move(edge: .leading))
                        }
                    }
                    .zIndex(2.0)
                }
            }
        }
    }
}
