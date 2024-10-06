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
    
    func startWorkout() {
        counter += 1
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    Section {
                        VStack {
                            Button(action: startWorkout) {
                                HStack {
                                    Text("\(key) Workout")
                                    Spacer()
                                    Image(systemName: "play.circle")
                                        .font(.headline)
                                }
                            }
                        }
                        .padding()
                        .frame(
                            maxWidth: .infinity
                        )
                    }
                    .padding()
                    .listRowSeparator(.hidden)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray, lineWidth: 1)
                            .blur(radius: 3))
                }
            }
            .listStyle(.plain)
            .padding(.vertical, 10)
            .navigationTitle("Start Workout")
        }
    }
}

struct Session_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
