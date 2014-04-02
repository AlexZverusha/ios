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
    id datawindow, datacontent;
   
    
    
}

-(void) go: (id) note {
    
    i=note[@"widthWindow"];
    x=[i intValue];
    i=note[@"heightWindow"];
    y=[i intValue];
    

    data = [NSMutableArray arrayWithObjects: nil];
    datastring = [NSMutableString stringWithCapacity:100];
    /*
    for (z=0; z<y; z++) {
      [data insertObject:datastring atIndex: z];
    }
     */
    for (j=0; j<x; j++) {
        [datastring insertString:@"-" atIndex:j];  // формироваие  frame
    }
    [data insertObject:datastring atIndex: 0]; // верхняя рамка окна
 //   [data insertObject:datastring atIndex: y]; // низ окна
    // create content
    datacontent = [NSMutableString stringWithCapacity:100];
    [datacontent insertString:@"|" atIndex:0]; // формироваие  left frame content
 //   [datacontent insertString:@"|" atIndex:x];// right frame content
    for (j=1; j<x; j++) {
        [datacontent insertString:@" " atIndex:j];  // формироваие content
    }

    for (z=1; z<y; z++) {
        [data insertObject:datacontent atIndex: z];
    }
    [datacontent insertString:@"|" atIndex:x];
    [data insertObject:datastring atIndex: y];
    
  //  [data insertObject:@"|   |" atIndex: 1];
 //   [data insertObject:datastring atIndex: y];
    
    
    /*
    for (j=0; j<x; j++) {
        [datastring insertString:@" " atIndex:j];  // формироваие строки
    }
    [data insertObject:datastring atIndex: 1];
    [data insertObject:datastring atIndex: 2];
    */
    
    
    NSLog(@"%@", data);
    NSLog(@"z=%dj=%d", z, j);
   
}

@end

// [data insertObject:nil atIndex:++j];
// data = [NSMutableArray arrayWithObjects:@"test", nil];
// [data insertObject:@"test" atIndex:0];
