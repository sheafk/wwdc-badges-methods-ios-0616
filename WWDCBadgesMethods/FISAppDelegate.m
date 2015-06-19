//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString *)makeBadgeForSpeaker:(NSString *)speaker {
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}

- (NSMutableArray *)makeAllBadgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *allBadges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < speakers.count; i++) {
        NSString *currentBadge = [self makeBadgeForSpeaker:speakers[i]];
        [allBadges addObject:currentBadge];
    }
    
    return allBadges;
}

- (NSMutableArray *)greetAndAssignRoomsToSpeakers:(NSArray *)speakers {
    
    NSMutableArray *allGreetings = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < speakers.count; i++) {
        
        NSUInteger roomNumber = i + 1;
        
        NSString *currentGreeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        
        [allGreetings addObject:currentGreeting];
    }
    
    return allGreetings;
}

@end
