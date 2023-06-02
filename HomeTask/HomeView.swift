//
//  HomeView.swift
//  HomeTask
//
//  Created by Oyatullo Koraboev on 02/06/23.
//

import SwiftUI
let users = [Users(name: "Will Smith", image: "user1",  description:                "quis nostrud exercitation ullamco laboris"),
             Users(name: "Jaden Smith", image: "user2", description: "quis nostrud exercitation "),
             Users(name: "Bruce Smith", image: "user3", description: "quis nostrud exercitation ullamco laboris"),
             Users(name: "Jaden Smith", image: "user1", description: "quis nostrud exercitation ullamco laboris"),
             Users(name: "Bruce Smith", image: "user2", description: "quis nostrud exercitation "),
             Users(name: "Jaden Smith", image: "user1", description: "quis nostrud exercitation ullamco laboris"),
             Users(name: "Will Smith", image: "user2", description: "quis nostrud exercitation "),
             Users(name: "Bruce Smith", image: "user3", description: "quis nostrud exercitation "),
             Users(name: "Jaden Smith", image: "user2", description: "quis nostrud exercitation ullamco laboris "),
             Users(name: "Bruce Smith", image: "user1", description: "quis nostrud exercitation ")]
             
             


struct HomeView: View {
    var body: some View {
        
        VStack {
            
            ScrollView {
                ForEach(users,id: \.self) { user in
                    VStack{
                            HStack{
                                Image(user.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 66,height: 66)
                                    .cornerRadius(33)
                                VStack(alignment: .leading) {
                                    Text(user.name)
                                        .font(.system(size: 20))
                                        .bold()
                                        .fontDesign(.rounded)
                                    Text(user.description)
                                        .font(.system(size: 14))
                                }
                                Spacer()
                                Button {
                                    print("exclamation Mark Pressed")
                                } label: {
                                    Image(systemName: "exclamationmark.circle")
                                        .padding()
                                        .foregroundColor(.black)
                                }
                            }
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .padding(.horizontal)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                    }
                }
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
