//
//  NewWindow.h
//  Windows
//
//  Created by Oleksandr Vashcenko on 03.04.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewWindow : NSObject {
    
}
-(id) createWindow:(id)_window widthWindow:(int)width heightWindow:(int)height inArray:(id)note;
//-(void) createText;
//-(void) createButton(id)title titleButton(id) positionButton(id);
//-(void) createButton:(id)title position:(id)widh heightButton:(id)widh;
-(id) createTab:(int)_position widthTab:(int)width heightTab:(int)height inArray:(id)note;
@end
