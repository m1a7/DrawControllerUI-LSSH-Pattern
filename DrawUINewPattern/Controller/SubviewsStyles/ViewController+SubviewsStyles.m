//
//  ViewController+SubviewsStyles.m
//  DrawUINewPattern
//
//  Created by Uber on 17/12/2018.
//  Copyright © 2018 uber. All rights reserved.
//

#import "ViewController+SubviewsStyles.h"
// Import Anothers Categories
#import "ViewController+SubviewsHelpers.h"

@implementation ViewController (SubviewsStyles)

#pragma mark  - Setup (UI-settings) for subviews

/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      _______. __    __  .______   ____    ____  __   ___________    __    ____   _______.    __       __   _______  _______
     /       ||  |  |  | |   _  \  \   \  /   / |  | |   ____\   \  /  \  /   /  /       |   |  |     |  | |   ____||   ____|
    |   (----`|  |  |  | |  |_)  |  \   \/   /  |  | |  |__   \   \/    \/   /  |   (----`   |  |     |  | |  |__   |  |__
     \   \    |  |  |  | |   _  <    \      /   |  | |   __|   \            /    \   \       |  |     |  | |   __|  |   __|
 .----)   |   |  `--'  | |  |_)  |    \    /    |  | |  |____   \    /\    / .----)   |      |  `----.|  | |  |     |  |____
 |_______/     \______/  |______/      \__/     |__| |_______|   \__/  \__/  |_______/       |_______||__| |__|     |_______|
 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*
 1. - (void) setupUI_WelcomeLbl:(UILabel*) label;   -  Задает параметра шрифта для UILabel.
 2. - (void) setupUI_RectView:(UIView*) rectView;   -  Задает цвет для UIView.
*/

- (void) setupUI_WelcomeLbl:(UILabel*) label
{
    UIFont * customFont = [ViewController font_WelcomeLbl];
    label.font = customFont;
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByWordWrapping;
    label.textColor       = [UIColor blackColor];
    label.backgroundColor = [UIColor blueColor];
    label.textAlignment   = NSTextAlignmentCenter;
}

- (void) setupUI_RectView:(UIView*) rectView
{
    rectView.backgroundColor = [UIColor blueColor];
}



@end
