//
//  TSClass.m
//  TSLineMemory
//
//  Created by TSEnel on 13-2-5.
//  Copyright (c) 2013年 TSEnel. All rights reserved.
//

#import "TSClass.h"
#import "TSString.h"

@implementation TSClass

@synthesize TestP;

- (id) init
{
    if (self = [super init]) {
        NSLog(@"Create TSClass %ld", [self retainCount]);
        nsStr = [NSString new];
        myStr = [TSString new];
        
        TestP = [TSString new];
    }
    
    return self;
}

- (void) dealloc
{
    [nsStr release];
    [myStr release];
    [TestP release];
    
    NSLog(@"Dealloc TSClass");
    [super dealloc];
}

- (TSString*) GetStr
{
    return myStr;
}

- (void) SetStr: (TSString*) str
{
    myStr = str;
}

- (void) SetNSStr: (NSString*) str
{
    nsStr = str;
}

@end
