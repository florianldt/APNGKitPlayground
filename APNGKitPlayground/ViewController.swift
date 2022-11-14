//
//  ViewController.swift
//  APNGKitPlayground
//
//  Created by Florian Ludot on 11/14/22.
//

import APNGKit
import UIKit

class ViewController: UIViewController {
    private let image: APNGImageView = {
        let img = try! APNGImage(named: "elephant")
        let view = APNGImageView(image: img)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(image)

        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.widthAnchor.constraint(equalToConstant: 200),
            image.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}

