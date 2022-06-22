//
//  ContentView.swift
//  MyJanken
//
//  Created by Zhixian Piao on 2022/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var anserNumber = 0
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 256)
            if anserNumber == 0 {
                Text("これからジャンケンします")
                    .padding(.bottom)
            } else if anserNumber == 1 {
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                Text("グー")
                    .padding(.bottom)
            } else if anserNumber == 2 {
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            } else {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            }
                        

            Button(action: {
                print("Tapped")
                var newAnswerNumber = 0
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while anserNumber == newAnswerNumber
                anserNumber = newAnswerNumber
            }) {
                Text("ジャンケンする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
