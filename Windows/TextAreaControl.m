//
//  TextAreaControl.m
//  Windows
//
//  Created by Oleksandr Vashcenko on 02.04.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import "TextAreaControl.h"

@implementation TextAreaControl

-(void) setWidthWindow:(id) width setHeightWindow:(id) height inArray: (id)note {
    
    [note setObject: width forKey:@"widthTextArea"];
    [note setObject: height forKey:@"heightTextArea"];
}

-(void)insertText:(id)text inArray: (id)note {
    
    [note setObject:text forKey:@"textTextArea"];
}

@end
