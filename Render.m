//
//  Render.m
//  Windows
//
//  Created by Oleksandr Vashcenko on 31.03.14.
//  Copyright (c) 2014 Oleksandr Vashcenko. All rights reserved.
//

#import "Render.h"

@implementation Render {
    
    id i;
    int x,j,y,z;
    NSMutableArray *data;
    NSMutableString *datastring;
    id datawindow;
   
    
    
}

-(void) go: (id) note {
    
    i=note[@"widthWindow"];
    x=[i intValue];
    i=note[@"heightWindow"];
    y=[i intValue];
    

    data = [NSMutableArray arrayWithObjects: nil];
    datastring = [NSMutableString stringWithCapacity:100];
    
    for (z=0; z<y; z++) {
      [data insertObject:datastring atIndex: z];
    }
    for (j=0; j<x; j++) {
        [datastring insertString:@"-" atIndex:j];  // формироваие строки
    }
    
    NSLog(@"%@", data);
    NSLog(@"z=%dj=%d", z, j);
   
}

@end

// [data insertObject:nil atIndex:++j];
// data = [NSMutableArray arrayWithObjects:@"test", nil];
// [data insertObject:@"test" atIndex:0];
