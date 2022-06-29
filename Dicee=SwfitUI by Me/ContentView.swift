//
//  ContentView.swift
//  Dicee=SwfitUI by Me
//
//  Created by Aibar Kunanbay on 09.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceeNumber=1
    @State var rightDiceeNumber=1
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceeView(n: leftDiceeNumber)
                    DiceeView(n: rightDiceeNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceeNumber=Int.random(in: 1...6)
                    self.rightDiceeNumber=Int.random(in: 1...6)
                    
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                     
                    
                    
                }
                .background(Color.red)
                
            }
        }
            
    }
}

struct DiceeView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

