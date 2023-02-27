//
//  HomeView.swift
//  ExamenTest
//
//  Created Phinder 2022 on 25/02/23.
//  2023 ___ORGANIZATIONNAME___.
//

import UIKit

class HomeView: UIViewController {
    var presenter: HomePresenterProtocol?
    private var ui: HomeViewUI?
    
    
    override func loadView() {
        ui = HomeViewUI(
            delegate: self
        )
        view = ui

    }
    
}

extension HomeView: HomeViewProtocol {
    
}

extension HomeView: HomeViewUIDelegate {
    
}
