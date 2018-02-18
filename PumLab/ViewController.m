//
//  ViewController.m
//  PumLab
//
//  Created by Student on 18.02.2018.
//  Copyright © 2018 AGH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    
@end

@implementation ViewController

- (IBAction)onSlideCelsius:(id)sender {
    updateUi(_sliderCelsius, _labelCelsius, _labelFahrenheit);
}

- (IBAction)onResetButtonClick:(id)sender {
    [_sliderCelsius setValue:0.0f];
    updateUi(_sliderCelsius, _labelCelsius, _labelFahrenheit);
}

- (IBAction)onToggleFahrenheit:(id)sender {
    bool showFahrenheit = [_fahrenheitToggle isOn];
    [_labelFahrenheit setHidden:!showFahrenheit];
}

void updateUi(UISlider *sliderCelsius,
              UILabel *labelCelsius,
              UILabel *labelFahrenheit) {
    
    float celsius = sliderCelsius.value;
    float fahrenheit = ctof(celsius);
    
    [labelCelsius setText:[NSString stringWithFormat: @"%0.2f", celsius]];
    
    [labelFahrenheit setText:[NSString stringWithFormat: @"%0.2f", fahrenheit]];
}

float ctof(float celsius) {
    return celsius * 9.0f / 5.0f + 32.0f;
}

@end
