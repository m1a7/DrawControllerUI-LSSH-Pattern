//
//  ViewController.h
//  DrawUINewPattern
//
//  Created by Uber on 17/12/2018.
//  Copyright © 2018 uber. All rights reserved.
//

#import <UIKit/UIKit.h>
// Model
@class  Model;

@interface ViewController : UIViewController

// Model
@property (nonatomic, strong) Model* model;

// UI
@property (nonatomic, strong) UILabel* welcomeLbl;
@property (nonatomic, strong) UIView* rectView;

@end

