//
//  ProfileViewController.swift
//  Navigation_version99
//
//  Created by Pavel Nebogatov on 23.02.2022.
//
import UIKit
import StorageService

 class ProfileViewController: UIViewController {
    
   
    let profileHeaderView = ProfileHeaderView() // так выглядит вонючий экземпляр который сбил меня с толку
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        title = "Profile"
        self.view.addSubview(tableView)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view.addSubview(profileHeaderView) // чтобы прогружался экземпляр
        self.profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        appendPost()
        tableView.delegate = self
        tableView.dataSource = self
<<<<<<< HEAD
        configureLayout()
    }
=======
        
>>>>>>> 89e0e574f2561b5cd84cb403dcceb30bbbada3d2
        
    func configureLayout() {
        [
            self.profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            self.profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            self.profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            self.profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            self.tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            self.tableView.topAnchor.constraint(equalTo: profileHeaderView.bottomAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
            
        ].forEach{$0.isActive = true}
        
        
    }
<<<<<<< HEAD
   
}

    var posts = [Post]()


public func appendPost() {
        
    posts.append(.init(author: "PnebogatovFam", description: "До этого было много текста,но сейчас я психую, потому что гит откатил коммит как то назад и ничего не сохранилось, чуть не разбил ноут", image:"111", likes: 991, views: 1337))
    posts.append(.init(author: "BorisPUG", description: "Опть же текста было оч много", image: "2"  , likes: 719, views: 913))
    posts.append(.init(author: "Cristiano", description: "Скучаю по фк реал мадрид *грустный смайлик*", image: "3", likes: 6060, views: 7777))
    posts.append(.init(author: "RussianRuble", description: "мем смешной ситуация старшная", image: "4", likes: 1, views: 145557576))
}



extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    @objc func buttonPressed() {
        //print(statusLabel.text ?? "Hello") //если есть текст то пишет из статуса если нету то хеллоу
        
    }
    func tableView (_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PostTableViewCell
        let post = posts[indexPath.row]
        cell.configure(with:post)
        self.tableView.rowHeight = UITableView.automaticDimension
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.rowHeight
    }
}
=======
}

        var posts = [Post]()
        

func appendPost() {
        
    posts.append(.init(author: "PnebogatovFam", description: "До этого было много текста,но сейчас я психую, потому что гит откатил коммит как то назад и ничего не сохранилось, чуть не разбил ноут", image:"111", likes: 991, views: 1337))
    posts.append(.init(author: "BorisPUG", description: "Опть же текста было оч много", image: "2"  , likes: 719, views: 913))
    posts.append(.init(author: "Cristiano", description: "Скучаю по фк реал мадрид *грустный смайлик*", image: "3", likes: 6060, views: 7777))
    posts.append(.init(author: "RussianRuble", description: "мем смешной ситуация старшная", image: "4", likes: 1, views: 145557576))
}


extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView (_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PostTableViewCell
        let post = posts[indexPath.row]
        cell.configure(with:post)
        self.tableView.rowHeight = UITableView.automaticDimension
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.rowHeight
    }
}
>>>>>>> 89e0e574f2561b5cd84cb403dcceb30bbbada3d2
