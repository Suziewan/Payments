//
//  main.m
//  Payments
//
//  Created by Angie Linton on 2017-01-13.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSInteger price = arc4random_uniform(1001);
        
        char inputChars[255];
        
        
        NSString *input = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        
        
        NSInteger inputAsInt = [input integerValue];
        NSLog(@"Input was %ld", inputAsInt);
        
        __unused BOOL appStarts = YES;
        
        
        NSLog(@"Thank you for shopping at Acme.com.  Your total today is $%ld.  Please select your payment method. 1. Paypal 2. Stripe 3. Amazon", price);
        
        fgets(inputChars, 255, stdin);
        
        if (inputAsInt == 1) {
            NSLog(@"You chose Paypal");
        }
        if (inputAsInt == 2) {
            NSLog(@"You chose Stripe");
        }
        if (inputAsInt == 3) {
            NSLog(@"You chose Amazon");
            
        }
    }
}

}
}
