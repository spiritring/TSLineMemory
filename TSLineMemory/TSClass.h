//
//  TSClass.h
//  TSLineMemory
//
//  Created by TSEnel on 13-2-5.
//  Copyright (c) 2013年 TSEnel. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TSString;

@interface TSClass : NSObject
{
    TSString* myStr;
    NSString* nsStr;
    
    TSString* TestP;
}

@property (nonatomic,assign,readwrite) TSString* TestP;

-(TSString*) GetStr;
- (void) SetStr: (TSString*) str;
- (void) SetNSStr: (NSString*) str;
@end
