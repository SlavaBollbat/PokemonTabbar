//
//  FinalViewController.swift
//  Pokemon (with tabbar)
//
//  Created by Слава on 06.08.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let first = storyboard.instantiateViewController(withIdentifier: "Pikachu")
            as? PikachuViewController else {return}
            first.delegate = self
        
        guard let second = storyboard.instantiateViewController(withIdentifier: "Bulbasaur")
            as? BulbasaurViewController else {return}
        second.delegate = self
        
        guard let third = storyboard.instantiateViewController(withIdentifier: "MewTwo")
            as? MewTwoViewController else {return}
        third.delegate = self
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}

extension FinalViewController: PokemonDelegate {
    func presentImage(image: UIImage, text: String) {
        myLabel.text = text
        myImage.image = image
    }
}

