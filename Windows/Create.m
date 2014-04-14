

#import "Create.h"

#define WFIELD 100
#define HFIELD 40

@implementation Create
// window
//    width =50;
//  height = 25;

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


-(id) createWindow:(int)id xPos:(int)x yPos:(int)y in:(id)data idInfo:(id)info{
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
    
    // down frame
    datastring=[NSMutableString alloc];
    datastring=[NSMutableString stringWithCapacity:100];
    
    [datastring insertString:(data[yEnd]) atIndex:0];
    [datastring deleteCharactersInRange:NSMakeRange(xPos, [border length])];
    [datastring insertString:frame atIndex:xPos];

    
    [data removeObjectAtIndex:yEnd];
    [data insertObject:datastring atIndex:yEnd];
    
    // create data windows in
    NSMutableArray *dataInfo;
    dataInfo = [NSMutableArray arrayWithObjects: nil];
    
    // magic number
    //  NSNumber *number;
    //  [number intValue];
    
    
    [dataInfo insertObject:[NSString stringWithFormat:@"%i", x] atIndex:0];
    [dataInfo insertObject:[NSString stringWithFormat:@"%i", y] atIndex:1];
    [info insertObject:dataInfo atIndex:id];
  
    
  //  NSLog(@"%@", info);
    
 
  //  NSLog(@"test create %@", frame);
    NSLog(@"test create %@", border
);
    
    return data;
}

-(id) createButton:(id)title position:(id)pos in:(id)data{
    
    // create button
    return data;
}

-(id)createText:(id)text in:(id)data idInfo:(id)info Idwindows:(int)win {
    
   // int xPos, yPos;
    id x, y;
    int yPos1, xPos1, tempWidth;
    NSMutableArray *dataInfo;
    NSMutableString *dataString;
    NSMutableString *tempString;
    tempString=[[NSMutableString alloc] init];
    long temp;
    
    tempWidth=width;
    tempWidth-=4;
    
    
    dataInfo = [NSMutableArray arrayWithObjects: nil];
    datastring=[NSMutableString stringWithCapacity:100];
    tempString=[NSMutableString stringWithCapacity:100];
    
    dataInfo=info[win];
    x=dataInfo[0];
    y=dataInfo[1];
    
    
    [dataString insertString:text atIndex:0];
    
    
    
    
    //[dataInfo insertObject:info[0] atIndex:0];
   
    
   // xPos1=dataInfo[0];  // сюда нужно впихнуть валидные даннные
   // yPos1=dataInfo[1];
    
    
    
    //xPos1=2+2;  // сюда нужно впихнуть валидные даннные
    //yPos1=2+2;
    
    yPos1=[y intValue];
    xPos1=[x intValue];
    
    yPos1+=2;
    xPos1+=2;
    
    // edit long string
    temp=[text length];
    
    if (temp<width) {
        
        [datastring insertString:(data[yPos1]) atIndex:0];
        [datastring deleteCharactersInRange:NSMakeRange(xPos1, [text length])];
        [datastring insertString:text atIndex:xPos1];
        [data removeObjectAtIndex:yPos1];
        [data insertObject:datastring atIndex:yPos1];
        
    }
    
    [tempString insertString:text atIndex:0];
    [tempString deleteCharactersInRange:NSMakeRange((tempWidth), 4)];
    [tempString insertString:@"...." atIndex:(tempWidth-4)];
    [tempString deleteCharactersInRange:NSMakeRange(48, ([tempString length]-48))];
    [tempString deleteCharactersInRange:NSMakeRange(46, 2)];
    
    
    
    [datastring insertString:(data[yPos1]) atIndex:0];
    [datastring deleteCharactersInRange:NSMakeRange(xPos1, [tempString length])];
    [datastring insertString:tempString atIndex:xPos1];
    [data removeObjectAtIndex:yPos1];
    [data insertObject:datastring atIndex:yPos1];
    
    
    
    
    NSLog(@"str.....%@", tempString);
    NSLog(@"str len%lu", (unsigned long)[tempString length]);
    // create string
     /*
    [datastring insertString:(data[yPos1]) atIndex:0];
    [datastring deleteCharactersInRange:NSMakeRange(xPos1, [text length])];
    [datastring insertString:text atIndex:xPos1];
    [data removeObjectAtIndex:yPos1];
    [data insertObject:datastring atIndex:yPos1];

    
   
     [datastring insertString:(data[yPos]) atIndex:0];
     [datastring deleteCharactersInRange:NSMakeRange(xPos, [frame length])];
     [datastring insertString:frame atIndex:xPos];
     [data removeObjectAtIndex:yPos];
     [data insertObject:datastring atIndex:yPos];
     
     */
    //1964  1764
    
    NSLog(@"create text x: %@", x);
    NSLog(@"create text yPos: %d", yPos);
    NSLog(@"create text str: %@", text);
    return data;
}

@end
