//
//  ContentView.swift
//  War-challenge
//
//  Created by Salima O. on 31/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack() {
        Image("background")
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack() {
            
            Spacer()
            Image("logo")
                .aspectRatio(contentMode: .fit)
            Spacer()
                
            HStack() {
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
                Spacer()
            
                Button {
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                        
                    else if  cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                    
                } label: {
                    Image("dealbutton")
                }

                   
               
                Spacer()
                
                HStack() {
                    Spacer()
                    VStack(){
                    
                    Text("Player")
                        .foregroundColor(Color.white)
                        .padding(.bottom)
                        
                   
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
        
                   
                }
                    Spacer()
                    VStack() {
                       
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                            
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                       
                      
                     
                    }
                   Spacer()
                    
                }
               
              Spacer()
                
            }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
