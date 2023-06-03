//
//  ContentView.swift
//  HomeTask
//
//  Created by Oyatullo Koraboev on 02/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing:33) {
                    HStack{
                        Image("avatar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 66,height: 66)
                            .cornerRadius(33)
                        VStack(alignment: .leading) {
                            Text("John Doe")
                                .font(.system(size: 20))
                                .bold()
                                .fontDesign(.rounded)
                            Text("30 лет")
                                .font(.system(size: 14))
                        }
                    }
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
                    StatsView()
                    Spacer()
                    
                    .navigationBarTitle(Text("Posts"), displayMode: .inline)
                        .toolbar {
                                ToolbarItem(placement: .navigationBarLeading) {
                                    Button {
                                        print("Leading Nav Button Pressed")
                                    } label: {
                                        Image(systemName: "gear")
                                            .foregroundColor(.black)
                                        }
                                    }
                                ToolbarItem(placement: .navigationBarTrailing) {
                                    Button {
                                        print("Leading Nav Button Pressed")
                                    } label: {
                                        Image(systemName: "plus.app")
                                            .foregroundColor(.black)
                                        }
                                    }
                    }
                }
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
