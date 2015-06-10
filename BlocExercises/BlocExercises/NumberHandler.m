//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSNumber *doubledNumber = [NSNumber numberWithInt:([number intValue] * 2)];
    return doubledNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *result = [[NSMutableArray alloc]init];
    for (NSInteger i = MIN(number, otherNumber); i <= MAX(number, otherNumber); i++) {
        [result addObject:[NSNumber numberWithLong:i]];
    }
    return result;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSInteger lowestNum = [arrayOfNumbers[0] integerValue];
    for (NSInteger i = 1; i < [arrayOfNumbers count]; i++) {
        if ([arrayOfNumbers[i] integerValue] < lowestNum) {
            lowestNum = [arrayOfNumbers[i] integerValue];
        }
    }
    return lowestNum;
}

@end
