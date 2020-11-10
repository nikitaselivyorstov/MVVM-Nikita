//
//  TableViewModelType.swift
//  MVVM Nikita
//
//  Created by Nikita Seliverstov on 10.11.2020.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
}
