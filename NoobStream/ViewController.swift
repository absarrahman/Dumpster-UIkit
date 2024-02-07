//
//  ViewController.swift
//  NoobStream
//
//  Created by Moh. Absar Rahman on 28/1/24.
//

import UIKit

class ViewController: UIViewController, MainStoryboarded {

    @IBOutlet weak var hamburgerMenuButton: UIButton!
    
    
    @IBOutlet weak var profileButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("DID LOAD CALLED")
        hamburgerMenuButton.backgroundColor = .systemIndigo
        hamburgerMenuButton.tintColor = .white
        
        profileButton.backgroundColor = .systemIndigo
        profileButton.tintColor = .white
        hamburgerMenuButton.setTitle("", for: .normal)
        
        profileButton.setTitle("", for: .normal)
        hamburgerMenuButton.layer.cornerRadius = hamburgerMenuButton.frame.height / 2
        
        profileButton.layer.cornerRadius = profileButton.frame.height * 0.25
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: NoobTableViewCellOne.identifier, bundle: nil), forCellReuseIdentifier: NoobTableViewCellOne.identifier)
    }


}

extension ViewController: UITableViewDelegate {
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeueReusableCell(withIdentifier: NoobTableViewCellOne.identifier,for: indexPath) as! NoobTableViewCellOne
    }
    
}
