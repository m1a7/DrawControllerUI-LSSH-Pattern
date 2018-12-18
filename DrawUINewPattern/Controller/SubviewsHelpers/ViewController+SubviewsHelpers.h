//
//  ViewController+SubviewsSizes.h
//  DrawUINewPattern
//
//  Created by Uber on 17/12/2018.
//  Copyright © 2018 uber. All rights reserved.
//

#import "ViewController.h"

/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      _______. __    __  .______   ____    ____  __   ___________    __    ____   _______.    __    __   _______  __      .______    _______ .______
     /       ||  |  |  | |   _  \  \   \  /   / |  | |   ____\   \  /  \  /   /  /       |   |  |  |  | |   ____||  |     |   _  \  |   ____||   _  \
    |   (----`|  |  |  | |  |_)  |  \   \/   /  |  | |  |__   \   \/    \/   /  |   (----`   |  |__|  | |  |__   |  |     |  |_)  | |  |__   |  |_)  |
     \   \    |  |  |  | |   _  <    \      /   |  | |   __|   \            /    \   \       |   __   | |   __|  |  |     |   ___/  |   __|  |      /
 .----)   |   |  `--'  | |  |_)  |    \    /    |  | |  |____   \    /\    / .----)   |      |  |  |  | |  |____ |  `----.|  |      |  |____ |  |\  \----.
 |_______/     \______/  |______/      \__/     |__| |_______|   \__/  \__/  |_______/       |__|  |__| |_______||_______|| _|      |_______|| _| `._____|
 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/


/*
 Introduction:
 Категория (SubviewsHelpers) Отвечает за хранение вспомогательных функций (По типу HEX Color).
                             Конфигурационных констант, макросов и т.д.
 Explanation:
 --------------------------------------------------------------------------------
 1. +font_WelcomeLbl  Возвращает метод UIFont с разным по значению шрифтом для
                      разных типов устройств.
 --------------------------------------------------------------------------------
 2. -colorFromHexString      Траснформирует html цвет в UIColor.
 --------------------------------------------------------------------------------
 3. +printMethodName:method  Распечатывает имя текущего метода в консоль.
 --------------------------------------------------------------------------------
 */


#define isPrintMethodName YES
#define printMethod [ViewController printMethodName:isPrintMethodName method:[NSString stringWithFormat:@"%s [Line %d]",__PRETTY_FUNCTION__,__LINE__]];

@interface ViewController (SubviewsHelpers)

#pragma mark - Another UI Helpers (Create UIFonts/ ect...)

+ (UIFont*) font_WelcomeLbl;

#pragma mark - Helpers

- (UIColor *)colorFromHexString:(NSString *)hexString;
+ (void) printMethodName:(BOOL)isPrint method:(NSString*)method;
    
@end
