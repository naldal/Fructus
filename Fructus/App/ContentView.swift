//
//  ContentView.swift
//  Fructus
//
//  Created by 송하민 on 2021/08/13.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
//            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local).onEnded({ value in
//                if value.translation.width > 0 {
//                    isOnboarding = true
//                }
//            }))
        }//: NAVIGATION
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 11 Pro")
    }
}
