//
//  ViewElement.swift
//  Destini
//
//  Created by Димаш Алтынбек on 05.02.2023.
//

import Foundation
import UIKit

class ViewElement: UIView {
    
    //MARK: -Views-
    
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Qeastion"
        label.font = UIFont.systemFont(ofSize: 25)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let buttonOne: UIButton = {
        let button = UIButton()
        button.setTitle("First", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.setBackgroundImage(UIImage(named: "img1"), for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.addTarget(self, action: #selector(didTapApp), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonTwo: UIButton = {
        let button = UIButton()
        button.setTitle("Secound", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.titleLabel?.numberOfLines = 0
        button.setBackgroundImage(UIImage(named: "img2"), for: .normal)
        button.addTarget(self, action: #selector(didTapApp), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let storyBrain = StoryBrain()
    
    //MARK: -Life cycle-
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        setText()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -Funcitons-
    private func setUpView() {
        addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
        addSubview(buttonTwo)
        NSLayoutConstraint.activate([
            buttonTwo.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 6),
            buttonTwo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
            buttonTwo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            buttonTwo.heightAnchor.constraint(equalToConstant: 100)
        ])
        addSubview(buttonOne)
        NSLayoutConstraint.activate([
            buttonOne.bottomAnchor.constraint(equalTo: buttonTwo.topAnchor, constant: -6),
            buttonOne.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 6),
            buttonOne.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -6),
            buttonOne.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc func didTapApp(_ sender: UIButton) {
        
        let userAnswear = sender.currentTitle!
        storyBrain.nextQuestion(userAnswear: userAnswear)
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(setText), userInfo: nil, repeats: false)
    }
    
    @objc func setText() {
        label.text = storyBrain.getText()
        
        buttonOne.setTitle(storyBrain.getChoise1(), for: .normal)
        buttonTwo.setTitle(storyBrain.getChoise2(), for: .normal)
    }
}
