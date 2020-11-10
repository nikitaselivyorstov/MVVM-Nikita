//
//  TableViewController.swift
//  MVVM Nikita
//
//  Created by Nikita Seliverstov on 10.11.2020.
//

import UIKit

class TableViewController: UITableViewController {

    private var viewModel: TableViewViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
    }
}

extension TableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        guard let tableViewCell = cell, let viewModel = viewModel else { return UITableViewCell() }
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)

        tableViewCell.viewModel = cellViewModel

        return tableViewCell
    }
}
