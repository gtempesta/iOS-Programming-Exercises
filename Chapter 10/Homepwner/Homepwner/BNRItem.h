//
//  BNRItem.h
//  Chapter 2
//
//  Created by Giorgio Tempesta on 16/03/16.
//  Copyright © 2016 Giorgio Tempesta. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    
}

+ (instancetype)randomItem;

- (instancetype)initWithItemName: (NSString *)name
                  valueInDollars: (int)value
                    serialNumber: (NSString *)sNumber;

- (instancetype)initWithItemName: (NSString *)name;

- (void) setItemName:(NSString *)str;
- (NSString *)itemName;

- (void) setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void) setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;

@end
