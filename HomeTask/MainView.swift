//
//  MainView.swift
//  HomeTask
//
//  Created by Oyatullo Koraboev on 03/06/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
            .tabItem{
                Image(systemName:"square.text.square")
                Text("Posts")
            }
            Text("Messages")
            .tabItem{
                Image(systemName:"message")
                Text("Messages")
                
            }
            Text("Profile")
            .tabItem{
                Image(systemName:"person")
                Text("Profile")
                
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
