
#import "NewWindow.h"

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
            [datastring insertString:@"-" atIndex:i];
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


//-(void) createButton:(id) titleButton:(id) positionButton:(id) {

//}
//-(void) createText {
    
    
//}
    



@end
