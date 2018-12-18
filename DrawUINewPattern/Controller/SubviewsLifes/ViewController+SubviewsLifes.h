//
//  ViewController+SubviewsLifes.h
//  DrawUINewPattern
//
//  Created by Uber on 17/12/2018.
//  Copyright © 2018 uber. All rights reserved.
//

#import "ViewController.h"
@class Model;

/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      _______. __    __  .______   ____    ____  __   ___________    __    ____   _______.    __       __   _______  _______
     /       ||  |  |  | |   _  \  \   \  /   / |  | |   ____\   \  /  \  /   /  /       |   |  |     |  | |   ____||   ____|
    |   (----`|  |  |  | |  |_)  |  \   \/   /  |  | |  |__   \   \/    \/   /  |   (----`   |  |     |  | |  |__   |  |__
     \   \    |  |  |  | |   _  <    \      /   |  | |   __|   \            /    \   \       |  |     |  | |   __|  |   __|
 .----)   |   |  `--'  | |  |_)  |    \    /    |  | |  |____   \    /\    / .----)   |      |  `----.|  | |  |     |  |____
 |_______/     \______/  |______/      \__/     |__| |_______|   \__/  \__/  |_______/       |_______||__| |__|     |_______|
 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*
 Introduction:
 Категория (SubviewsLifes) Отвечает за методы жизнинного цикла Subviews.
 Explanation:
 --------------------------------------------------------------------------------
 1. -groupOfActionsForPreparationControllersUI. По очереди вызывает методы создания,
    обновления и добавления готовых Subviews на экран.
 --------------------------------------------------------------------------------
 2. -removeAllSubviewsFromSuperViewAndSetToNil. Удаляет все проперти с superView и
    устанавливает их в nil.
 --------------------------------------------------------------------------------
 3. -initSubviewsByModel: Только инициализирует вью. (Но не добавляет их не
    устанавливает UI стили).
 --------------------------------------------------------------------------------
 4. -updateStylesForUIByModel: Устанавливает стили для subviews. (Размеры шрифта,
    цвет, оттенки и т.д.)
 --------------------------------------------------------------------------------
 5. -putContentInSubviewsFromModel: Вставляет контент в subview. Текст/Картинки и т.д.
 --------------------------------------------------------------------------------
 6. -resizeSubviewsByModel: Расчитывает размеры и координацию subviews после
     вставленного ранее контента.
 --------------------------------------------------------------------------------
 7. -addSubviewsOnSuperView Добавляет готовые subviews на superview.
 --------------------------------------------------------------------------------
 */

@interface ViewController (SubviewsLifes)

- (void) groupOfActionsForPreparationControllersUI;
- (void) removeAllSubviewsFromSuperViewAndSetToNil;
- (void) initSubviewsByModel:(Model*) model;
- (void) updateStylesForUIByModel:(Model*) model;
- (void) putContentInSubviewsFromModel:(Model*) model;
- (void) resizeSubviewsByModel:(Model*) model;
- (void) addSubviewsOnSuperView;

@end