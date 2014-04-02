//
//  main.m
//  Windows
//
//  Created by Oleksandr Vashcenko on 21.03.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WindowControl.h"
#import "Render.h"
#import "TextAreaControl.h"
#include "ButtonControl.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        id note;
        // полезный код
        NSNumber *number, *number1;
        //create window
        WindowControl *testWindow = [WindowControl alloc];
        note=[NSMutableDictionary dictionary];
        [testWindow setWidthWindow:(number=@50) setHeightWindow:(number1=@10) inArray:note];
        NSLog(@"heightWindow = %@", note[@"heightWindow"]);
        // create text area
        TextAreaControl *testarea = [TextAreaControl alloc];
        [testarea setWidthWindow:(number=@20) setHeightWindow:(number1=@3) inArray:note];
        [testarea insertText:@"text label" inArray:note];
        // create button
        
        ButtonControl *testButton = [ButtonControl alloc];
        [testButton setWidthButton:(number=@10) setHeightButton:(number1=@8) inArray:note];
        [testButton insertText:@"button" inArray:note];
        
        // render go
        Render *testRender = [Render alloc];
        [testRender go:note];

        
    }
    return 0;
}

