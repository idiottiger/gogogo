//
//  person.h
//  HelloOC
//
//  Created by fchan on 2018/10/11.
//  Copyright © 2018 fchan. All rights reserved.
//

#ifndef person_h
#import "creature.h"
#define person_h

@interface Person : Creature

@property NSString *firstName;
@property NSString *lastName;


//-(id)initWithNames:(NSString*)fName lastName:(NSString*)lName;
-(void)print:(NSString*) v1 param2:(NSString*) v2;

+(void)sayHello;

@end

#endif /* person_h */
