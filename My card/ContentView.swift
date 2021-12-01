//
//  ContentView.swift
//  My card
//
//  Created by Igor Antonchenko on 15.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
                
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Picture 1")
                    
                    .resizable()
                    .offset(CGSize(width: 0.0, height: 20.0))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 180)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).offset(CGSize(width: 0.0, height: 0.0))
                    
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5.0 ))
                
                Text("Igor Antonchenko")
                    .font(Font.custom("Pacifico-Regular", size: 38
                    ))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25
                    ))
                
                Divider()
                
                
                
                
                InfoView(text: "+380 67 7202722", imageName: "phone.fill")
                
                InfoView(text: "ib.antonchenko@icloud.com", imageName: "envelope.fill")
                
                
                
                
                
                //    Label("+380 67 720 27 22", systemImage: "phone")
                
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone Xs Max")
    }
}


