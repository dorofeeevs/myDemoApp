//
//  FirstPushViewController.swift
//  myDemoApp
//
//  Created by Aleksandr Dorofeev on 01.07.2020.
//  Copyright © 2020 Aleksandr Dorofeev. All rights reserved.
//

import UIKit

class FirstPushViewController: UIViewController {
    
    var stepLabel = UILabel()
    var instructionsLabel = UILabel()
    var imageView = UIImageView()
    var nextButton = UIButton()
    var backButton = UIButton()
    
    var indexStep = Int()
    
    let arrayImage = ["home","washHand","sick","dontTouch","old","mop","identity","grocery","book"]
    
    let arrayText = ["Останьтесь дома! Выходите на улицу в исключительных ситуациях, например, что бы приобрести продукты жизнедеятельности!","Чаще и тщательнее мойте руки, особенно после посещения общественных мест. Гигиена очень важна, как в обычное время так и во время сложившейся ситуации!","Используйте защитные медицинские маски, потому что вирус распространяется воздушно-капельным путем, так Вы сможете уменьшить вероятность заражения!","Избегайте тактильных контактов с другими людьми, вполне возможно, они могут оказаться носителями вируса!","Будьте внимательнее к своим родственникам, при первых признаках недомагания следует обратиться в больницу, а не заниматься самолечением! Помните, пожилые люди находятся в группе риска!","Как можно чаще делайте влажную уборку у себя дома, и так же не забывайте проверитривать помещение!","Постарайтесь не трогать свое лицо руками, что бы не занести вирус через слизистые глаз, носа и рта!","Используйте службы доставки на дом, что бы минимизировать контакт с другими людьми!","Что бы скрасить свое времяпрепровождение на карантине займитесь интересными для себя делами! И помните, это очень важно! Будте здоровы!"]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        indexStep = 0
        
        setupInstructionLabel()
        setupImageView()
        setupStepLabel()
        setupNextButton()
        setupBackButton()
        setupCustomLeftItem()
        
        backButton.isHidden = true
    }
    
    private func setupInstructionLabel() {
        instructionsLabel.frame = CGRect(x: 15, y: 400, width: 350, height: 225)
        instructionsLabel.textAlignment = .center
        instructionsLabel.numberOfLines = 6
        instructionsLabel.text = arrayText[indexStep]
        view.addSubview(instructionsLabel)
    }
    
    private func setupImageView() {
        imageView.frame = CGRect(x: 30, y: 140, width: 329, height: 241)
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage(named: arrayImage[indexStep])
        view.addSubview(imageView)
    }
    
    private func setupStepLabel() {
        stepLabel.frame = CGRect(x: 90, y: 415, width: 200, height: 20)
        stepLabel.textAlignment = .center
        stepLabel.font = UIFont(name: "Arial", size: 25)
        stepLabel.textColor = .red
        stepLabel.text = "Правило \(indexStep + 1) из 9"
        view.addSubview(stepLabel)
    }
    
    private func setupNextButton() {
        nextButton.frame = CGRect(x: 225, y: 650, width: 125, height: 50)
        nextButton.backgroundColor = .blue
        nextButton.setTitle("Вперед", for: .normal)
        nextButton.layer.cornerRadius = 5
        nextButton.addTarget(self, action: #selector(pushNextButton(sender:)), for: .touchUpInside)
        view.addSubview(nextButton)
    }
    
    private func setupBackButton() {
        backButton.frame = CGRect(x: 35, y: 650, width: 125, height: 50)
        backButton.backgroundColor = .blue
        backButton.setTitle("Назад", for: .normal)
        backButton.layer.cornerRadius = 5
        backButton.addTarget(self, action: #selector(pushBackButton(sender:)), for: .touchUpInside)
        view.addSubview(backButton)
    }
    
    private func setupCustomLeftItem() {
        navigationItem.setLeftBarButton(UIBarButtonItem(image: UIImage(named: "back"), style: .done, target: self, action: #selector(mainBackItemButton)), animated: true)
    }
    
    @objc func pushNextButton(sender: UIButton) {
        indexStep += 1
        stepLabel.text = "Правило \(indexStep + 1) из 9"
        instructionsLabel.text = arrayText[indexStep]
        imageView.image = UIImage(named: arrayImage[indexStep])
        
        backButton.isHidden = false
        nextButton.isHidden = (indexStep == 8) ? true : false
        
    }
    
    @objc func pushBackButton(sender: UIButton) {
        indexStep -= 1
        stepLabel.text = "Правило \(indexStep + 1) из 9"
        instructionsLabel.text = arrayText[indexStep]
        imageView.image = UIImage(named: arrayImage[indexStep])
        
        nextButton.isHidden = false
        backButton.isHidden = (indexStep == 0) ? true : false
       }
    
    @objc func mainBackItemButton() {
        navigationController?.popViewController(animated: true)
    }
}

