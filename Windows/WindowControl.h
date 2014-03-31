//
//  WindowControl.h
//  Windows
//
//  Created by Oleksandr Vashcenko on 26.03.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WindowControl : NSObject {
    
    int typeFrame;
    int widthFrame;
    int heightFrame;
    int a;
    int b;
  //  NSString *q;
}

-(void) print;
-(void) setA: (int)a;
-(void) setB: (int)b;
//
-(void) setWidthWindow:(id)width setHeightWindow:(id)height inArray:(id)array;

//-(void) summma;
// typeFrame
// widthFrame
// heightFrame
@end
