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
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        id note;
        // полезный код
        NSNumber *number, *number1;
        WindowControl *testWindow = [WindowControl alloc];
        note=[NSMutableDictionary dictionary];
        //[testWindow setA:q];
        [testWindow setWidthWindow:(number=@5) setHeightWindow:(number1=@10) inArray:note];
        NSLog(@"heightWindow = %@", note[@"heightWindow"]);
        Render *testRender = [Render alloc];
        [testRender go:note];

        
    }
    return 0;
}

