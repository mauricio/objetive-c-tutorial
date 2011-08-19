//
//  Account.h
//  ObjectiveCTutorial
//
//  Created by Mauricio Linhares de Aragao Junior on 18/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Account : NSObject {
    @private
    int balance;
}

- (id) initWithBalance: ( int ) amount;

- (BOOL) deposit: (int) amount;
- (int) balance;
- (BOOL) withdraw: (int) amount;

- (BOOL) transfer: (int) amount to: (Account *) destination;

@end
