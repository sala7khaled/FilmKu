//
//  HomeController.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomeController: BaseController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var yearBtn: AppButton!
    @IBOutlet weak var rateBtn: AppButton!
    
    var presenter: HomePresenterInterface!
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "app_name".l()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        initTableView()
    }
    
    func applyFilter(by filter: MovieFilter) {
        
        switch filter {
        case .year: do {
            yearBtn.isSelected = true
            rateBtn.isSelected = false
            
            presenter.movies = presenter.movies.sorted {item1, item2 in item1.year > item2.year}
            reloadUI()
            }
        case .rate: do {
            yearBtn.isSelected = false
            rateBtn.isSelected = true
            
            presenter.movies = presenter.movies.sorted {item1, item2 in item1.rating > item2.rating}
            reloadUI()
        }
            
        }
    }
    
    @IBAction func yearBtnClicked(_ sender: Any) {
        applyFilter(by: .year)
    }
    
    @IBAction func rateBtnClicked(_ sender: Any) {
        applyFilter(by: .rate)
    }
    
}

extension HomeController: HomeView {
    
    func showViewLoading() {
        showLoading()
    }
    
    func hideViewLoading() {
        hideLoading()
    }
    
    func applyFilter() {
        applyFilter(by: .year)
    }
    
    func reloadUI() {
        tableView.reloadData()
    }
}
