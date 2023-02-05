//
//  ViewController.swift
//  Destini
//
//  Created by Димаш Алтынбек on 05.02.2023.
//

import UIKit

class ViewController: UIViewController {
    //MARK: -Views-
    let Image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let newView = ViewElement()
    //MARK: -Life cycle-
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }

    //MARK: -Functions-
    func setUpView() {
        view.addSubview(Image)
        NSLayoutConstraint.activate([
            Image.topAnchor.constraint(equalTo: view.topAnchor),
            Image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            Image.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            Image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        newView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newView)
        NSLayoutConstraint.activate([
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            newView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            newView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }

}

