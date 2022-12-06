//
//  ContentView.swift
//  test20
//
//  Created by Aldanah Alqbbani on 12/05/1444 AH.
//

import MapKit
import SwiftUI

struct ContentView: View{
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
           .ignoresSafeArea ()
           .accentColor(Color(.systemGreen))
           .onAppear {
              viewModel.checkIfLocationServicesIsEnabled()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
    
}
