//
//  ViewController.swift
//  Blue
//
//  Created by Michael Linker on 8/17/18.
//  Copyright © 2018 John Hersey Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    @IBOutlet var ImageViewsForLion: [UIImageView]!
    @IBOutlet weak var realView: UIView!
    var firstSelect = true
    var firstImageView = UIImageView()
    var secondImage = UIImageView()
    var arrayOfImages: [UIImage] = [UIImage(named: "image_part_001")!,UIImage(named: "image_part_002")!,UIImage(named: "image_part_003")!,UIImage(named: "image_part_004")!,UIImage(named: "image_part_005")!,UIImage(named: "image_part_006")!,UIImage(named: "image_part_007")!,UIImage(named: "image_part_008")!,UIImage(named: "image_part_009")!,]
    override func viewDidLoad() {
        super.viewDidLoad()
        print(ImageViewsForLion.count)
        for image in ImageViewsForLion {
            switch counter {
            case 0:
                image.tag = 33
                counter += 1
            case 1:
                image.tag = 22
                counter += 1
            case 2:
                image.tag = 12
                counter += 1
            case 3:
                image.tag = 32
                counter += 1
            case 4:
                image.tag = 23
                counter += 1
            case 5:
                image.tag = 21
                counter += 1
            case 6:
                image.tag = 31
                counter += 1
            case 7:
                image.tag = 13
                counter += 1
            case 8:
                image.tag = 11
            default:
                print("you broke it")
            }
        }
        
    }
    
    
    @IBAction func whenTappedOnLion(_ sender: UITapGestureRecognizer) {
        print("clicked")
        let selectedPoint =  sender.location(in: realView)
        print(selectedPoint)
        for image in ImageViewsForLion {
            switch image.tag {
            case 11:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 0).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint), (firstImageView.tag == 21 || firstImageView.tag == 12) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            case 12:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 0).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint),  (firstImageView.tag == 22 ||  firstImageView.tag == 13 ||  firstImageView.tag == 11) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            case 13:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 0).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint),  (firstImageView.tag == 12 ||  firstImageView.tag == 23) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            case 21:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 000).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint), (firstImageView.tag == 22 ||  firstImageView.tag == 31 || firstImageView.tag == 11) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            case 22:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 000).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint), (firstImageView.tag == 32 ||  firstImageView.tag == 23 || firstImageView.tag == 21 || firstImageView.tag == 12) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            case 23:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 000).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint), (firstImageView.tag == 22 || firstImageView.tag == 33 || firstImageView.tag == 13) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            case 31:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 000).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint),  (firstImageView.tag == 32 || firstImageView.tag == 21) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            case 32:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 000).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint), (firstImageView.tag == 22 ||  firstImageView.tag == 31 || firstImageView.tag == 33) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            case 33:print("I ran")
            if image.frame.offsetBy(dx: 0, dy: 000).contains(selectedPoint), firstSelect {
                firstImageView = image
                firstImageView.tag = image.tag
                firstSelect = false
                print("\(image.tag)" + "supposed to be first image")
            }else if image.frame.contains(selectedPoint),  (firstImageView.tag == 23 || firstImageView.tag == 32) {
                secondImage = image
                firstSelect = true
                print("\(image.tag)" + "is supposed to be second image")
                swapPieces(imageView1: firstImageView, imageView2: secondImage)
                }
            default:
                print("you broke it")
            }
            /*   if image.tag == 11 || image.tag == 12 || image.tag == 13 {
             if image.frame.offsetBy(dx: 0, dy: 0).contains(selectedPoint) {
             firstImageView = image firstImageView.tag = image.tag
             firstSelect = false
             print("\(image.tag)" + "supposed to be first image")
             }else if image.frame.contains(selectedPoint) {
             secondImage = image
             firstSelect = true
             print("\(image.tag)" + "is supposed to be second image")
             swapPieces(imageView1: firstImageView, imageView2: secondImage)
             }
             }
             //      print(image.frame.offsetBy(dx: 0, dy: 90))
             //      print(image.frame)
             if image.frame.contains(selectedPoint), firstSelect {
             firstImageView = image firstImageView.tag = image.tag
             firstSelect = false
             print("\(image.tag)" + "supposed to be first image")
             }else if image.frame.contains(selectedPoint) {
             secondImage = image
             firstSelect = true
             print("\(image.tag)" + "is supposed to be second image")
             swapPieces(imageView1: firstImageView, imageView2: secondImage)
             } */
        }
    }
    func swapPieces(imageView1: UIImageView, imageView2: UIImageView) {
        let tempImage = imageView2.image
        imageView2.image = imageView1.image
        imageView1.image = tempImage
        
    }
    @IBAction func whenScrambleButtonClicked(_ sender: UIButton) {
        for imageView in ImageViewsForLion {
            var randomImage = arrayOfImages.randomElement()!
            imageView.image = randomImage
            var randomImageIndex = arrayOfImages.lastIndex(of: randomImage)!
            arrayOfImages.remove(at: randomImageIndex)
        }
    }
    
}

