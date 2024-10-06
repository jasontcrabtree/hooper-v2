//
//  DrillView.swift
//  hooper-v2
//
//  Created by Jason Crabtree on 06/10/2024.
//

import SwiftUI

struct DrillView: View {
    var item: Drill;
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(item.name)
                    .font(.title)
                Spacer()
                HStack {
                    Image(systemName: "clock")
                    Text("\(item.time) s")
                        .fontWeight(.bold)
                        .font(.callout)
                }
            }
            Text(item.description)
            Spacer()
        }
        .padding()
    }
}

struct DrillView_Previews: PreviewProvider {
    static var previews: some View {
        DrillView(item: drills[0])
    }
}
