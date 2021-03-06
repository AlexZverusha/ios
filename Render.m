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
    NSMutableString *content;
    NSMutableString *button; // button
    id datawindow, datacontent; // window
    id frameTextArea,contentTextArea; // text area
    int xPosTextArea, yPosTextArea; // position text area
    id textButton; // text button
    int xPosButton, yPosButton; // position button
    
    NSNumber *number;
    
    
}

-(void) go: (id) note {
    
    i=note[@"widthWindow"];
    x=[i intValue];
    i=note[@"heightWindow"];
    y=[i intValue];
    

    data = [NSMutableArray arrayWithObjects: nil];
    datastring = [NSMutableString stringWithCapacity:100];

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
    
    // create text area
   // data = [NSMutableArray arrayWithObjects: nil];
    contentTextArea = [NSMutableString stringWithCapacity:100];
    i=note[@"widthTextArea"];
    xPosTextArea=[i intValue];
    i=note[@"heightTextArea"];
    yPosTextArea=[i intValue];
    contentTextArea=note[@"textTextArea"];
    
   // [[[[NSMutableString alloc] stringWithCapacity:100] ] insertString:(data[yPosTextArea]) atIndex:0];
    content=[NSMutableString stringWithCapacity:100];
    [content insertString:(data[yPosTextArea]) atIndex:0];
    [content deleteCharactersInRange:NSMakeRange(xPosTextArea, [contentTextArea length])];
    [content insertString:contentTextArea atIndex:xPosTextArea];
    
    [data removeObjectAtIndex:yPosTextArea];
    [data insertObject:content atIndex:yPosTextArea];
    //end text area
    
    //create button
    i=note[@"widthButton"];
    xPosButton=[i intValue];
    i=note[@"heightButton"];
    yPosButton=[i intValue];
    textButton=note[@"textButton"];
    
    button=[NSMutableString stringWithCapacity:100];
    [button insertString:(data[yPosButton]) atIndex:0];
    [button deleteCharactersInRange:NSMakeRange(xPosButton, [textButton length])];
    [button insertString:textButton atIndex:xPosButton];
    
    [data removeObjectAtIndex:yPosButton];
    [data insertObject:button atIndex:yPosButton];
    
    
    // end button
    
    NSLog(@"%@", data);
 //   NSLog(@"xPos=%d yPos=%d", xPosTextArea, yPosTextArea);
 //   NSLog(@"text area: %@", contentTextArea);
 //   NSLog(@"content: %@", content);

}

-(void) touch:(id)note {
    
    NSLog(@"%@", note);
    NSLog(@"test ok");
}

@end

