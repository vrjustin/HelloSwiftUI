//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Justin Maronde on 8/21/24.
//

import SwiftUI

struct ContentView: View {
    
    let hikes: [Hike] = [
        Hike(name: "Alpe Adria Trail", photo: "alpeAdriaTrail", miles: 3.6),
        Hike(name: "Blue Trail", photo: "blueTrail", miles: 4.8),
        Hike(name: "Kungleden", photo: "kungsleden", miles: 6.3),
        Hike(name: "Laugevegur Trail", photo: "laugavegurTrail", miles: 2.4)
    ]

    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }.navigationTitle("Hikes")
                .navigationDestination(for: Hike.self) { hike in
                    HikeDetailView(hike: hike)
                }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    let hike: Hike
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .frame(width: 100)
            
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
            
        }
    }
}
