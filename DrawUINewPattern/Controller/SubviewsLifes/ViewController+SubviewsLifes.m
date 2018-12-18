//
//  ViewController+SubviewsLifes.m
//  DrawUINewPattern
//
//  Created by Uber on 17/12/2018.
//  Copyright © 2018 uber. All rights reserved.
//

#import "ViewController+SubviewsLifes.h"
// Import Anothers Categories
#import "ViewController+SubviewsStyles.h"
#import "ViewController+SubviewsSizes.h"
#import "ViewController+SubviewsHelpers.h"
// Model
#import "Model.h"

@implementation ViewController (SubviewsLifes)

#pragma mark - Private UI methods for work with subviews
/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      _______. __    __  .______   ____    ____  __   ___________    __    ____   _______.    __       __   _______  _______
     /       ||  |  |  | |   _  \  \   \  /   / |  | |   ____\   \  /  \  /   /  /       |   |  |     |  | |   ____||   ____|
    |   (----`|  |  |  | |  |_)  |  \   \/   /  |  | |  |__   \   \/    \/   /  |   (----`   |  |     |  | |  |__   |  |__
     \   \    |  |  |  | |   _  <    \      /   |  | |   __|   \            /    \   \       |  |     |  | |   __|  |   __|
 .----)   |   |  `--'  | |  |_)  |    \    /    |  | |  |____   \    /\    / .----)   |      |  `----.|  | |  |     |  |____
 |_______/     \______/  |______/      \__/     |__| |_______|   \__/  \__/  |_______/       |_______||__| |__|     |_______|
 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*
 1. - (void) groupOfActionsForPreparationControllersUI;         - Вызывает все нижние методы в хронологическом порядке.
 2. - (void) removeAllSubviewsFromSuperViewAndSetToNil;         - Удаляем все subviews и устанавливаем их в nil.
 3. - (void) initSubviewsByModel:(Model*)           model;      - Инициализируем все subviews (Тут просто создаем. БЕЗ НАСТРОЕК!).
 4. - (void) updateStylesForUIByModel:(Model*)      model;      - Устанавливаем UI стили.
 5. - (void) putContentInSubviewsFromModel:(Model*) model;      - Вставляем контент.
 6. - (void) resizeSubviewsByModel:(Model*)         model;      - Расчитываем новые координаты и размеры для всех subviews.
 7. - (void) addSubviewsOnSuperView;                            - Добавляем все subviews на self.view.
 */

#pragma mark - Life cycle of UI subviews

- (void) groupOfActionsForPreparationControllersUI{
    printMethod;
    if (self.view){
        [self removeAllSubviewsFromSuperViewAndSetToNil];
        [self initSubviewsByModel:           self.model];
        [self updateStylesForUIByModel:      self.model];
        [self putContentInSubviewsFromModel: self.model];
        [self resizeSubviewsByModel:self.model];
        [self addSubviewsOnSuperView];
    }
}

- (void) removeAllSubviewsFromSuperViewAndSetToNil{
    printMethod;
    for (UIView* subview in self.view.subviews){
        [subview removeFromSuperview];
    }
    self.welcomeLbl = nil;
    self.rectView   = nil;
}

- (void) initSubviewsByModel:(Model*) model {
    printMethod;
    if (self.view){
        self.welcomeLbl  = [UILabel new];
        self.rectView    = [UIView new];
    }
}

- (void) updateStylesForUIByModel:(Model*) model{
    printMethod;
    if (self.welcomeLbl)  [self setupUI_WelcomeLbl:  self.welcomeLbl];
    if (self.rectView)    [self setupUI_RectView:    self.rectView];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void) putContentInSubviewsFromModel:(Model*) model{
    printMethod;
    self.welcomeLbl.text = self.model.textMainLbl;
}


- (void) resizeSubviewsByModel:(Model*) model {
    printMethod;
    if (self.view){
        if (self.welcomeLbl) { self.welcomeLbl.frame   = [self cgrectFor_WelcomeLblwithModel:model withParentFrame:self.view.frame]; }
        if (self.rectView)   { self.rectView.frame     = [self cgrectFor_RectViewWithModel:model   withParentFrame:self.view.frame]; }
    }
}

- (void) addSubviewsOnSuperView {
    printMethod;
    if (self.view){
        if (self.welcomeLbl){  [self.view addSubview:self.welcomeLbl];}
        if (self.rectView)  {  [self.view addSubview:self.rectView];}
    }
}

@end
