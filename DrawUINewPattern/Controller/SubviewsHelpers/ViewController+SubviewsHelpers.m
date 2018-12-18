//
//  ViewController+SubviewsSizes.m
//  DrawUINewPattern
//
//  Created by Uber on 17/12/2018.
//  Copyright © 2018 uber. All rights reserved.
//

#import "ViewController+SubviewsHelpers.h"
// Marcos
#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad


@implementation ViewController (SubviewsHelpers)

#pragma mark - Another UI Helpers (Create UIFonts/ ect...)

/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      _______. __    __  .______   ____    ____  __   ___________    __    ____   _______.    __    __   _______  __      .______    _______ .______
     /       ||  |  |  | |   _  \  \   \  /   / |  | |   ____\   \  /  \  /   /  /       |   |  |  |  | |   ____||  |     |   _  \  |   ____||   _  \
    |   (----`|  |  |  | |  |_)  |  \   \/   /  |  | |  |__   \   \/    \/   /  |   (----`   |  |__|  | |  |__   |  |     |  |_)  | |  |__   |  |_)  |
     \   \    |  |  |  | |   _  <    \      /   |  | |   __|   \            /    \   \       |   __   | |   __|  |  |     |   ___/  |   __|  |      /
 .----)   |   |  `--'  | |  |_)  |    \    /    |  | |  |____   \    /\    / .----)   |      |  |  |  | |  |____ |  `----.|  |      |  |____ |  |\  \----.
 |_______/     \______/  |______/      \__/     |__| |_______|   \__/  \__/  |_______/       |__|  |__| |_______||_______|| _|      |_______|| _| `._____|
 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*
 1. + (UIFont*) font_WelcomeLbl;                                     - Возвращает шрифт с разным размером для iphone/ipad.
 2. - (UIColor *)colorFromHexString:(NSString *)hexString;           - Создает UIColor из html color string.
 3. + (void) printMethodName:(BOOL)isPrint method:(NSString*)method; - Распечатывает в консоль имя текущего метода.
 
 */

+(UIFont*) font_WelcomeLbl{
    float size = (IDIOM == IPAD) ? 30.f  : 20.f;
    return [UIFont fontWithName:@"Arial" size:size];
}

#pragma mark - Helpers

- (UIColor *)colorFromHexString:(NSString *)hexString {    
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

+ (void) printMethodName:(BOOL)isPrint method:(NSString*)method
{
    if (isPrint){
        NSLog(@"%@",method);
    }
}

@end
