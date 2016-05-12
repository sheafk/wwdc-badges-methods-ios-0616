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

- (NSString *)badgeForSpeaker:(NSString *)speakers {
    
    NSString *nametag = [NSString stringWithFormat:@"Hello, my name is %@.", speakers];
    
    return nametag;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badgesForSpeakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *nametag = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        
        [badgesForSpeakers addObject:nametag];
    }
    
    return badgesForSpeakers;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSUInteger r = i + 1;
        NSString *room = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], (unsigned long)r];
        
        [roomAssignments addObject:room];
    }
    return roomAssignments;
}

@end
