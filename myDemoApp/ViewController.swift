//
//  ViewController.swift
//  myDemoApp
//
//  Created by Aleksandr Dorofeev on 01.07.2020.
//  Copyright © 2020 Aleksandr Dorofeev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let titleLabel = UILabel()
    let mainImageView = UIImageView()
    let startButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setuplabelOnView()
        setupTitleForTabBar()
        setupImageOnView()
        setupButtonOnView()
        
    }
    
    // MARK: - Methods
    
    // Создаем лейбл
    private func setuplabelOnView() {
        titleLabel.frame = CGRect(x: 20, y: 450, width: 329, height: 52)
        titleLabel.text = "Как помочь миру в эти непростые времена?"
        titleLabel.font = UIFont(name: "Arial", size: 30)
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 2
        titleLabel.textColor = .black
        view.addSubview(titleLabel)
    }
    
    // Создаем картинку на тайтл навигешн
    
    private func setupTitleForTabBar() {
        let titleImage = UIImageView()
        let image = UIImage(named: "help")
        titleImage.image = image
        titleImage.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImage
    }
    
    // Создаем картинку
    
    private func setupImageOnView() {
        mainImageView.frame = CGRect(x: 60, y: 141, width: 253, height: 253)
        mainImageView.image = UIImage(named: "medicine")
        mainImageView.layer.cornerRadius = 4
        mainImageView.clipsToBounds = true
        view.addSubview(mainImageView)
    }
    
    // Создаем кнопку для перехода на следующий вьюКонроллер
    
    private func setupButtonOnView() {
        startButton.frame = CGRect(x: 70, y: 616, width: 230, height: 45)
        startButton.setTitle("Ответ тут", for: .normal)
        startButton.layer.cornerRadius = 5
        startButton.setTitleColor(.white, for: .normal)
        startButton.backgroundColor = .red
        view.addSubview(startButton)
        startButton.addTarget(self, action: #selector(pushButtonOnView(param:)), for: .touchUpInside)
    }
    
    @objc func pushButtonOnView(param: UIButton) {
        if param.isEqual(startButton){
            let nextVC = FirstPushViewController()
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}

