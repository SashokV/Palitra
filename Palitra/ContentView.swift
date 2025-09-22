//
//  ContentView.swift
//  Palitra
//
//  Created by Verozub, Sasha (JD) on 22/09/2025.
//

import SwiftUI

enum Tab: Hashable {
    case home
    case search
    case profile
    case piece
}

struct ContentView: View {
    @State private var selectedTab: Tab = .home
    
    @State private var showingSettings = false
    @State private var showingArtPiece = false
    
    
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeView(
                showSettings: { showingSettings = true},
                showArtPiece: { showingArtPiece = true}
            )
            .tag(Tab.home)
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            SearchView()
                .tag(Tab.search)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
        .sheet(isPresented: $showingSettings) {
            SettingsView()
        }}}

#Preview {
    ContentView()
}
