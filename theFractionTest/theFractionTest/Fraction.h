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

+(Fraction *) allocF;    
// "+" indicates that this is a class method;
//  it is performing an operation the class itself.
+(int) count;
-(void)	print: (BOOL) simplify;
// "-" indicates that this is an instance method;
// it is performing an operation on an instance of the class.
-(void)			setTo: (int) n over: (int) d;
-(double)		convertToNum;
// Reduce the fraction to its lowest common denominator
-(void)			reduce;
// Add fraction to receiver
-(Fraction *)	add: (Fraction *) f;
+(int) addCount;
-(Fraction *)	subtract: (Fraction *) f;
-(Fraction *)	multiply: (Fraction *) f;
-(Fraction *)	divide: (Fraction *) f;

@end