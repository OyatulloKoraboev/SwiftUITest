//
//  ProfileView.swift
//  HomeTask
//
//  Created by Oyatullo Koraboev on 02/06/23.
//

import SwiftUI
let posts = [Posts(image: "post", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor              incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
             Posts(image: "post", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
             Posts(image: "post", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"),
             ]


struct StatsView: View {
    var body: some View {
        ZStack {
            VStack(alignment:.leading ,spacing: 20) {
                ExtractedView()
                Text("Post")
                    .font(.title2)
                    .bold()
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
                
                ForEach(posts, id: \.self  ){ post in
                    ZStack{
                        Color(hex: "#247B96")
                        VStack(spacing: 10){
                            Image(post.image)
                            HStack(alignment: .center,spacing: 30){
                                Button {
                                    print("heartButtonPressed")
                                } label: {
                                    Image(systemName: "heart")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25)
                                        .foregroundColor(.white)
                                        .fontWeight(.light)
                                }
                                Button {
                                    print("sendButtonPressed")
                                } label: {
                                    Image(systemName: "paperplane")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25)
                                        .foregroundColor(.white)
                                        .fontWeight(.light)
                                }
                                Button {
                                    print("ShareButtonPressed")
                                } label: {
                                    Image(systemName: "square.and.arrow.up")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20)
                                        .foregroundColor(.white)
                                        .fontWeight(.light)
                                }
                                Spacer()
                            }.frame(maxWidth: .infinity)
                                .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
                            Text(post.description)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            Spacer()
                            
                        }
                    }.frame(height: 410)
                        .cornerRadius(30)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                }
            }
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}


struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(width: 2,height: 55)
            .foregroundColor(Resources.Colors.divider)
    }
}

struct ExtractedView: View {
    var body: some View {
        ZStack {
            Color(hex: "#E9E9E9")
            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("109")
                        .font(.system(size: 18))
                        .bold()
                    Text("posts")
                        .font(.system(size: 16))
                        .fontDesign(.rounded)
                }
                .padding(.horizontal)
                
                CustomDivider()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    NavigationLink("534", destination: HomeView())
                        .foregroundColor(.black)
                        .font(.system(size: 18))
                        .bold()
                    
                    Text("follower")
                        .font(.system(size: 16))
                        .fontDesign(.rounded)
                }
                .padding(.horizontal)
                
                
                Spacer()
                
                CustomDivider()
                
                VStack(alignment: .leading) {
                    Text("26")
                        .font(.system(size: 18))
                        .bold()
                    Text("follows")
                        .font(.system(size: 16))
                        .fontDesign(.rounded)
                }
                .padding(.horizontal)
                Spacer()
                
            }
        }
        .frame(height: 80)
        .cornerRadius(40)
        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}
