//
//  Create.h
//  Windows
//
//  Created by Oleksandr Vashcenko on 09.04.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Create : NSObject {
    
    NSMutableString *datastring; //  farame string
    NSMutableString *datastr;    // content string
    int i, width, height;
    int xPos, yPos;


    
    
}

-(id) createFieldin:(id)data;

-(id) createWindow:(int)id xPos:(int)x yPos:(int)y in:(id)data idInfo:(id)info;

-(id) createButton:(id)title position:(id)pos in:(id)data;

-(id) createText:(id)text in:(id)data idInfo:(id)info Idwindows:(int)win;

@end
