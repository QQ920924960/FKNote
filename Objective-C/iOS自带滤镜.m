```
/**
 *  获取iOS系统自带的滤镜名称并写入文件
 */
- (void)imageFilterWriteToFile
{
    NSString *filterNameFilePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"filterName.xml"];
    // 用于存放滤镜名字的数组
    NSMutableArray *filterNames = [NSMutableArray array];
    // 获取所有滤镜的名称
    NSArray *array =[CIFilter filterNamesInCategory:kCICategoryBuiltIn];
    // 遍历所有滤镜名称
    [array enumerateObjectsUsingBlock:^(NSString *str, NSUInteger idx, BOOL *stop) {
        NSString *newStr = [NSString stringWithFormat:@"%ld-%@\n", idx, str];
        [filterNames addObject:newStr];
    }];
    // 将滤镜名称写入文件中
    [filterNames writeToFile:filterNameFilePath atomically:YES];
}

```


```

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<array>
	<string>0-CIAccordionFoldTransition手风琴褶皱过渡
</string>
	<string>1-CIAdditionCompositing加法合成
</string>
	<string>2-CIAffineClamp仿射夹
</string>
	<string>3-CIAffineTile仿射瓷砖
</string>
	<string>4-CIAffineTransform仿射变换
</string>
	<string>5-CIAreaAverage地区平均水平
</string>
	<string>6-CIAreaHistogram区域直方图
</string>
	<string>7-CIAreaMaximum面积最大的
</string>
	<string>8-CIAreaMaximumAlpha面积最大的α
</string>
	<string>9-CIAreaMinimum
</string>
	<string>10-CIAreaMinimumAlpha
</string>
	<string>11-CIAztecCodeGenerator
</string>
	<string>12-CIBarsSwipeTransition
</string>
	<string>13-CIBlendWithAlphaMask
</string>
	<string>14-CIBlendWithMask
</string>
	<string>15-CIBloom
</string>
	<string>16-CIBoxBlur
</string>
	<string>17-CIBumpDistortion
</string>
	<string>18-CIBumpDistortionLinear
</string>
	<string>19-CICheckerboardGenerator
</string>
	<string>20-CICircleSplashDistortion
</string>
	<string>21-CICircularScreen
</string>
	<string>22-CICircularWrap
</string>
	<string>23-CICMYKHalftone
</string>
	<string>24-CICode128BarcodeGenerator
</string>
	<string>25-CIColorBlendMode
</string>
	<string>26-CIColorBurnBlendMode
</string>
	<string>27-CIColorClamp
</string>
	<string>28-CIColorControls
</string>
	<string>29-CIColorCrossPolynomial
</string>
	<string>30-CIColorCube
</string>
	<string>31-CIColorCubeWithColorSpace
</string>
	<string>32-CIColorDodgeBlendMode
</string>
	<string>33-CIColorInvert
</string>
	<string>34-CIColorMap
</string>
	<string>35-CIColorMatrix
</string>
	<string>36-CIColorMonochrome
</string>
	<string>37-CIColorPolynomial
</string>
	<string>38-CIColorPosterize
</string>
	<string>39-CIColumnAverage
</string>
	<string>40-CIComicEffect
</string>
	<string>41-CIConstantColorGenerator
</string>
	<string>42-CIConvolution3X3
</string>
	<string>43-CIConvolution5X5
</string>
	<string>44-CIConvolution7X7
</string>
	<string>45-CIConvolution9Horizontal
</string>
	<string>46-CIConvolution9Vertical
</string>
	<string>47-CICopyMachineTransition
</string>
	<string>48-CICrop
</string>
	<string>49-CICrystallize
</string>
	<string>50-CIDarkenBlendMode
</string>
	<string>51-CIDepthOfField
</string>
	<string>52-CIDifferenceBlendMode
</string>
	<string>53-CIDiscBlur
</string>
	<string>54-CIDisintegrateWithMaskTransition
</string>
	<string>55-CIDisplacementDistortion
</string>
	<string>56-CIDissolveTransition
</string>
	<string>57-CIDivideBlendMode
</string>
	<string>58-CIDotScreen
</string>
	<string>59-CIDroste
</string>
	<string>60-CIEdges
</string>
	<string>61-CIEdgeWork
</string>
	<string>62-CIEightfoldReflectedTile
</string>
	<string>63-CIExclusionBlendMode
</string>
	<string>64-CIExposureAdjust
</string>
	<string>65-CIFalseColor
</string>
	<string>66-CIFlashTransition
</string>
	<string>67-CIFourfoldReflectedTile
</string>
	<string>68-CIFourfoldRotatedTile
</string>
	<string>69-CIFourfoldTranslatedTile
</string>
	<string>70-CIGammaAdjust
</string>
	<string>71-CIGaussianBlur
</string>
	<string>72-CIGaussianGradient
</string>
	<string>73-CIGlassDistortion
</string>
	<string>74-CIGlassLozenge
</string>
	<string>75-CIGlideReflectedTile
</string>
	<string>76-CIGloom
</string>
	<string>77-CIHardLightBlendMode
</string>
	<string>78-CIHatchedScreen
</string>
	<string>79-CIHeightFieldFromMask
</string>
	<string>80-CIHexagonalPixellate
</string>
	<string>81-CIHighlightShadowAdjust
</string>
	<string>82-CIHistogramDisplayFilter
</string>
	<string>83-CIHoleDistortion
</string>
	<string>84-CIHueAdjust
</string>
	<string>85-CIHueBlendMode
</string>
	<string>86-CIKaleidoscope
</string>
	<string>87-CILanczosScaleTransform
</string>
	<string>88-CILenticularHaloGenerator
</string>
	<string>89-CILightenBlendMode
</string>
	<string>90-CILightTunnel
</string>
	<string>91-CILinearBurnBlendMode
</string>
	<string>92-CILinearDodgeBlendMode
</string>
	<string>93-CILinearGradient
</string>
	<string>94-CILinearToSRGBToneCurve
</string>
	<string>95-CILineOverlay
</string>
	<string>96-CILineScreen
</string>
	<string>97-CILuminosityBlendMode
</string>
	<string>98-CIMaskToAlpha
</string>
	<string>99-CIMaximumComponent
</string>
	<string>100-CIMaximumCompositing
</string>
	<string>101-CIMedianFilter
</string>
	<string>102-CIMinimumComponent
</string>
	<string>103-CIMinimumCompositing
</string>
	<string>104-CIModTransition
</string>
	<string>105-CIMotionBlur
</string>
	<string>106-CIMultiplyBlendMode
</string>
	<string>107-CIMultiplyCompositing
</string>
	<string>108-CINoiseReduction
</string>
	<string>109-CIOpTile
</string>
	<string>110-CIOverlayBlendMode
</string>
	<string>111-CIPageCurlTransition
</string>
	<string>112-CIPageCurlWithShadowTransition
</string>
	<string>113-CIParallelogramTile
</string>
	<string>114-CIPDF417BarcodeGenerator
</string>
	<string>115-CIPerspectiveCorrection
</string>
	<string>116-CIPerspectiveTile
</string>
	<string>117-CIPerspectiveTransform
</string>
	<string>118-CIPerspectiveTransformWithExtent
</string>
	<string>119-CIPhotoEffectChrome
</string>
	<string>120-CIPhotoEffectFade
</string>
	<string>121-CIPhotoEffectInstant
</string>
	<string>122-CIPhotoEffectMono
</string>
	<string>123-CIPhotoEffectNoir
</string>
	<string>124-CIPhotoEffectProcess
</string>
	<string>125-CIPhotoEffectTonal
</string>
	<string>126-CIPhotoEffectTransfer
</string>
	<string>127-CIPinchDistortion
</string>
	<string>128-CIPinLightBlendMode
</string>
	<string>129-CIPixellate
</string>
	<string>130-CIPointillize
</string>
	<string>131-CIQRCodeGenerator
</string>
	<string>132-CIRadialGradient
</string>
	<string>133-CIRandomGenerator
</string>
	<string>134-CIRippleTransition
</string>
	<string>135-CIRowAverage
</string>
	<string>136-CISaturationBlendMode
</string>
	<string>137-CIScreenBlendMode
</string>
	<string>138-CISepiaTone
</string>
	<string>139-CIShadedMaterial
</string>
	<string>140-CISharpenLuminance
</string>
	<string>141-CISixfoldReflectedTile
</string>
	<string>142-CISixfoldRotatedTile
</string>
	<string>143-CISmoothLinearGradient
</string>
	<string>144-CISoftLightBlendMode
</string>
	<string>145-CISourceAtopCompositing
</string>
	<string>146-CISourceInCompositing
</string>
	<string>147-CISourceOutCompositing
</string>
	<string>148-CISourceOverCompositing
</string>
	<string>149-CISpotColor
</string>
	<string>150-CISpotLight
</string>
	<string>151-CISRGBToneCurveToLinear
</string>
	<string>152-CIStarShineGenerator
</string>
	<string>153-CIStraightenFilter
</string>
	<string>154-CIStretchCrop
</string>
	<string>155-CIStripesGenerator
</string>
	<string>156-CISubtractBlendMode
</string>
	<string>157-CISunbeamsGenerator
</string>
	<string>158-CISwipeTransition
</string>
	<string>159-CITemperatureAndTint
</string>
	<string>160-CIToneCurve
</string>
	<string>161-CITorusLensDistortion
</string>
	<string>162-CITriangleKaleidoscope
</string>
	<string>163-CITriangleTile
</string>
	<string>164-CITwelvefoldReflectedTile
</string>
	<string>165-CITwirlDistortion
</string>
	<string>166-CIUnsharpMask
</string>
	<string>167-CIVibrance
</string>
	<string>168-CIVignette
</string>
	<string>169-CIVignetteEffect
</string>
	<string>170-CIVortexDistortion
</string>
	<string>171-CIWhitePointAdjust
</string>
	<string>172-CIZoomBlur
</string>
</array>
</plist>


```
