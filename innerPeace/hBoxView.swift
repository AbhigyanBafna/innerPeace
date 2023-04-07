//
//  hBoxView.swift
//  innerPeace
//
//  Created by Abhigyan Bafna on 07/04/23.
//

import SwiftUI

struct hBoxView: View {
    let boxes = (1...2).map { BoxViewModel(title: "Box \($0)") }

        var body: some View {
            ScrollView(.horizontal) {
                LazyHGrid(rows: [GridItem()]) {
                    ForEach(boxes, id: \.self) { box in
                        BoxView(model: box)
                    }.frame(width: 330, height: 150)
                }
                .padding()
                
            }
        }
}

struct BoxView: View {
    let model: BoxViewModel

    var body: some View {
        
        VStack {
            Rectangle()
                .frame(width: 290, height: 0)
            
            Text("Day 2: Steps to Recharge")
                .font(.system(size: 23))
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(.trailing, 20)
                .frame(width: .infinity, height: .infinity)
            
            Text("Meditation")
                .font(.system(size: 20))
                .fontWeight(.regular)
                .foregroundColor(.black)
                .padding(.trailing, 188)
                .padding(.top, -8)
                .frame(width: .infinity, height: .infinity)
            
            Text("Coach - Muskaan")
                .font(.system(size: 20))
                .fontWeight(.regular)
                .foregroundColor(.black)
                .padding(.trailing, 130)
                .padding(.top, -8)
                .frame(width: .infinity, height: .infinity)
            
            Rectangle()
                .frame(width: 0, height: 50)
            
            HStack{
                Text("⚡️10 XP")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width: 70, height: .infinity)
                
                Text("⏱️ 10 mins")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width: 90, height: .infinity)
                
            }.padding(.trailing, 120)
            
            Image("womanPhoto")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 200, maxHeight: 0)
                .padding(.leading, 165)
                .padding(.top, -60)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(hex: "6753e0").opacity(1.0), Color(hex: "225ee1").opacity(1.0)]), startPoint: .leading, endPoint: .trailing)
                )
        )
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(hex: "f0f1f1"), lineWidth: 3)
        )
        
    }
}

struct BoxViewModel: Hashable {
    let title: String
}

struct hBoxView_Previews: PreviewProvider {
    static var previews: some View {
        hBoxView()
    }
}
