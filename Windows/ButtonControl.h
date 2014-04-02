//
//  ButtonControl.h
//  Windows
//
//  Created by Oleksandr Vashcenko on 02.04.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import "WindowControl.h"

@interface ButtonControl : WindowControl

-(void) setWidthButton:(id)width setHeightButton:(id)height inArray:(id)note;
-(void) insertText: (id)text inArray: (id)note;
-(void) setPosition:(id) positionButton inArray: (id)note;

@end
