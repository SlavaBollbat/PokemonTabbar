//
//  BulbasaurViewController.swift
//  Pokemon (with tabbar)
//
//  Created by Слава on 06.08.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import UIKit

class BulbasaurViewController: UIViewController {
    
    weak var delegate: PokemonDelegate?
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapObserver()
        
    }
    
    
    
    func tapObserver(){
        
        let handler = #selector(self.tapAction(gester:))
        let tapRecognizer = UITapGestureRecognizer(target: self, action: handler)
        myImage.isUserInteractionEnabled = true
        myImage.addGestureRecognizer(tapRecognizer)
        
    }
    
    @objc func tapAction(gester: UITapGestureRecognizer) {
        
        guard let image = myImage.image else { return }
        let text = myLabel.text!
        delegate?.presentImage(image: image, text: text)
        self.dismiss(animated: true, completion: nil)
    }
    
}
