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
#include "NewWindow.h"
#include "Create.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        id note;
        id console;
        id simple;
        id consoleData;
        id foo;
        // полезный код
        NSNumber *number, *number1;
        //create window
        WindowControl *testWindow = [WindowControl alloc];
        note=[NSMutableDictionary dictionary];
        [testWindow setWidthWindow:(number=@50) setHeightWindow:(number1=@10) inArray:note];
        NSLog(@"heightWindow = %@", note[@"heightWindow"]);
        // create text area
        TextAreaControl *testarea = [TextAreaControl alloc];
        [testarea setWidthWindow:(number=@5) setHeightWindow:(number1=@2) inArray:note];
        [testarea insertText:@"hello world!" inArray:note];
        // create button
        
        ButtonControl *testButton = [ButtonControl alloc];
        [testButton setWidthButton:(number=@10) setHeightButton:(number1=@8) inArray:note];
        [testButton insertText:@"button" inArray:note];
        
        // render go
        Render *testRender = [Render alloc];
        NewWindow *testW = [NewWindow alloc];
     //   NewWindow *testA = [NewWindow alloc];
        [testRender go:note];
        
        // render touch
        console = [NSMutableArray arrayWithObjects: nil];
        consoleData = [NSMutableArray arrayWithObjects: nil];
        [testW createWindow:simple widthWindow:80 heightWindow:20 inArray:console];
      //  [testA createWindow:simple widthWindow:10 heightWindow:5 inArray:console];
      //  [testW createTab:2 widthTab:1 heightTab:1 inArray:console];
      //  [testW createTab:1 widthTab:1 heightTab:1 inArray:console];
        
        NSMutableArray *info;
        info=[NSMutableArray arrayWithObjects: nil];
        
        Create *newField = [Create alloc];
        [newField createFieldin:consoleData];
        [newField createWindow:0 xPos:2 yPos:2 in:consoleData idInfo:info];
        [newField createWindow:1 xPos:10 yPos:7 in:consoleData idInfo:info];
      //  [newField createWindow:3 xPos:15 yPos:9 in:consoleData idInfo:info];
     //   [newField createWindow:4 xPos:17 yPos:11 in:consoleData idInfo:info];
        [newField createText:@"simple text 6 simple text 6 simple text 6 simple text 6 simple text 6 simple text 6 simple text 6 simple text 6" in:consoleData idInfo:info Idwindows:0];
       // [newField createText:@"simple text 6" in:consoleData idInfo:info Idwindows:1];
        
        [testRender touch:consoleData];
    }
    return 0;
}

