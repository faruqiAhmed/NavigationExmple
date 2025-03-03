//
//  ContentView.swift
//  NavigationExmple
//
//  Created by Md Omar Faruq on 3/3/25.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var age: String = ""
    var body: some View {
        NavigationStack {
            VStack {
//                Text("Navigation Exmple")
//                    .font(.largeTitle)
//                Spacer()
                VStack(alignment: .leading) {
                    Text("Enter your name ")
                    TextField("Faruq", text: $name)
                }
                VStack(alignment: .leading) {
                    Text("Enter your age")
                    TextField("age", text: $age)
                        .keyboardType(.numberPad)
                }
                NavigationLink {
                    ZStack {
                        Color.orange.ignoresSafeArea()
                        Text("New View org")
                    }
                   
                } label: {
                    Text("Go to orange View")
                        .font(.title)
                        .padding()
                        .overlay(
                            Capsule()
                                .stroke()
                    )
                }
                Spacer()
                NavigationLink {
                    ZStack {
                        ProcessView(name: name, age: age, drinKingAge: 18)
                    }
                   
                } label: {
                    Text("Oky")
                        .font(.title)
                        .padding()
                        .overlay(
                            Capsule()
                                .stroke()
                    )
                }

               
                
            }
            .padding()
            .navigationTitle("Exmple")
        }
        .padding()
    }
}

struct ProcessView: View {
    let name: String
    let age: String
    let drinKingAge: Int
    var numericalAge: Int {
        Int(age) ?? -1
    }
    var body: some View {
        
        if numericalAge > drinKingAge
        {
             Text("\(name) Drinking  water")
        } else if  numericalAge < 0{
            Text("\(age)Invalid input ")
        }
        
        else {
            
            VStack {
                Text("Sorry\(name.capitalized)")
                Text("Can't serve you ")
            }
        }
    }
}

#Preview {
    ContentView()
}
