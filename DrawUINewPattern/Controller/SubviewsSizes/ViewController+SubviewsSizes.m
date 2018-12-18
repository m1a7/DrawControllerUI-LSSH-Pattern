//
//  ViewController+SubviewsSizes.m
//  DrawUINewPattern
//
//  Created by Uber on 17/12/2018.
//  Copyright © 2018 uber. All rights reserved.
//

#import "ViewController+SubviewsSizes.h"
// Another Categories
#import "ViewController+SubviewsStyles.h"
#import "ViewController+SubviewsHelpers.h"

// Model
#import "Model.h"

// Marcos
#define IDIOM    UI_USER_INTERFACE_IDIOM()
#define IPAD     UIUserInterfaceIdiomPad
#define offset 20.f


@implementation ViewController (SubviewsSizes)

#pragma mark - Calculate size and coordinate for subviews
/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      _______. __    __  .______   ____    ____  __   ___________    __    ____   _______.        _______. __   ________   _______
     /       ||  |  |  | |   _  \  \   \  /   / |  | |   ____\   \  /  \  /   /  /       |       /       ||  | |       /  |   ____|
    |   (----`|  |  |  | |  |_)  |  \   \/   /  |  | |  |__   \   \/    \/   /  |   (----`      |   (----`|  | `---/  /   |  |__
     \   \    |  |  |  | |   _  <    \      /   |  | |   __|   \            /    \   \           \   \    |  |    /  /    |   __|
 .----)   |   |  `--'  | |  |_)  |    \    /    |  | |  |____   \    /\    / .----)   |      .----)   |   |  |   /  /----.|  |____
 |_______/     \______/  |______/      \__/     |__| |_______|   \__/  \__/  |_______/       |_______/    |__|  /________||_______|
 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*
 1. - (CGRect) cgrectFor_WelcomeLblwithModel:(Model*) model withParentFrame:(CGRect) frame; - Расчет для верхнего UILabel
 2 .- (CGRect) cgrectFor_RectViewWithModel:(Model*)   model withParentFrame:(CGRect) frame  - Расчет для нижниего UIView.
 */

- (CGRect) cgrectFor_WelcomeLblwithModel:(Model*) model withParentFrame:(CGRect) frame{
    
    //printMethod;
    if (CGRectIsEmpty(frame) || CGRectIsNull(frame)){
        frame = self.view.frame;
    }
    // Устанавливаем точки отсчета
    float x = offset;
    float y = offset;
    // Инициализируем переменную, от содержания которой будем расчитывать размер
    NSString* text  = (model.textMainLbl) ? model.textMainLbl : @"mockup text";
    // Создаем переменные куда будут записаны ширина и высота
    float height    = 50.f;   // mockupValue
    float width     = 50.f;   // mockupValue
    
    // Создаем экземпляр UILabel для дальнейшего расчета
    UILabel* lblForCalulating = [UILabel new];
    // Устанавливаем стили для label (рамзеры/типы/цвет шрифта ит.д.)
    [self setupUI_WelcomeLbl:lblForCalulating];
    // Вставляем текст в подготовленный label
    lblForCalulating.text = text;
    
    CGSize neededSize =  CGSizeZero;
    
    // Определение значений ширины в разных ориентациях
    UIInterfaceOrientation  orientation  = [[UIApplication sharedApplication] statusBarOrientation];
    if ((orientation == UIInterfaceOrientationPortrait) || (orientation ==UIInterfaceOrientationPortraitUpsideDown)) {
        width  = CGRectGetWidth(frame) - (offset * 2);
    }
    if ((orientation == UIInterfaceOrientationLandscapeLeft) || (orientation ==UIInterfaceOrientationLandscapeRight)) {
        width  = CGRectGetWidth(frame)/2 - (offset * 2);
    }
    // Непосредственный расчет размеров
    neededSize = [lblForCalulating sizeThatFits:CGSizeMake(width , CGFLOAT_MAX)];
    height = neededSize.height;
    return  CGRectMake(x, y, width, height);
}


- (CGRect) cgrectFor_RectViewWithModel:(Model*) model withParentFrame:(CGRect) frame{
    //printMethod;
    // В данном методе координаты вью расчитываются отталкиваясь от координат label
    // Потому что высота у label динамическая, а наша вью должна иметь координату Y
    // CGRectGetMaxY(label.frame)+offset
    
    float height = 0;
    float width = 0;
    float x = 0;
    float y = 0;
    
    if (CGRectIsEmpty(frame) || CGRectIsNull(frame)){
        frame = self.view.frame;
    }
    // Another layout and design for another orientation
    UIInterfaceOrientation  orientation  = [[UIApplication sharedApplication] statusBarOrientation];
    if ((orientation == UIInterfaceOrientationPortrait) || (orientation ==UIInterfaceOrientationPortraitUpsideDown)) {
        
        width  = CGRectGetWidth(frame) - (offset * 2);
        height = CGRectGetHeight(frame)- ((CGRectGetMaxY(self.welcomeLbl.frame)+offset) + (offset));
        y = CGRectGetMaxY(self.welcomeLbl.frame)+offset;
        x = offset;
    }
    if ((orientation == UIInterfaceOrientationLandscapeLeft) || (orientation ==UIInterfaceOrientationLandscapeRight)) {
        
        y = offset;
        x = CGRectGetMaxX(self.welcomeLbl.frame)+offset;
        width  = CGRectGetWidth(frame)-x-offset;
        height = CGRectGetHeight(frame)-(offset*2);
    }
    
    return  CGRectMake(x, y, width, height);
}

@end
