//
//  Workout.swift
//  hooper-v2
//
//  Created by Jason Crabtree on 03/10/2024.
//

import SwiftUI

struct WorkoutListView: View {
    var body: some View {
        NavigationStack {
            List(drills, id: \.self) { drill in
                
                
                
//                ForEach(drillGroups.keys.sorted(),
//                        id: \.self) {key in
//                    Text(key.description)
//                }
                
                NavigationLink {
                    VStack {
                        Text(drill.description)
                    }
                    .navigationTitle(drill.name)
                } label: {
                    HStack {
                        Text(drill.name)
                        Spacer()
                        Text(drill.category.rawValue)
                            .textCase(.uppercase)
                            .dynamicTypeSize(.small)
                            .fontWeight(.bold)
                    }
                    .padding()
                }
            }
            .navigationTitle("Workout Drills")
        }
    }
}

struct Workout_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
