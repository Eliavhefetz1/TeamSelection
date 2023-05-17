//
//  ContentView.swift
//  TeamSelection
//
//  Created by liran ben haim on 14/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var navView :some View {
        NavigationView{
        VStack {
            Text("Welcome To\nTeam Selection").font(.largeTitle)
            Spacer(minLength: 650)
            NavigationLink(destination: CourtView()){
                Text("Start".uppercased())
                    .padding()
                    .frame(maxWidth:.infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .font(.headline)
            }
            Spacer()
            }
        }
    }

    var body: some View {
        ZStack{
            navView
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
