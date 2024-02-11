//
//  Storyboarded.swift
//  NoobStream
//
//  Created by Moh. Absar Rahman on 7/2/24.
//

import UIKit

enum StoryboardNames: String {
    case main = "Main"
    case second = "Second"
}

protocol BaseStoryboarded {
   static func instantiate() -> Self
}

protocol MainStoryboarded: BaseStoryboarded {
}

protocol SecondStoryboarded: BaseStoryboarded {
}


extension MainStoryboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: StoryboardNames.main.rawValue, bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

extension SecondStoryboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: StoryboardNames.second.rawValue, bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
