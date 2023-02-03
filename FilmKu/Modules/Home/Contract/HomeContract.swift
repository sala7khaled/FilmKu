//
//  OnboardingContract.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

protocol HomeView: AnyObject {
    var presenter: HomePresenterInterface! { get set }
    
    func showViewLoading()
    func hideViewLoading()
    func applyFilter()
    
    func reloadUI()
}
    
protocol HomePresenterInterface: AnyObject {
    var view: HomeView? { get set }
    var router: HomeRouterInterface! { get set }
    var interactor: HomeInteractorInterface! { get set }
    
    var movies: [Item]! { get set }
    
    func viewDidLoad()
    func showError(with message: String?)
}
    
protocol HomeInteractorInterface: AnyObject {
    var output: HomeInteractorOutput? { get set }
    
    func getMovies()
}
    
protocol HomeInteractorOutput: AnyObject {
        
    func didGetMovies(response: Movie)
    func didFailedGetMovies(error: APIError)
}
    
protocol HomeRouterInterface: AnyObject {
    var viewController: UIViewController? { get set }
    
    func presentError(with message: String?)
    
    static func assembleModule() -> UIViewController
}
