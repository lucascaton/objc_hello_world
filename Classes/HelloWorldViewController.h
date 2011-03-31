//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Lucas Caton on 3/29/11.
//  Copyright 2011 Sotix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController {
  IBOutlet UILabel* label1;
  IBOutlet UILabel* label2;
  IBOutlet UISlider* slider1;
  IBOutlet UISwitch* switch1;
}

-(IBAction)changeText;
-(IBAction)changeText2;
-(IBAction)changeTextAlpha:(UISlider*)_slider;
-(IBAction)hideText2:(UISwitch*)_switch;

@end