//
//  ViewController.h
//  PumLab
//
//  Created by Student on 18.02.2018.
//  Copyright © 2018 AGH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISlider *sliderCelsius;
@property (strong, nonatomic) IBOutlet UILabel *labelCelsius;
@property (strong, nonatomic) IBOutlet UILabel *labelFahrenheit;
@property (strong, nonatomic) IBOutlet UISwitch *fahrenheitToggle;

- (IBAction)onSlideCelsius:(id)sender;
- (IBAction)onResetButtonClick:(id)sender;
- (IBAction)onToggleFahrenheit:(id)sender;


@end
