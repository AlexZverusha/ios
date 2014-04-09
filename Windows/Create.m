

#import "Create.h"

#define WFIELD 100
#define HFIELD 40

@implementation Create

-(id) createFieldin:(id)data {
    
    datastring = [NSMutableString stringWithCapacity:100]; //  farame string
    datastr = [NSMutableString stringWithCapacity:100];    // content string
    width=100;
    height=40;
    for (i=0; i<=width; i++) {
        [datastring insertString:@"=" atIndex:i];
        if (i==width||i==0) {
            [datastr insertString:@"|" atIndex:i];
        }
        else { [datastr insertString:@" " atIndex:i];
        }
    }
    
    [data insertObject:datastring atIndex:0];
    
    for (i=1; i<height; i++) {
        [data insertObject:datastr atIndex:i];
        
    }
    [data insertObject:datastring atIndex:height];
    
    return data;
    

    
}

-(id) createWindow:id xPos:(int)x yPos:(int)y in:(id)data {
    // datastring frame string   tab
    // datastr content string    stroka
    xPos=x;
    yPos=y;
    width =50;
    height = 25;
    
    datastring=[NSMutableString stringWithCapacity:100];
    datastr=[NSMutableString stringWithCapacity:100];
    
    // create border frame
    
    NSMutableString *border = [[NSMutableString alloc] init]; // |
    NSMutableString *frame; // ===
    frame=[NSMutableString stringWithCapacity:100];
    //border=[NSMutableString stringWithCapacity:25];

   
    for (i=0; i<=width; i++) {
        [frame insertString:@"-" atIndex:i];
    }
    [border insertString:@"|" atIndex:0];
    for (i=1; i<width; i++) {
        [border insertString:@" " atIndex:i];
    }
    [border insertString:@"|" atIndex:width];
    // end border frame
    
    // frame in data
    [datastring insertString:(data[yPos]) atIndex:0];
    [datastring deleteCharactersInRange:NSMakeRange(xPos, [frame length])];
    [datastring insertString:frame atIndex:xPos];
    [data removeObjectAtIndex:yPos];
    [data insertObject:datastring atIndex:yPos];
    // border in data
    int z=yPos, yEnd=(yPos+height);
    ++z;
    int q;
    
    [datastr insertString:(data[z]) atIndex:0];
    [datastr deleteCharactersInRange:NSMakeRange(xPos, [border length])];
    [datastr insertString:border atIndex:xPos];
    
    
    for (i=0, q=z; i<height; i++,q++) {
      
    datastr=[NSMutableString alloc];
    datastr=[NSMutableString stringWithCapacity:100];
        
    [datastr insertString:(data[q]) atIndex:0];
    [datastr deleteCharactersInRange:NSMakeRange(xPos, [border length])];
    [datastr insertString:border atIndex:xPos];
        
    [data removeObjectAtIndex:q];
    [data insertObject:datastr atIndex:q];
        
    }
    
    
    
    
    [data removeObjectAtIndex:yEnd];
    [data insertObject:datastring atIndex:yEnd];
    
    
 
  //  NSLog(@"test create %@", frame);
    NSLog(@"test create %@", border
);
    
    return data;
}

-(id) createButton:(id)title position:(id)pos in:(id)data{
    
    // create button
    return data;
}

-(id)createText:(id)text in:(id)data {
    
    // create text
    
    return data;
}

@end
