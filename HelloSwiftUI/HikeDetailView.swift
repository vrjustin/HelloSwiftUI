//
//  HikeDetailView.swift
//  HelloSwiftUI
//
//  Created by Justin Maronde on 8/23/24.
//

import SwiftUI

struct HikeDetailView: View {
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fit : .fill)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailView(hike: Hike(name: "Alpe Adria Trail", photo: "alpeAdriaTrail", miles: 3.6))
    }
}
