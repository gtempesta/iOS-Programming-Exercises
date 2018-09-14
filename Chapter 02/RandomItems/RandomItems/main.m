//
//  main.m
//  RandomItems
//
//  Created by Giorgio Tempesta on 21/02/17.
//  Copyright © 2017 Giorgio Tempesta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa"
                                           valueInDollars:100
                                             serialNumber:@"A1B2C"];
        NSLog(@"%@", item);
        
    }
    return 0;
}
