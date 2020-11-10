//
//  ViewModel.swift
//  MVVM Nikita
//
//  Created by Nikita Seliverstov on 10.11.2020.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Kolby", age: 21),
        Profile(name: "Mark", secondName: "Salmon", age: 55)]
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
}
