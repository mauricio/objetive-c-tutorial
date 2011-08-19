//
//  AccountTest.m
//  ObjectiveCTutorial
//
//  Created by Mauricio Linhares de Aragao Junior on 18/08/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AccountTest.h"
#import "Account.h"

@implementation AccountTest

- (void) testDeposit {
    
    Account * account = [[Account alloc] init];
    [ account deposit: 200 ];
    
    STAssertEquals( account.balance, 200, @"Must be 200" );
    
    [account release];
    
}

- (void) testDepositWithFailure {
    
    Account * account = [[Account alloc] init];
    [ account deposit: -200 ];
    
    STAssertEquals( account.balance, 0, @"Must be 0" );    
    
    [account release];
    
}

- (void) testWithdraw {
    
    Account * account = [[Account alloc] init];
    [ account deposit: 300 ];
    [ account withdraw: 200 ];
    
    STAssertEquals( account.balance, 100, @"Must be 100" );    
    [account release];
}

- (void) testWithdrawWithFailure {
    
    Account * account = [[Account alloc] init];
    [ account deposit: 300 ];
    [ account withdraw: 400 ];
    
    STAssertEquals( account.balance, 300, @"Must be 300" );        
    [account release];
}

- (void) testTransferTo {
    
    Account * origin = [[ Account alloc ] initWithBalance: 300 ];
    Account * destination = [[ Account alloc ] initWithBalance: 200 ];
    
    [ origin transfer: 200 to: destination ];
    
    STAssertEquals( origin.balance, 100, @"must be 100" );
    STAssertEquals( destination.balance, 400, @"must be 400" );
    
    [origin release];
    [destination release];
    
}

@end








