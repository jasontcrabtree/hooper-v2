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
        case categoriesList
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                    WorkoutView()
                    .tabItem {
                        Label("Start Workout", systemImage: "play")
                    }
                    .tag(Tab.session)
                
//                WorkoutListView()
//                    .tabItem {
//                        Label("Workouts", systemImage: "sportscourt")
//                    }
//                    .tag(Tab.workoutList)
                
                CategoriesListView()
                    .tabItem {
                        Label("Workouts", systemImage: "list.bullet")
                    }
                    .tag(Tab.categoriesList)
            }
        }
        .preferredColorScheme(.dark)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
