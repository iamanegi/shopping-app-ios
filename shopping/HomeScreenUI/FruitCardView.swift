//
//  FruitCardView.swift
//  shopping
//
//  Created by Aman Negi on 10/09/22.
//

import SwiftUI

let dummyFruit = FruitModel(id: 1, title: .apple, image: "apple", price: "Rs. 120", color: "1")

struct FruitCardView: View {
    let fruit: FruitModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title.rawValue)
                    .bold()
                    .font(.title3)
                    .foregroundColor(.black)
                Text(fruit.price)
                    .font(.title3)
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }.padding()
                .frame(width: 175, height: 150, alignment: .center)
                .background(Color(fruit.color))
                .cornerRadius(30)
                .padding()
            
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .offset(y: 60)
        }.frame(width: 175, height: 250, alignment: .center)
            .shadow(color: .gray, radius: 5, x: 5, y: 5)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: dummyFruit)
    }
}
