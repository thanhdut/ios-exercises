//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSString *result = @"";
    for (NSInteger n = MIN(number, otherNumber); n <= MAX(number, otherNumber); n++) {
        result = [result stringByAppendingFormat:@"%ld", n];
    }
    return result;
}

@end
