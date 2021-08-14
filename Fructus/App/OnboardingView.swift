//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by 송하민 on 2021/08/13.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        TabView{
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
