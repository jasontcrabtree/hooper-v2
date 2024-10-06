//
//  Session.swift
//  hooper-v2
//
//  Created by Jason Crabtree on 04/10/2024.
//

import SwiftUI

struct WorkoutView: View {
    
    var randomDrill = drills.randomElement();
    @State private var counter = 0
    
    var body: some View {
        VStack {
            
            if (randomDrill != nil && randomDrill?.name != nil) {
                Text(randomDrill?.name ?? "default")
            }
            
            VStack {
              Text("Here's the count: \(counter)")
                .padding()
              Button("Increase Counter") {
                counter += 1
              }
            }
            
        }
        .navigationTitle("Start Workout")
        .toolbar {
            Button {
            } label: {
                Label("Plus", systemImage: "plus.circle")
            }
        }
    }
}

struct Session_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
