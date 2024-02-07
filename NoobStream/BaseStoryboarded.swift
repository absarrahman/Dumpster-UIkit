//
//  Storyboarded.swift
//  NoobStream
//
//  Created by Moh. Absar Rahman on 7/2/24.
//

import UIKit

enum StoryboardNames: String {
    case main = "Main"
}

protocol BaseStoryboarded {
   static func instantiate() -> Self
}

protocol MainStoryboarded: BaseStoryboarded {
}

extension MainStoryboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
