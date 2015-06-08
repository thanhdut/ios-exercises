//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *removeCheese = [cheeseName stringByReplacingOccurrencesOfString:@"cheese" withString:@""];
    NSString *result = [NSString stringWithFormat:@"My favorite cheese is %@.", removeCheese];
    return result;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        return [cheeseName stringByReplacingOccurrencesOfString:@" cheese" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [cheeseName length])];
    } else {
        return cheeseName;
    }

    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        return @"1 cheese";
    } else {
        return [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
