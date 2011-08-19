//
//  Account.m
//  ObjectiveCTutorial
//
//  Created by Mauricio Linhares de Aragao Junior on 18/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Account.h"


@implementation Account

- (id) initWithBalance: (int) amount {
    
    self = [super init];

    if ( self ) {
        balance = amount;
    }
    
    return self;
}

- (BOOL) deposit:(int)amount {
    
    BOOL result = NO;
    
    if ( amount > 0 ) {
         balance += amount;   
        result = YES;
    }
    
    return result;    
}

- (BOOL) withdraw:(int)amount {
    
    BOOL result = NO;
    
    if ( amount > 0 && amount <= balance) {
        balance -= amount;
        result = YES;
    }
    
    return result;
    
}

- (int) balance {
    return balance;
}

- (BOOL) transfer: (int) amount to: (Account *) destination {
    
    if ( [ self withdraw: amount ]  ) {
        return [ destination deposit: amount ];
    } else {
        return NO;
    }
    
}

@end










