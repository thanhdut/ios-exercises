//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    for (NSDictionary *charInfo in charactersArray) {
        if (charInfo[@"favorite drink"] != nil && [charInfo[@"favorite drink"] isKindOfClass:[NSString class]]) {
            [result addObject:charInfo[@"favorite drink"]];
        }
    }
    return result;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *result = [characterDictionary mutableCopy];
    [result setObject:@"Think different." forKey:@"quote"];
    return result;
}

@end
