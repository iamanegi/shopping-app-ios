//
//  DetailsView.swift
//  shopping
//
//  Created by Aman Negi on 10/09/22.
//

import SwiftUI

struct DetailsView: View {
    
    @State var fruitName: Fruits
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.top)
                .clipShape(
                    RoundedCornerShape.init(corner: [.bottomLeft, .bottomRight], radius: 50)
                )
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .shadow(color: .gray, radius: 5, y: 5)
                .overlay(
                    Image(fruitName.rawValue)
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                        .offset(y: 50)
                )
            
            Spacer()
            
            Text("\(fruitName.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.title)
                .padding(.horizontal)
                .textCase(.uppercase)
            
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            
            HStack {
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.15)
                    .overlay(
                        Image(systemName: "hourglass")
                    )
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Delivery Time")
                    Text("25 - 30 Min")
                }
                
            }.padding(.horizontal)
            
            HStack {
                
                Text("Rs. 120")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                
                Spacer()
                
                CounterView()
                
            }
            
            Image("bg")
                .resizable()
                .frame(width: .infinity, height: 50, alignment: .center)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Add to cart")
                        .font(.title3)
                        .fontWeight(.medium)
                )
                .padding(.horizontal)
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fruitName: .apple)
    }
}

struct RoundedCornerShape: Shape {
    let corner: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect, byRoundingCorners: corner,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        
        return Path(path.cgPath)
    }
}

struct CounterView: View {
    @State var count = 0
    
    var body: some View {
        HStack(spacing: 25) {
            Button {
                if count < 10 {
                    count += 1
                }
            } label: {
                Image(systemName: "plus")
            }
            Text("\(count)")
                .font(.title)
            Button {
                if count > 0 {
                    count -= 1
                }
            } label: {
                Image(systemName: "minus")
            }

        }.foregroundColor(.black)
            .frame(width: 130, height: 50)
            .background(Color("bgColor").opacity(0.2))
            .cornerRadius(12)
            .padding(.horizontal)
    }
}
