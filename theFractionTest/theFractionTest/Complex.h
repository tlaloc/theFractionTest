//
//  Complex.h
//  Complex
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex: NSObject

@property double real, imaginary;

//  methods  //

-(void) print;		// display as a + bi
-(void) setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) ComplexNum;
@end
