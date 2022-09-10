//
//  HomeScreenView.swift
//  shopping
//
//  Created by Aman Negi on 10/09/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack {
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
            }.font(.title3)
            
            Text("Hey")
                .font(.title)
                .bold()
            
            Text("Find fresh fruits that you want")
                .font(.body)
            
            // search bar - [START]
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.4))
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search fresh fruits")
                        Spacer()
                    }.foregroundColor(.black.opacity(0.5))
                        .padding()
                )
                .frame(width: .infinity, height: 50, alignment: .center)
            // search bar - [END]
            
            Text("Top Selling")
                .font(.title)
                .bold()
            TopSellingView()
            
            Spacer()
            
            Text("Near You")
                .font(.title)
                .bold()
            NearYouView()
            
        }.navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .padding()
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
