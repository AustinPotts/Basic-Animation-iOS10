//
//  ViewController.swift
//  BasicAnimations
//
//  Created by James Pacheco on 1/30/19.
//  Copyright © 2019 James Pacheco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var label: UILabel!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLabel()
        configureButtons()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // This ensures the label is centered on the screen to start
        label.center = self.view.center
    }
    
    func configureLabel() {
        label = UILabel(frame: CGRect(x: view.center.x, y: view.center.y, width: 200, height: 200))
        label.widthAnchor.constraint(equalTo: label.heightAnchor).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        label.layer.borderWidth = 2
        label.layer.cornerRadius = 12
        
        label.text = "👮‍♂️"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 96)
    }
    
    func configureButtons() {
        
        let moveButton = UIButton(type: .system)
        moveButton.translatesAutoresizingMaskIntoConstraints = false
        moveButton.setTitle("Move", for: .normal)
        moveButton.addTarget(self, action: #selector(moveButtonTapped), for: .touchUpInside)
        
        let rotateButton = UIButton(type: .system)
        rotateButton.translatesAutoresizingMaskIntoConstraints = false
        rotateButton.setTitle("Rotate", for: .normal)
        rotateButton.addTarget(self, action: #selector(rotateButtonTapped), for: .touchUpInside)
        
        let keyButton = UIButton(type: .system)
        keyButton.translatesAutoresizingMaskIntoConstraints = false
        keyButton.setTitle("Key", for: .normal)
        keyButton.addTarget(self, action: #selector(keyButtonTapped), for: .touchUpInside)
        
        let springButton = UIButton(type: .system)
        springButton.translatesAutoresizingMaskIntoConstraints = false
        springButton.setTitle("Spring", for: .normal)
        springButton.addTarget(self, action: #selector(springButtonTapped), for: .touchUpInside)
        
        let squashButton = UIButton(type: .system)
        squashButton.translatesAutoresizingMaskIntoConstraints = false
        squashButton.setTitle("Squash", for: .normal)
        squashButton.addTarget(self, action: #selector(squashButtonTapped), for: .touchUpInside)
        
        let caButton = UIButton(type: .system)
        caButton.translatesAutoresizingMaskIntoConstraints = false
        caButton.setTitle("CABasic", for: .normal)
        caButton.addTarget(self, action: #selector(caBasicButtonTapped), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [
            moveButton,
            rotateButton,
            keyButton,
            springButton,
            squashButton,
            caButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    
    
    // MARK: - Actions
    
    @objc func moveButtonTapped() {
        
    }
    
    @objc func rotateButtonTapped() {
        
    }
    
    @objc func keyButtonTapped() {
        
    }
    
    @objc func springButtonTapped() {
        
    }
    
    @objc func squashButtonTapped() {
        
    }
    
    @objc func caBasicButtonTapped() {
        
        label.center = view.center
    }
    
    private func randomColor() -> CGColor {
        let red = CGFloat.random(in: 0...255)
        let green = CGFloat.random(in: 0...255)
        let blue = CGFloat.random(in: 0...255)
        
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1.0).cgColor
    }
    
}
