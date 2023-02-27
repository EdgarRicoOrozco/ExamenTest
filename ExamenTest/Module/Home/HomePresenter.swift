//
//  HomePresenter.swift
//  ExamenTest
//
//  Created Phinder 2022 on 25/02/23.
//  2023 ___ORGANIZATIONNAME___.
//

import Foundation
class HomePresenter {
    var interactor: HomeInteractorProtocol?
    weak var view: HomeViewProtocol?
    var router: HomeRouterProtocol?
    
}



extension HomePresenter: HomePresenterProtocol {
    
}
