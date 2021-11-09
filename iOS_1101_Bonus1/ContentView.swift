//
//  ContentView.swift
//  iOS_1101_Bonus1
//
//  Created by CK on 2021/11/9.
//

import SwiftUI

struct ContentView: View {
    @State var action =  "幹麻呢"
    @State var option =  ["親親","抱抱","飛高高","親親抱抱飛高高都要!"]
    //@State var randNum =  1
    @State var randomElement =  1
    var body: some View {
        ZStack{
            Image("Bouns2")
                .resizable()
                .scaledToFit()
            VStack{
                Button(action:{
                    let randNum = 0...3
                    randomElement = randNum.randomElement()!
                    action = option[randomElement]
                }){
                    Text("今天要幹嘛")
                        .font(.largeTitle)
                }.offset(x: 0, y: -330)
                
                
                Text("\(action)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .background(Color(red:91/255, green:199/255, blue:199/255))
                    .cornerRadius(10)
                    .offset(x: 0, y: 330)
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
