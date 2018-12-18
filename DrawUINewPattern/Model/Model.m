//
//  Model.m
//  DrawUINewPattern
//
//  Created by Uber on 17/12/2018.
//  Copyright © 2018 uber. All rights reserved.
//

#import "Model.h"

@implementation Model

+ (Model*)mockup
{
    Model* myObject = [[Model alloc] init];
    if (myObject) {
        myObject.textMainLbl = @"Hello World bhsbdkfjhskd s gsh h  s fsdf sdjf jksjdhf js jsdhf js jshdfkjh skhdfks  jsdfkjshdfkjhs skdjfhs sdfh";
    } else {
        // error recovery...
    }
    return myObject;
}

@end
