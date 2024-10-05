//
//  Workout.swift
//  hooper-v2
//
//  Created by Jason Crabtree on 03/10/2024.
//

import SwiftUI

struct WorkoutListView: View {
    var body: some View {
        NavigationSplitView {
            List(drills) { drill in 
                NavigationLink {
                    VStack {
                        Text(drill.description)
                    }
                        .navigationTitle(drill.name)
                } label: {
                    HStack {
                        Text(drill.name)
                    }
                        .padding()
                }
            }
            .navigationTitle("Workout Drills")
//            .toolbar {
//                Button {
//                } label: {
//                    HStack {
//                        Label("Plus", systemImage: "plus.circle")
//                    }
//
//                }
//            }
        } detail: {
            Text("Select a drill")
        }
    }
}

struct Workout_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
