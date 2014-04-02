//
//  ButtonControl.m
//  Windows
//
//  Created by Oleksandr Vashcenko on 02.04.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import "ButtonControl.h"

@implementation ButtonControl
    
    -(void) setWidthButton:(id) width setHeightButton:(id) height inArray: (id)note {
        
        [note setObject: width forKey:@"widthButton"];
        [note setObject: height forKey:@"heightButton"];
    }
    
    -(void)insertText:(id)text inArray: (id)note {
        
        [note setObject:text forKey:@"textButton"];
    }
-(void) setPosition:(id)positionButton inArray: (id)note {
    
         [note setObject:positionButton forKey:@"positionButton"];
    
    }

@end
