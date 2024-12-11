//
//  OnboardingViewController.swift
//  fruitapp
//
//  Created by Naveed Khalid on 07/12/2024.
//

import UIKit

class OnboardingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
   
    var onboardingArr = [["image":"loginImage","head":"BERRY JUICE","subhead":"We provide a variety of fresh juices with various flavours. Get fresh juices easily"],
                         ["image":"item2","head":"ORANGE JUICE","subhead":"A “Moments of healthy sip The best vitamin for your health"],]
    
    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingCollectionView.delegate = self
        onboardingCollectionView.dataSource = self
        onboardingCollectionView.register(UINib(nibName: "OnboardingCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "OnboardingCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onboardingArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCollectionViewCell", for: indexPath) as! OnboardingCollectionViewCell
        cell.onboardingImg.image = UIImage(named: onboardingArr[indexPath.row]["image"] ?? "")
        cell.onboardingLbl.text = onboardingArr[indexPath.row]["head"]
        cell.onboardingDes.text = onboardingArr[indexPath.row]["subhead"]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 563)
      }
    
    @IBAction func exploreNowBtnAction(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
