//
//  creature.h
//  HelloOC
//
//  Created by fchan on 2018/10/11.
//  Copyright © 2018 fchan. All rights reserved.
//

#ifndef creature_h
#include "runnable.h"
#define creature_h

@interface Creature : NSObject<RunnableDelegate>
-(void)doLive;
@end

#endif /* creature_h */
