//
//  OnBoardingScreens.swift
//  garden_app
//
//  Created by Joephery Rafael on 10/22/22.
//

import SwiftUI

struct OnBoarding: View {
    
    @StateObject var viewModel =
        PostListViewModel()
    
    var body: some View {
        //Logo - with NURTURE 2
        Image(uiImage: #imageLiteral(resourceName: "Logo - with NURTURE 2"))
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 500, height: 500)
            .clipped()
        .frame(width: 500, height: 500)
        .rotationEffect(.degrees(-90))
        
        //Button/Start
        Rectangle()
            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        .frame(width: 304.7, height: 72.8)
        .rotationEffect(.degrees(0))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding()
    }
}
