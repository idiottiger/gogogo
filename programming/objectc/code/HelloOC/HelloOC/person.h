//
//  person.h
//  HelloOC
//
//  Created by fchan on 2018/10/11.
//  Copyright © 2018 fchan. All rights reserved.
//

#ifndef person_h
#import "creature.h"
#import "runnable.h"
#define person_h

@interface Person: Creature

//auto create the getter and setter method
//getter method use the var's name
//setter method use setxxx

@property NSString *firstName;
@property NSString *lastName;

//rename the getter method name
@property (readonly, getter=getGender) NSString* gender;

enum Gender{GENDER_MAN=0,GENDER_FEMALE};

@property enum Gender myGender;

//-(id)initWithNames:(NSString*)fName lastName:(NSString*)lName;
-(void)print:(NSString*) v1 param2:(NSString*) v2;

+(void)sayHello;

@end

#endif /* person_h */
