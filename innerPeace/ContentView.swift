//
//  ContentView.swift
//  innerPeace
//
//  Created by Abhigyan Bafna on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack {
                
                //Profile Btn
                Button(action: {
                    // handle button tap here
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(hex: "14A0DB").opacity(0.15))
                            .frame(width: 60, height: 60)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(hex: "14A0DB"), lineWidth: 3)
                            )
                        
                        Image("userProfile")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.blue)
                            .frame(width: 55, height: 60)
                    }
                }.padding(EdgeInsets(top: 15, leading: 16, bottom: 0, trailing: 285))
                
                //Level Display
                ZStack {
                    //Main Rectangle
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 255, height: 60)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(hex: "14A0DB"), lineWidth: 3)
                        )
                    
                    //XP Bar
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 255, height: 30)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(hex: "14A0DB"), lineWidth: 3)
                        )
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    
                    //XP Progress
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(hex: "55c2ef"))
                        .frame(width: 240, height: 28)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 13))
                    
                    
                    Text("1090 XP")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 220, height: 60)
                        .padding(EdgeInsets(top: -30, leading: 135, bottom: 0, trailing: 0))
                    
                    Text("Level 9")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 220, height: 60)
                        .padding(EdgeInsets(top: 0, leading: -175, bottom: -30, trailing: 0))
                    
                    Text("30XP to Level 10")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 60)
                        .padding(EdgeInsets(top: 0, leading: 110, bottom: -30, trailing: 0))
                    
                    
                    
                }.padding(EdgeInsets(top: -68, leading: 16, bottom: 0, trailing: -70))
                
                //Premium Reminder
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(hex: "41a7e7"))
                        .frame(width: 335, height: 85)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(RadialGradient(
                                gradient: Gradient(colors: [Color.purple.opacity(0.5), Color.purple.opacity(0.3), Color.purple.opacity(0)]),
                                center: .center,
                                startRadius: 0,
                                endRadius: 40)
                            ).offset(x: -90, y: 7)
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 3))
                        .shadow(radius: 10)
                    
                    Button(action: {
                        // handle button tap here
                    }){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white.opacity(0.05))
                            .frame(width: 80, height: 40)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 1)
                            )
                            .padding(EdgeInsets(top: 0, leading: 225, bottom: 0, trailing: 0))
                        
                    }
                    
                    Text("Your Level premium is about to expire, renew now!")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 220, height: 60)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 90))
                    
                    Text("Explore →")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 100, height: 50)
                        .padding(EdgeInsets(top: 0, leading: 225, bottom: 0, trailing: 0))
                    
                }.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
                Text("Must Do For Your Goals")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .frame(width: 300, height: 75)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 80))
                
                //Horizontal Scroll Box
                hBoxView()
                    .frame(width: 390, height: 240)
                    .padding(.top, -20)
                
                Text("Activity Routine")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .frame(width: 300, height: 75)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 165))
                
                ZStack {
                    
                    //Gratitude Journal
                    RoundedRectangle(cornerRadius: 10)
                        .fill(LinearGradient(gradient: Gradient(colors: [
                            Color(hex: "e4976f").opacity(1.0),
                            Color(hex: "e44d6a").opacity(1.0),
                            Color(hex: "e0315b").opacity(1.0)
                        ]), startPoint: .leading, endPoint: .trailing))
                        .frame(width: 335, height: 140)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(hex: "f0f1f1"), lineWidth: 3)
                        )
                    
                    VStack {
                        
                        Text("Gratitude")
                            .font(.system(size: 23))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.trailing, 200)
                            .padding(.top, 10)
                        
                        Text("Journal")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .padding(.trailing, 235)
                            .padding(.top, -8)
                            .frame(width: .infinity, height: .infinity)
                        
                        Rectangle()
                            .frame(width: 0, height: 15)
                        
                        HStack{
                            Text("⚡️10 XP")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 70, height: .infinity)
                            
                            Text("⏱️ 1 mins")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 90, height: .infinity)
                            
                        }
                        .padding(.trailing, 145)
                        .padding(.bottom, -5)
                        
                        Image("cloudLadder")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 140, maxHeight: 0)
                            .padding(.leading, 185)
                            .padding(.top, -65.5)
                    }
                }
                
                ZStack {
                    
                    //For Inner Peace
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(hex: "bfb6e4"))
                        .frame(width: 335, height: 140)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(hex: "f0f1f1"), lineWidth: 3)
                        )
                        .padding(.top, 10)
                    
                    VStack {
                        
                        Text("For Inner Peace")
                            .font(.system(size: 23))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding(.trailing, 135)
                            .padding(.top, 10)
                        
                        Text("Music")
                            .font(.system(size: 18))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                            .padding(.trailing, 250)
                            .padding(.top, -8)
                            .frame(width: .infinity, height: .infinity)
                        
                        Rectangle()
                            .frame(width: 0, height: 15)
                        
                        HStack{
                            Text("⚡️10 XP")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 70, height: .infinity)
                            
                            Text("⏱️ 60 mins")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 90, height: .infinity)
                            
                        }
                        .padding(.trailing, 145)
                        .padding(.bottom, -5)
                        
                        Image("beachBallConfetti")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: 140, maxHeight: 0)
                            .padding(.leading, 185)
                            .padding(.top, -55)
                    }
                }
                
            }
            .background(
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(maxWidth: 500, maxHeight: 500)
            )
        }
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var rgb: UInt64 = 0

        if Scanner(string: hex).scanHexInt64(&rgb) {
            self.init(red: Double((rgb & 0xff0000) >> 16) / 255.0,
                      green: Double((rgb & 0x00ff00) >> 8) / 255.0,
                      blue: Double(rgb & 0x0000ff) / 255.0)
            return
        }

        self.init(red: 0, green: 0, blue: 0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
