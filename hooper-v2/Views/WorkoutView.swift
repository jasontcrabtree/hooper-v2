//
//  Session.swift
//  hooper-v2
//
//  Created by Jason Crabtree on 04/10/2024.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        VStack {
            Text("Starting Workout") 
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
