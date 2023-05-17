//
//  Players.swift
//  TeamSelection
//
//  Created by liran ben haim on 14/05/2023.
//

import SwiftUI

struct Players: View {
    
    @State private var playerName  = ""
    
   @State var players : Int
   @State var teams : Int
    
    
    
    var addPlayersList : some View {
        Form{
                TextField("add Player".uppercased(),text:$playerName)
                Picker("player rank".uppercased(),selection: $teams){
//                    ForEach(){
//                        Text("Rank \($0)")
//                    }
            }
        }
    }
    
    var body: some View {
        addPlayersList
        
    }
}

struct Players_Previews: PreviewProvider {
    static var previews: some View {
        Players(players: 0, teams: 0)
    }
}
