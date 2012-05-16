//
// Fraction.h
// FractionTest 
//
// Created by Steve Kochan on 9/29/11.
// Copyright (c) ClassroomM, Inc. All rights reserved. 
//

#import <Foundation/Foundation.h> 

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void)			print: (BOOL) simplify;
-(void)			setTo: (int) n over: (int) d;
-(double)		convertToNum;
// Reduce the fraction to its lowest common denominator
-(void)			reduce;
// Add fraction to receiver
-(Fraction *)	add: (Fraction *) f;
-(Fraction *)	subtract: (Fraction *) f;
-(Fraction *)	multiply: (Fraction *) f;
-(Fraction *)	divide: (Fraction *) f;
@end