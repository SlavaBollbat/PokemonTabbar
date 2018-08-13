//
//  PokemonProtocol.swift
//  Pokemon (with tabbar)
//
//  Created by Слава on 06.08.2018.
//  Copyright © 2018 Слава. All rights reserved.
//

import UIKit

protocol PokemonDelegate : class {
    func presentImage(image: UIImage, text: String)
}
