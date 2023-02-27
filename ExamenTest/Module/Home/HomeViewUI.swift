//
//  HomeViewUI.swift
//  ExamenTest
//
//  Created Phinder 2022 on 25/02/23.
//  2023 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

protocol HomeViewUIDelegate {
    
}

class HomeViewUI: UIView{
    
    private lazy var navigationBar: UINavigationBar = {
        let navigationController = UINavigationBar(frame: .zero)
        navigationController.translatesAutoresizingMaskIntoConstraints = false
        navigationController.backgroundColor = .white
        return navigationController
    }()
    
    private lazy var contentView: UIView = {
        let scrollview = UIView(frame: .zero)
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        scrollview.backgroundColor = .white
        return scrollview
    }()
    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var toolBar: UIToolbar = {
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 100.0, height: 44.0))
        let botonAceptar = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(finishEditing))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        botonAceptar.tag = 0
        toolbar.setItems([spacer,botonAceptar], animated: true)
        return toolbar
    }()
    
    lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Home"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 26)
        label.textColor = .black
        return label
    }()
    
    lazy var topLine: UIView = {
       let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var iconImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "icon-search")?.withTintColor(.gray)
        return image
    }()
    
    private lazy var searchTextfield: UITextField = {
       let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.backgroundColor = .white
        textfield.textColor = .black
        textfield.placeholder = "Buscar"
        textfield.setPlaceholderTextColor(color: .gray)
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 10))
        textfield.leftViewMode = .always
        textfield.inputAccessoryView = toolBar
        textfield.layer.cornerRadius = 20
        textfield.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 100)
        textfield.layer.shadowRadius = 1.0
        textfield.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        textfield.layer.shadowOpacity = 1.0
        return textfield
    }()
    
    lazy var titleViewLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Test Text"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 26)
        label.textColor = .black
        return label
    }()
    
    lazy var subCardView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 100)
        view.layer.shadowRadius = 1.0
        view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        view.layer.shadowOpacity = 1.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lorem Ipsum"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 22)
        label.textColor = .black
        return label
    }()
    
    lazy var subNameLabel: UILabel = {
        let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.text = "Lorem Ipsum"
         label.textAlignment = .right
         label.font = .boldSystemFont(ofSize: 12)
         label.textColor = .gray
         return label
     }()
    
    lazy var textInfoTextView: UITextView = {
       let text = UITextView()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five"
        text.textColor = .black
        text.backgroundColor = .white
        text.isEditable = false
        return text
    }()
    
    lazy var titleCollOneLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Test Coll"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 26)
        label.textColor = .black
        return label
    }()
    
    private lazy var oneCollection: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.backgroundColor = .clear
        collectionView.collectionViewLayout = UICollectionViewFlowLayout.init()
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(collOne.self, forCellWithReuseIdentifier: collOne.identifier)
        return collectionView
    }()
    
    lazy var titleCollTwoLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Test Coll 2"
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 26)
        label.textColor = .black
        return label
    }()
    
    private lazy var twoCollection: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        collectionView.backgroundColor = .clear
        collectionView.collectionViewLayout = UICollectionViewFlowLayout.init()
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(collTwo.self, forCellWithReuseIdentifier: collTwo.identifier)
        return collectionView
    }()
    
    lazy var bottonLine: UIView = {
       let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var delegate: HomeViewUIDelegate?
    var navigationController: UINavigationController?
    var oneArray = [0,1,2,0,1,2,0,1,2]
    var twoArray = [3,4,3,4,3,4,3,4,3,4]
    
    public convenience init(
        delegate: HomeViewUIDelegate){
        self.init()
        self.delegate = delegate
            setupUIElements()
            setupConstraints()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    fileprivate func setupUIElements(){
        let cardViewElements = [topLine,titleLabel,searchTextfield,titleViewLabel,iconImage,subCardView,nameLabel,subNameLabel,textInfoTextView,titleCollOneLabel,oneCollection,titleCollTwoLabel,twoCollection,bottonLine]
        self.addSubview(contentView)
        self.addSubview(navigationBar)
        contentView.addSubview(cardView)
        cardViewElements.map{
            cardView.addSubview($0)
        }
    }
    
    fileprivate func setupConstraints(){
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: self.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        
            contentView.topAnchor.constraint(equalTo: self.navigationBar.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            ///CardView
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cardView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            cardView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            cardView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            cardView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            cardView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: cardView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
            
            topLine.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 5),
            topLine.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            topLine.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            topLine.heightAnchor.constraint(equalToConstant: 1),
            
            searchTextfield.topAnchor.constraint(equalTo: topLine.bottomAnchor,constant: 10),
            searchTextfield.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            searchTextfield.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            searchTextfield.heightAnchor.constraint(equalToConstant: 50),
            
            iconImage.centerYAnchor.constraint(equalTo: searchTextfield.centerYAnchor),
            iconImage.leadingAnchor.constraint(equalTo: searchTextfield.leadingAnchor,constant: 10),
            iconImage.heightAnchor.constraint(equalToConstant: 30),
            iconImage.widthAnchor.constraint(equalToConstant: 30),
            
            titleViewLabel.topAnchor.constraint(equalTo: searchTextfield.bottomAnchor,constant: 20),
            titleViewLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            titleViewLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            titleViewLabel.heightAnchor.constraint(equalToConstant: 30),
            
            subCardView.topAnchor.constraint(equalTo: titleViewLabel.bottomAnchor,constant: 20),
            subCardView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            subCardView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            
            nameLabel.topAnchor.constraint(equalTo: subCardView.topAnchor,constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: subCardView.leadingAnchor,constant: 10),
            nameLabel.widthAnchor.constraint(equalToConstant: 150),
            
            subNameLabel.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor),
            subNameLabel.trailingAnchor.constraint(equalTo: subCardView.trailingAnchor,constant: -10),
            
            textInfoTextView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 5),
            textInfoTextView.leadingAnchor.constraint(equalTo: subCardView.leadingAnchor,constant: 5),
            textInfoTextView.trailingAnchor.constraint(equalTo: subCardView.trailingAnchor,constant: -5),
            textInfoTextView.bottomAnchor.constraint(equalTo: subCardView.bottomAnchor,constant: -10),
            
            titleCollOneLabel.topAnchor.constraint(equalTo: subCardView.bottomAnchor,constant: 10),
            titleCollOneLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            titleCollOneLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            titleCollOneLabel.heightAnchor.constraint(equalToConstant: 30),
            
            oneCollection.topAnchor.constraint(equalTo: titleCollOneLabel.bottomAnchor,constant: 10),
            oneCollection.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            oneCollection.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            oneCollection.heightAnchor.constraint(equalTo: cardView.heightAnchor,multiplier: 0.20),
            
            titleCollTwoLabel.topAnchor.constraint(equalTo: oneCollection.bottomAnchor,constant: 10),
            titleCollTwoLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            titleCollTwoLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            titleCollTwoLabel.heightAnchor.constraint(equalToConstant: 30),
            
            twoCollection.topAnchor.constraint(equalTo: titleCollTwoLabel.bottomAnchor,constant: 10),
            twoCollection.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            twoCollection.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            twoCollection.bottomAnchor.constraint(equalTo: bottonLine.topAnchor,constant: -20),
            twoCollection.heightAnchor.constraint(equalTo: cardView.heightAnchor,multiplier: 0.20),
            
            bottonLine.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: 0),
            bottonLine.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            bottonLine.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            bottonLine.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    @objc func finishEditing(){
        self.endEditing(true)
    }


}

extension HomeViewUI: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == oneCollection {
            return oneArray.count
        }else if collectionView == twoCollection{
            return twoArray.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == oneCollection {
            let collection = collectionView.dequeueReusableCell(withReuseIdentifier: collOne.identifier, for: indexPath) as! collOne
            let book = oneArray[indexPath.row]
            collection.imageView.image = UIImage(named: "Book_\(book)")
            return collection
        }else if collectionView == twoCollection{
            let collection = collectionView.dequeueReusableCell(withReuseIdentifier: collTwo.identifier, for: indexPath) as! collTwo
            let book = twoArray[indexPath.row]
            collection.imageView.image = UIImage(named: "Book_\(book)")
            return collection
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == oneCollection{
            let width   = oneCollection.frame.width/4 + 8
            let height  = UIScreen.main.bounds.height < 667 ? 100.0 : 124.0
            return CGSize(width: width, height: 160)
        }else if collectionView == twoCollection {
            let width   = oneCollection.frame.width/3 + 8
            let height  = oneCollection.frame.height + 8
            return CGSize(width: width, height: height)
        }
        return CGSize(width: 100, height: 100)
    }
    
}



