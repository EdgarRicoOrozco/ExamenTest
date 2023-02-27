//
//  File.swift
//  ExamenTest
//
//  Created by Phinder 2022 on 26/02/23.
//

import UIKit

internal class collOne: UICollectionViewCell {

    private lazy var containerMain: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public lazy var imageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        return image
    }()
    
    public static let identifier: String = "CollOne"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIElements()
        setupConstraints()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupUIElements() {
        self.addSubview(containerMain)
        containerMain.addSubview(imageView)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            containerMain.topAnchor.constraint(equalTo: topAnchor),
            containerMain.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerMain.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerMain.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            imageView.topAnchor.constraint(equalTo: containerMain.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: containerMain.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: containerMain.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: containerMain.bottomAnchor)
        ])
    }
}
