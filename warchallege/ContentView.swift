//
//  ContentView.swift
//  warchallege
//
//  Created by Zangah Malik on 7/5/21.
import SwiftUI
struct ContentView: View {
    
    @State private var playerCard = "card4" // we need to track the data that will be changed in UI so we inialialize variables
    @State private var cpuCard = "card9" // and the put hese properties in the element
    @State private var playerScore = 0
    @State private var cpuScore = 0 // state will allow us to update values
    
    var body: some View {
        
ZStack {
        Image("background")
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                  Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                       }
                Spacer()
                
                Button(action: { // deal button
                    
                    //generate a random number between 2 &14
                    
                    let playerRand = Int.random(in: 2...14) // create random number
                    
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update the cards
                    playerCard = "card" + String(playerRand) // we need to use state property wrapper
                    cpuCard = "card" + String(cpuRand)
                    
                    
                    if (playerRand > cpuRand){
                        
                        //update the score
                        playerScore += 1
                        
                    }
                    else if (cpuRand >  playerRand) {
                        cpuScore += 1
                        
                    }
                    
                  
                    
                   
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack {
                    Spacer()
                        VStack {
                            Text("player") // Player Text
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10.0)
                            Text(String(playerScore)) // player score
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                           }
                    Spacer()
                    VStack {
                        Text("CPU") // CPU TExt
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore)) // cpu score
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                           }
                    Spacer()
                         } //outside Text hstack
                Spacer()
                    }// outside vstack
       } // Ztack
    } //View
} // contetnt view





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
