//
//  ViewController.swift
//  Pokemon (with tabbar)
//
//  Created by Слава on 06.08.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let tabBarControllerToShow = storyboard.instantiateViewController(withIdentifier: Constants.Tabbar) as! UITabBarController
        
        if let displayVC = tabBarControllerToShow.viewControllers?[0] as? PikachuViewController{
            displayVC.delegate = self
        }
        if let displayVC = tabBarControllerToShow.viewControllers?[1] as? BulbasaurViewController{
            displayVC.delegate = self
        }
        if let displayVC = tabBarControllerToShow.viewControllers?[2] as? MewTwoViewController{
            displayVC.delegate = self
        }
        
        self.present(tabBarControllerToShow, animated: true, completion: nil)
        
    }
    
}

extension ViewController : PokemonDelegate {
    
    func presentImage(image: UIImage, text: String) {
        myLabel.text = text
        myImage.image = image
    }
    
}

private struct Constants {
    static let Tabbar = "TabBar"
}

