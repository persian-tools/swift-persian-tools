//
//  GetPlaceByIranNationalId.swift
//  SwiftPersianTools
//
//  Created by Saeed on 6/18/21.
//

import Foundation

public extension String {
    func getPlaceByIranNationalId() -> PlaceByNationalId? {
        if self.count == 10 {

            guard let code = Int(self.prefix(3)) else {
                return nil
            }

            let cityByNationalId = CityCode().cities.filter { city in
                if city.code.contains(code) {
                    return true
                }

                return false
            }

            guard let findCity = cityByNationalId.first else {
                return nil
            }

            let province = ProvincesCode().provinces.filter { province in
                if province.id == findCity.parentId {
                    return true
                }

                return false
            }.first

            return PlaceByNationalId(code: findCity.code, city: findCity.city, province: province?.province ?? "")

        }

        return nil
    }
}
