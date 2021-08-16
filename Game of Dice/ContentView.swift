//
//  ContentView.swift
//  Game of Dice
//
//  Created by MacBook on 16.08.2021.
//

import SwiftUI

struct ContentView: View {
    
   // set @State variable to manage them further (it works only in SwiftUI)
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
  
    var body: some View {
        ZStack {
            // set image from assets as bacgraund
            Image("background")
                // stretched the image
                .resizable()
                // fiil safe area by image
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            // added Logo
            VStack {
                Image("diceeLogo")
                // set a space between objects
                Spacer()
                HStack {
                    // initilize DiceView struct
                    DiceView(numberOfDice: leftDiceNumber)
                    DiceView(numberOfDice: rightDiceNumber)
                }
                // padding horizontal stack
                .padding(.horizontal)
                Spacer()
                // added button
                Button(action: {
                    // set random changing variables in range within 1 to 6
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("ROLL")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        // set padding horizontal for button
                        .padding(10)
                        // set background of button
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(25)
      
                        
                }
                
        
            }

        }
    }
}
//MARK: - DiceView to manage all of dice

struct DiceView: View {
    
    let numberOfDice: Int
    
    var body: some View {
        Image("dice\(numberOfDice)")
            //adjust dice pic to frame of screen
            .resizable()
            // aspect ratio of dice 1 to 1 and fit on screen
            .aspectRatio(1, contentMode: .fit)
            // set 30 pads
            .padding(30)
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

