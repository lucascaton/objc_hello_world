//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Lucas Caton on 3/29/11.
//  Copyright 2011 Sotix. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
-(void)viewDidLoad {
  [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

-(void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

-(void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


-(void)dealloc {
    [super dealloc];
}

-(IBAction)changeText{
  if(label1.text == @"Bio Ritmo!"){
    label1.text = @"";
  }else{
    label1.text = @"Bio Ritmo!";
  }
}

-(IBAction)changeText2{
  if(label2.text == @"Lucas Catón :)"){
    label2.text = @"";
  }else{
    label2.text = @"Lucas Catón :)";
  }
}

-(IBAction)changeTextAlpha:(UISlider*)_slider{
  label2.alpha = _slider.value;
  label2.hidden = !switch1.on;
  switch1.on = _slider.value != 0;
}

-(IBAction)hideText2:(UISwitch*)_switch{
  label2.hidden = !_switch.on;
  [slider1 setValue:_switch.on animated:YES];
  label2.alpha = slider1.value;
}

@end