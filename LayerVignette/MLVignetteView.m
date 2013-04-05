//
//  MLVignetteView.m
//  LayerVignette
//
//  Created by Matt Long on 4/4/13.
//  Copyright (c) 2013 Matt Long. All rights reserved.
//

#import "MLVignetteView.h"

@implementation MLVignetteView

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    [self adorn];
  }
  return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
  self = [super initWithCoder:aDecoder];
  if (self) {
    [self adorn];
  }
  return self;
}

- (void)adorn
{
  CAGradientLayer *vignetteLayer = [CAGradientLayer layer];
  [vignetteLayer setBounds:[self bounds]];
  [vignetteLayer setPosition:CGPointMake([self bounds].size.width/2.0f, [self bounds].size.height/2.0f)];
  UIColor *lighterBlack = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.8];
  [vignetteLayer setColors:@[(id)[[UIColor clearColor] CGColor], (id)[lighterBlack CGColor]]];
  [vignetteLayer setLocations:@[@(0.50), @(1.0)]];
  
  [[self layer] setBorderWidth:1.0f];
  [[self layer] setCornerRadius:8.0f];
  [[self layer] setMasksToBounds:YES];
  [[self layer] addSublayer:vignetteLayer];
}


@end
