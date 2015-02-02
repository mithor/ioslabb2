//
//  ITHSSaga.m
//  Labb2
//
//  Created by IT-Högskolan on 2015-01-29.
//  Copyright (c) 2015 IT-Högskolan. All rights reserved.
//

#import "ITHSSaga.h"

@interface ITHSSaga ()

@property (nonatomic) NSArray *heroes;
@property (nonatomic) NSArray *places;
@property (nonatomic) NSArray *occupations;
@property (nonatomic) NSArray *items;
@property (nonatomic) NSArray *merchants;
@property (nonatomic) NSArray *vehicles;
@property (nonatomic) NSArray *hats;
@property (nonatomic) NSArray *shoes;
@property (nonatomic) NSArray *weapons;
@property (nonatomic) NSArray *lovers;

@end

@implementation ITHSSaga

- (id)init {
    self = [super init];
    if (self) {
        [self initWords];
    }
    return self;
}

- (void) initWords {
    self.heroes = @[@"Tommy", @"Jonny", @"Sonny", @"Conny", @"Ronny"];
    
    self.occupations = @[@"wizard", @"bus driver", @"farmer", @"librarian", @"blacksmith"];
    
    self.places = @[@"on a remote island", @"on top of a mountain", @"in a cardboard box", @"inside a gloomy cave", @"behind a giant tree"];
    
    self.items = @[@"supplies", @"milk", @"liquor", @"batteries", @"paper clips"];
    
    self.merchants = @[@"super market", @"pawn shop", @"local corner shop", @"drug store", @"witch's hut"];
    
    self.vehicles = @[@"motorcycle", @"witch's broom", @"dragon", @"horse", @"bus"];
    
    self.hats = @[@"top hat", @"baseball cap", @"wizard's hat", @"fedora", @"bicycle helmet"];
    
    self.shoes = @[@"sneakers", @"sandals", @"leather boots", @"crocs", @"hi-heels"];
    
    self.weapons = @[@"baseball bat", @"knife", @"revolver", @"bazooka", @"samurai sword"];
    
    self.lovers = @[@"Jenny", @"Penny", @"Benny", @"Lenny", @"Kenny"];
    
}

- (NSString*)randomElement:(NSArray*)array {
    return array[arc4random() % array.count];
}

- (NSString*)generateWithRomance:(BOOL)romance
                    WithViolence:(BOOL)violence
                   WithHappiness:(float)happiness {
    
    NSString *hero = [self randomElement:self.heroes];
    NSString *occupation = [self randomElement:self.occupations];
    NSString *place = [self randomElement:self.places];
    NSString *item = [self randomElement:self.items];
    NSString *merchant = [self randomElement:self.merchants];
    NSString *vehicle = [self randomElement:self.vehicles];
    NSString *hat = [self randomElement:self.hats];
    NSString *shoe = [self randomElement:self.shoes];
    NSString *weapon = [self randomElement:self.weapons];
    NSString *lover = [self randomElement:self.lovers];
    
    NSString *text1 = [NSString stringWithFormat:@"Once upon a time, there was a %@'s apprentice called %@ who lived %@. ", occupation, hero, place];
    NSString *text2 = [NSString stringWithFormat:@"One day, all of the %@'s %@ had run out, so %@ needed to go to the %@ to get some more. ", occupation, item, hero, merchant];
    NSString *text3 = [NSString stringWithFormat:@"%@ put on a %@ and some %@ before getting on the %@, heading towards the %@. ", hero, hat, shoe, vehicle, merchant];
    NSString *text4 = [NSString stringWithFormat:@"Having just arrived at the %@, %@ randomly ran in to %@! ", merchant, hero, lover];
    
    if (romance&&violence) {
        text4 = [text4 stringByAppendingString:[NSString stringWithFormat:@"%@ and %@ stared dreamily into each others eyes for a while, when %@ suddenly pulled out a %@ and attacked %@! ", hero, lover, lover, weapon, hero]];
    } else if (romance) {
        text4 = [text4 stringByAppendingString:[NSString stringWithFormat:@"%@ and %@ stared dreamily into each others eyes for a while. ", hero, lover]];
    } else if (violence) {
        text4 = [text4 stringByAppendingString:[NSString stringWithFormat:@"Suddenly %@ pulled out a %@ and attacked %@! ", lover, weapon, hero]];
    } else {
        text4 = [text4 stringByAppendingString:[NSString stringWithFormat:@"The two said nothing. "]];
    }
    
    NSString *text5;
    
    if (happiness<0.3) {
        
        if (romance&&violence) {
            text5 = [NSString stringWithFormat:@"The attack was fatal. %@ looked sadly on to %@, saying 'But, but.. I loved you!' before slowly passing away. ", hero, lover];
        } else if (romance) {
            text5 = [NSString stringWithFormat:@"Suddenly %@ turned around walked away. %@ looked sadly on to %@ and said 'But, but... I love you!', but %@ just kept moving towards the distance. ", lover, hero, lover, lover];
        } else if (violence) {
            text5 = [NSString stringWithFormat:@"The attack was fatal. %@ squirmed with pain while soon slipping into eternal slumber. ", hero];
        } else {
            text5 = [NSString stringWithFormat:@"Suddenly, %@ had a heart attack and died. ", hero];
        }
        
    } else if (happiness>0.7) {
        
        if (romance&&violence) {
            text5 = [NSString stringWithFormat:@"%@ skillfully dodged the attack, and instead moved in for a kiss. %@ and %@ embraced in a tender kiss and would later go on to live happily together ever after. ", hero, hero, lover];
        } else if (romance) {
            text5 = [NSString stringWithFormat:@"%@ and %@ embraced in a tender kiss and would later go on to live happily together ever after. ", hero, lover];
        } else if (violence) {
            text5 = [NSString stringWithFormat:@"%@ skillfully dodged the attack, grabbed the %@ off of %@ and immediately counter-attacked. %@ died instantly, and %@ knew that the %@ would be so proud! ", hero, weapon, lover, lover, hero, occupation];
        } else {
            text5 = [NSString stringWithFormat:@"But as %@ left and walked away, %@ noticed a left behind suitcase in the place where %@ had just stood. %@ picked up the suitcase and carefully opened it. The inside was full of money, and a great smile started to show in %@'s face. ", lover, hero, lover, hero, hero];
        }
        
    } else {
        
        if (romance&&violence) {
            text5 = [NSString stringWithFormat:@"%@ skillfully dodged the attack, and instead moved in for a kiss. %@ dodged the attempted kiss, and ran away. So, %@ was still alive, but didn't manage to capture the heart of %@. ", hero, lover, hero, lover];
        } else if (romance) {
            text5 = [NSString stringWithFormat:@"%@ moved in for a kiss, but %@ pulled back and said 'Let's just be friends!' ", hero, lover];
        } else if (violence) {
            text5 = [NSString stringWithFormat:@"%@ dodged the attack, but %@ managed to escape. So, while %@ was still on the loose out there, at least %@ was still alive. For now. ", hero, lover, lover, hero];
        } else {
            text5 = [NSString stringWithFormat:@"Then, the two would go on with their days, never again to think of eachother. "];
        }
        
    }
    
    NSString *fullText = [[[[[text1 stringByAppendingString:text2] stringByAppendingString:text3] stringByAppendingString:text4] stringByAppendingString:text5] stringByAppendingString:@"THE END. "];
    return fullText;
}

@end
