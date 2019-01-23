//
//  AvatarPickerVCViewController.swift
//  Smack-Demo
//
//  Created by Ethan  on 23/1/19.
//  Copyright © 2019 Ethan . All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    // MARK: outlets

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    // MARK: variables
    var avatarType = AvatarType.dark
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    

    @IBAction func segmentControlChanged(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            self.avatarType = AvatarType.dark
        } else {
            self.avatarType = AvatarType.light
        }
        // reload data
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var numOfColumns : CGFloat = 3
        if UIScreen.main.bounds.width > 400 {
            numOfColumns = 4
        }
        
        let spaceBetweenCells : CGFloat = 10
        let padding : CGFloat = 40
        let cellDimension = ((collectionView.bounds.width - padding) - (numOfColumns - 1) * spaceBetweenCells) / numOfColumns
        
        return CGSize(width: cellDimension, height: cellDimension)
    }
    
    
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            cell.configureCell(index: indexPath.item, type: self.avatarType)
            return cell
        }
        return AvatarCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatarType == .dark {
            UserDataService.instance.setAvatarName(avatarname: "dark\(indexPath.item)")
        } else {
            UserDataService.instance.setAvatarName(avatarname: "light\(indexPath.item)")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}
