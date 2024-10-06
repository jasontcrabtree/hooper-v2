//
//  CategoriesListView.swift
//  hooper-v2
//
//  Created by Jason Crabtree on 06/10/2024.
//

import SwiftUI

struct CategoryGroup: View {
    var label: String
    var items: [Drill]
    
    var body: some View {
        
        Section(header: Text(label)) {
            ForEach(items) { drill in
                NavigationLink {
                    DrillView(
                        item: drill
                    )
                } label: {
                    Text(drill.name)
                }
            }
        }
    }
}

struct CategoriesListView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                List {
                    ForEach(categories.keys.sorted(), id: \.self) { key in
                        CategoryGroup(
                            label: key,
                            items: categories[key]!
                        )
                    }
                }
            }
            .navigationTitle("Workout Drills")
        }
    }
}

struct CategoriesListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesListView()
    }
}
