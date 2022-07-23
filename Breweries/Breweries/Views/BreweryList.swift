//
//  BreweryList.swift
//  Breweries
//
//  Created by Anushree Das on 23/07/22.
//

import SwiftUI

struct BreweryList: View {
    @StateObject private var vm = BreweryViewModel()

    var body: some View {
        
            NavigationView {
                List(vm.breweries) { brewery in
                    NavigationLink {
                        BreweryRow(brewery: <#T##Brewery#>)
                    } label: { 
                    }
                }
                .navigationTitle("Breweries")
            }
    }
}

struct BreweryList_Previews: PreviewProvider {
    static var previews: some View {
        BreweryList()
    }
}
