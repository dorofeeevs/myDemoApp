//
//  SecondViewController.swift
//  myDemoApp
//
//  Created by Aleksandr Dorofeev on 01.07.2020.
//  Copyright © 2020 Aleksandr Dorofeev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let imageView = UIImageView()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTitleForTabBar()
        setupImageOnView()
        setupLabelOnView()
    }
    
    // Создаем картинку для тайтл навигейшн
    
    private func setupTitleForTabBar() {
        let titleImage = UIImageView()
        let image = UIImage(named: "material")
        titleImage.image = image
        titleImage.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImage
    }
    
    private func setupImageOnView() {
        imageView.frame = CGRect(x: 60, y: 141, width: 253, height: 253)
        imageView.image = UIImage(named: "doctor")
        imageView.layer.cornerRadius = 4
        imageView.clipsToBounds = true
        view.addSubview(imageView)
    }
    
    private func setupLabelOnView() {
        label.frame = CGRect(x: 30, y: 450, width: 329, height: 52)
        label.text = "Медицинское сообщество рекомендует придерживаться данных рекомендаций до окончания повышенной готовности в связи с эпидемиологической ситуацией в стране!    Спасибо за понимание!"
        label.font = UIFont(name: "Arial", size: 30)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.numberOfLines = 4
        label.textColor = .black
        view.addSubview(label)
    }

}

