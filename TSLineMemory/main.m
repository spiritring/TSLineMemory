//
//  main.m
//  TSLineMemory
//
//  Created by TSEnel on 13-2-5.
//  Copyright (c) 2013年 TSEnel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TSClass.h"
#import "TSString.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        TSClass* pC = [TSClass new];
        
        [pC SetNSStr:@"haha"];
        
        pC.TestP = [TSString new];
        
        NSLog(@"%ld", [pC.TestP retainCount]);
        
        TSString* pTest = pC.TestP;
        
        NSLog(@"%ld", [pTest retainCount]);
        
        [pC release];
        
        NSString* strList = @"1,2,3,344,5,6,7";
        NSArray* list = [strList componentsSeparatedByString:@","];
        for (int i = 0 ; i < [list count]; i++) {
            NSLog(@"string:%@", [list objectAtIndex:i]);
        }
    }
    return 0;
}

