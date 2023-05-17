//
//  CourtView.swift
//  TeamSelection
//
//  Created by liran ben haim on 15/05/2023.
//

import SwiftUI

struct CourtView: View {
    
    @State private var amountOfPlayers : String = ""
    @State private var amountOfTeams : String = ""
    @FocusState private var amountIsFocused : Bool
    
    @StateObject var court = Court()
    
    var headLine: some View{
        
        Text("Court Settings").fontWeight(.bold)
            .frame(width: 300 ,height: 50,alignment: .center)
            .font(.system(size: 40))
    }


    
    var amountOfP : some View{
        HStack{
            Text("Enter amount of players").font(.system(size: 20))
            TextField("", text: $amountOfPlayers)
                .background(Color.gray.opacity(0.5)).frame(maxWidth:150,alignment: .center).frame(maxHeight: 10)
                .font(.headline)
                .keyboardType(.numberPad)
                .focused($amountIsFocused)
                .ignoresSafeArea(.keyboard)
        }
    }
    
    var amountOft : some View{
        HStack{
            Text("Enter amount of Teams ").font(.system(size: 20))
            TextField("", text: $amountOfTeams).background(Color.gray.opacity(0.5)).frame(width:150,alignment: .center)
                .font(.headline)
                .keyboardType(.numberPad)
                .focused($amountIsFocused)
                .ignoresSafeArea(.keyboard)
                
        }
    }
    
    var navi : some View{
            NavigationLink(destination:Players(players: Int(amountOfPlayers) ?? 0, teams: Int(amountOfTeams) ?? 0)){
                    Text("Add Players".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .font(.headline)
                }.toolbar{
                    ToolbarItem(placement: .keyboard){
                        Button("Done"){
                            amountIsFocused = false
                        }
                }
            }
        
        }
    
    
    var body: some View {
        VStack{
                headLine
                amountOfP
                amountOft
                navi
            
        }
        
    }
}

struct CourtView_Previews: PreviewProvider {
    static var previews: some View {
        CourtView()
        
    }
}
