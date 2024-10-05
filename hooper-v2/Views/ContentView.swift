//
//  ContentView.swift
//  hooper-v2
//
//  Created by Jason Crabtree on 03/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .workoutList
    
    enum Tab {
        case workoutList
        case session
    }
    
    var body: some View {
        TabView(selection: $selection) {
                WorkoutView()
                .tabItem {
                    Label("Start Workout", systemImage: "play")
                }
                .tag(Tab.session)
            
            WorkoutListView()
                .tabItem {
                    Label("Workouts", systemImage: "sportscourt")
                }
                .tag(Tab.workoutList)
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
