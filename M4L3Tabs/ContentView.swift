//
//  ContentView.swift
//  M4L3Tabs
//
//  Created by John Deranian on 9/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var tableIndex = 0

    var body: some View {
        
        TabView(selection:$tableIndex) {
            ZStack{
                Image("maggie")
                    .resizable()
                    .scaledToFit()
                Text("This is tab \(tableIndex + 1)")
                    .foregroundColor(Color.green)
            }
            .tabItem {
                VStack {
                    Image(systemName: "star.fill")
                    Text("Maggie")
                }
            }.tag(0)
                
            VStack {
                Image("lilly_and_dad")
                    .resizable()
                    .scaledToFit()
                //Spacer()
                Text("This is tab \(tableIndex + 1)")
                Button(action: {tableIndex = 2},
                   label: {
                    Text("Take me to tab 3")
                })
            }
            .tabItem {
                VStack {
                    Image(systemName: "heart.circle")
                    Text("Lilly and Dad")
                }
            }.tag(1)
            
            ScrollView {
                
                let text3 = "This is tab 3"
                //let count = 99
                let myArray = Array(repeating: 0, count: 100)
                
                ForEach(myArray, id: \.self){_ in
                    Text(text3)
                }
            }
             /*
            VStack {
                
                Image("bens_new_car")
                    .resizable()
                    .scaledToFit()
            
            }
              */
            
            .tabItem {
                VStack {
                        Image(systemName: "bolt.car")
                        Text("Cool Car")
                }
            }.tag(2)
            
            
          /*
            Image("swimmer")
                .resizable()
                .scaledToFit()
                
                .tabItem {
                    VStack {
                        Image(systemName: "ear.fill")
                        Text("Olympic Swimmer")
                    }
                }.tag(4)
        */
    }
                
    /*
            Image("muscles")
                .resizable()
                .scaledToFit()
                
                .tabItem {
                    VStack {
                        Image(systemName: "dumbbell")
                        Text("Watch Out!")
                    }
                }.tag(5)
         */
       // }
  //  }
}

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
