//
//  BreweryDetail.swift
//  Breweries
//
//  Created by Anushree Das on 23/07/22.
//

import SwiftUI

struct BreweryDetail: View {
    @StateObject private var vm = BreweryViewModel()
    let brewery: Brewery
    var body: some View {
        VStack {
            Text(brewery.name!)
            Text(brewery.brewery_type)
            Text(brewery.country!)
        }
    }
}

struct BreweryDetail_Previews: PreviewProvider {
    static var previews: some View {
        BreweryDetail(brewery: .init(id: "0", name: "b", brewery_type: "b", street:"b", address_2: "b", address_3: "b", city: "b", state: "b", county_province: "b", postal_code: "b", country: "b", longitude: "b", latitude: "b", phone: "b", website_url: "b", updated_at: "b", created_at: "b"))
    }
}
