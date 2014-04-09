
#import "NewWindow.h"
#define leftUp 1
#define RightDown 2

@implementation NewWindow
NSMutableArray *data;
NSMutableString *datastring,  *datastr;
int i;


-(id) createWindow:(id)_window widthWindow:(int)width heightWindow:(int)height inArray:(id)note{

    {
    // data = [NSMutableArray arrayWithObjects: nil];
    //[datastring insertString:@"-" atIndex:0];
    //   datastr=[NSMutableArray arrayWithObjects: nil];
    datastring = [NSMutableString stringWithCapacity:100]; //  farame string
    datastr = [NSMutableString stringWithCapacity:100];    // content string
        //  [note insertObject:datastring atIndex:0];   // up
        //   [note insertObject:datastring atIndex:height]; // down
        
        
        //  [note insertObject:@"test note" atIndex:0];
    } // ini up down string
    // create frame line
    for (i=0; i<=width; i++) {
            [datastring insertString:@"=" atIndex:i];
        if (i==width||i==0) {
            [datastr insertString:@"|" atIndex:i];
        }
        else { [datastr insertString:@" " atIndex:i];
        }
    }
    
    [note insertObject:datastring atIndex:0];
    
    for (i=1; i<height; i++) {
          [note insertObject:datastr atIndex:i];
        
    }
    [note insertObject:datastring atIndex:height];

    return note;
    
    
    
    
}

-(id) createTab:(int)_position widthTab:(int)width heightTab:(int)height inArray:(id)note {
    int xPos = 2;
    int i, yPos1=3, yPos2 = 13;
    
    if (_position==leftUp) {
        xPos = 2;
        yPos1=3;
        yPos2=13;
    }
    if (_position==RightDown||_position==2) {
        xPos = 40;
        yPos1=5;
        yPos2=15;
    }
    // TAB
    NSMutableString *tab;
    NSMutableString *stroka;
 //   NSMutableString *str = [[NSMutableString alloc] init];
    tab=[NSMutableString stringWithCapacity:100];
    stroka=[NSMutableString stringWithCapacity:100];
    // tab ------
    [tab insertString:(note[yPos1]) atIndex:0];
    [tab deleteCharactersInRange:NSMakeRange(xPos, [@"----------------------------------------" length])];
    [tab insertString:@"----------------------------------------" atIndex:xPos];
    
    [note removeObjectAtIndex:yPos1];
    [note insertObject:tab atIndex:yPos1];
    [note removeObjectAtIndex:yPos2];
    [note insertObject:tab atIndex:yPos2];
    
    // tab |
    
  //  for (i=4; i<13; i++) {
        [stroka insertString:(note[6]) atIndex:0];
        [stroka deleteCharactersInRange:NSMakeRange(xPos, [@"|                                      |" length])];
    [stroka insertString:@"|                                      |" atIndex:xPos];
        
        [note removeObjectAtIndex:6];
        [note insertObject:stroka atIndex:6];
    
    for (i=(yPos1-1); i<yPos2; i++) {
        [note removeObjectAtIndex:i];
        [note insertObject:stroka atIndex:i];
    }
 //   }
    
    
  //  for (i=2; i<10; i++) {
        //str=note[2];
         
    //    [note[2] deleteCharactersInRange:NSMakeRange(5, [tab length])];
      //  [note[2] insertString:tab atIndex:3];
    
    
    
    //    [note removeObjectAtIndex:i];
    //    [note insertObject:str atIndex:i];

   // }
    
    
   // button=[NSMutableString stringWithCapacity:20];
   
    return note;
}

//-(void) createButton:(id) titleButton:(id) positionButton:(id) {

//}
//-(void) createText {
    
    
//}
    



@end
