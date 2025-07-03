//
//  HeroCollectionViewCell.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 30/06/25.
//

import UIKit

class HeroCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var heroImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .yellow
        image.layer.cornerRadius = K.Size.body
        return image
    }()
    
    var containerLabel: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0, alpha: 0.7)
        view.layer.cornerRadius = K.Size.title
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        return view
        
    }()
    
    var heroNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cool Comics"
        label.textColor = .white
        label.font = UIFont(name: K.Fonts.badaBoom, size: K.Size.large)
        label.numberOfLines = 1
        return label
    }()
    
    fileprivate func setupCell() {
        contentView.addSubview(heroImage)
        heroImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: K.Size.small).isActive = true
        heroImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -K.Size.small).isActive = true
        heroImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: K.Size.small).isActive = true
        heroImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -K.Size.small).isActive = true
        
        contentView.addSubview(containerLabel)
        containerLabel.leadingAnchor.constraint(equalTo: heroImage.leadingAnchor).isActive = true
        containerLabel.trailingAnchor.constraint(equalTo: heroImage.trailingAnchor).isActive = true
        containerLabel.bottomAnchor.constraint(equalTo: heroImage.bottomAnchor).isActive = true
        containerLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        contentView.addSubview(heroNameLabel)
        heroNameLabel.leadingAnchor.constraint(equalTo: containerLabel.leadingAnchor, constant: K.Size.small).isActive = true
        heroNameLabel.trailingAnchor.constraint(equalTo: containerLabel.trailingAnchor, constant: -K.Size.small).isActive = true
        heroNameLabel.centerYAnchor.constraint(equalTo: containerLabel.centerYAnchor).isActive = true

        
    }
    
}
