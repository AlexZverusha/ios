//
//  WindowControl.m
//  Windows
//
//  Created by Oleksandr Vashcenko on 26.03.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import "WindowControl.h"

@implementation WindowControl {
    
   // int _a;
    int _b;
    //NSMutableDictionary *note;
}

-(void) setWidthWindow:(id) width setHeightWindow:(id) height inArray: (id)note {
    
    [note setObject: width forKey:@"widthWindow"];
    [note setObject: height forKey:@"heightWindow"];
}

-(void) print {
    
    NSLog(@"test window");
}







-(void) setA:(int)_a {
    
    NSLog(@"%d", _a);

}

-(void) setB:(int)b {
    
    // _a=a;
}
@end
