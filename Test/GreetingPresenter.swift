//
//  GreetingPresenter.swift
//  Test
//
//  Created by Vasilii on 28/09/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import Foundation

protocol GreetingViewProtocol: class {
    func setGreeting(_ greeting: String) //подставит приветсвие в лейбл
}
protocol GreetingViewPresenterProtocol: class {
    init(view: GreetingViewProtocol, preson: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingViewPresenterProtocol {
    
    unowned let view: GreetingViewProtocol
    let preson: Person
    
    required init(view: GreetingViewProtocol, preson: Person) {
        self.view = view
        self.preson = preson
    }
    
    func showGreeting() {
        let greeting = "Hello \(preson.name) \(preson.surname)"
        view.setGreeting(greeting)
    }
    
    
}
