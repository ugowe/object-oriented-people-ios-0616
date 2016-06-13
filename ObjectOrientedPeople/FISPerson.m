//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Ugowe on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (strong, nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (strong, nonatomic, readwrite) NSMutableArray *skills;

- (NSString *)ordinalForInteger:(NSUInteger)integer;

@end

@implementation FISPerson 

- (instancetype)init {
    self = [self initWithName:@"Mark"
                   ageInYears:29
               heightInInches:71];
    return self;
}

- (instancetype)initWithName:(NSString *)name
                  ageInYears:(NSUInteger)ageInYears{
    self = [self initWithName:name
                   ageInYears:ageInYears
               heightInInches:67];
    return self;
}

- (instancetype)initWithName:(NSString *)name
                 ageInYears:(NSInteger)ageInYears
              heightInInches:(NSInteger)heightInInches{
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
    }
    return self;
    
}

//- (NSUInteger)calculateTotalPriceInCents{
//    NSInteger totalPriceInCents = 0;
//    for (FISItem *item in self.items){
//        totalPriceInCents += item.priceInCents;
//    }
//    
//    return totalPriceInCents;
- (NSString *)celebrateBirthday{
    self.ageInYears += 1;
    NSString *ordinal = [self ordinalForInteger:self.ageInYears];
    
    NSString *message = [NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, ordinal.uppercaseString, self.name.uppercaseString];
    NSLog(@"%@", message);
    
    return message;
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

- (void)learnSkillBash {
    NSString *skill = @"bash";
    
    if (![self.skills containsObject:skill]) {
        [self.skills addObject:skill];
    }
}

- (void)learnSkillXcode {
    NSString *skill = @"Xcode";
    
    if (![self.skills containsObject:skill]) {
        [self.skills addObject:skill];
    }
}

- (void)learnSkillObjectiveC {
    NSString *skill = @"Objective-C";
    
    if (![self.skills containsObject:skill]) {
        [self.skills addObject:skill];
    }
}

- (void)learnSkillObjectOrientedProgramming {
    NSString *skill = @"Object-Oriented Programming";
    
    if (![self.skills containsObject:skill]) {
        [self.skills addObject:skill];
    }
}

- (void)learnSkillInterfaceBuilder {
    NSString *skill = @"Interface Builder";
    
    if (![self.skills containsObject:skill]) {
        [self.skills addObject:skill];
    }
}

- (BOOL)isQualifiedTutor {
    if (self.skills.count >= 4) {
        return YES;
    } else {
        return NO;
    }
}

@end
