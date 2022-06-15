//
//  PostTableViewCell.swift
//  Navigation_version99
//
//  Created by Pavel Nebogatov on 22.04.2022.
//

import UIKit
<<<<<<< HEAD
import StorageService
=======
>>>>>>> 89e0e574f2561b5cd84cb403dcceb30bbbada3d2

class PostTableViewCell : UITableViewCell{
   
    let authorLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        return label
    }()
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private var postImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .black
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var likesLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var viewsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        addSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with model: Post) {
        authorLabel.text = model.author
        postImage.image = UIImage(named: model.image)
        descriptionLabel.text = model.description
        likesLabel.text = "likes: \(model.likes)"
        viewsLabel.text = "views: \(model.views)"
    }
    
    func addSubviews() {
        addSubview(authorLabel)
        addSubview(descriptionLabel)
        addSubview(postImage)
        addSubview(likesLabel)
        addSubview(viewsLabel)
        
            [
            
            authorLabel.topAnchor.constraint(equalTo: topAnchor),
            authorLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            authorLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            authorLabel.heightAnchor.constraint(equalToConstant: 40),
            
            postImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            postImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            postImage.topAnchor.constraint(equalTo: authorLabel.bottomAnchor),
            postImage.heightAnchor.constraint(equalTo: postImage.widthAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 100),
            
            likesLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            likesLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            likesLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            likesLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -3),
            likesLabel.heightAnchor.constraint(equalToConstant: 60),
            
            viewsLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            viewsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            viewsLabel.heightAnchor.constraint(equalToConstant: 60)
            ].forEach{$0.isActive = true}
    }
    
    
    
}
