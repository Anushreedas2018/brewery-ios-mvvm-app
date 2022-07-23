//
//  BreweryRow.swift
//  Breweries
//
//  Created by Anushree Das on 23/07/22.
//

import SwiftUI

struct BreweryRow: View {
    @StateObject private var vm = BreweryViewModel()
    let brewery: Brewery
    var body: some View {
        ZStack{
        HStack {
            Image("brewery")
                .resizable()
                .frame(width: 50, height: 50)
            VStack {
                Text(brewery.id!)
                HStack {
                    Text(brewery.name!)
                }
            }

            Spacer()
        }
    }
    }
}

struct BreweryRow_Previews: PreviewProvider {
    static var previews: some View {
        BreweryRow(brewery: .init(id: "0", name: "b", brewery_type: "b", street:"b", address_2: "b", address_3: "b", city: "b", state: "b", county_province: "b", postal_code: "b", country: "b", longitude: "b", latitude: "b", phone: "b", website_url: "b", updated_at: "b", created_at: "b"))
    }
}
