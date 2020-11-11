//
//  DetailViewModel.swift
//  MVVM Nikita
//
//  Created by Nikita Seliverstov on 11.11.2020.
//

import Foundation


class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old!")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
