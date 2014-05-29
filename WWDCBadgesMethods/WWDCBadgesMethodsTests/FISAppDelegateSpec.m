//
//  FISAppDelegateSpec.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#import "FISAppDelegate.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{
    __block FISAppDelegate *appDelegate;
    
    beforeAll(^{
        appDelegate = [[FISAppDelegate alloc] init];
    });
    
    describe(@"badgeMaker", ^{
    
        it(@"should return a formatted badge", ^{
            expect([AppDelegate badgeMaker:@"Herbert"]).to.equal(@"Hello, my name is Herbert");
        });
    });
    
    afterEach(^{

    });
    
    afterAll(^{

    });
});

SpecEnd
