Pod::Spec.new do |s|
  s.name             = 'MicrosoftFluentUI'
  s.version          = '0.0.8'
  s.summary          = 'Fluent UI is a set of reusable UI controls and tools'
  s.homepage         = "https://www.microsoft.com/design/fluent/#/"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Microsoft" => "fluentuinativeowners@microsoft.com"}
  s.source       = { :git => "https://github.com/microsoft/fluentui-apple.git", :branch => 'vnext-prototype', :tag => "0.0.2_Vnext" }
  s.swift_version = "5.0"
  s.module_name = 'FluentUI'


# iOS

  s.ios.deployment_target = "13.0"
  s.prepare_command = <<-CMD
                      ls > preparecommand.txt
                      CMD

  s.subspec 'Avatar_ios' do |avatar_ios|
    avatar_ios.platform = :ios
    avatar_ios.dependency 'MicrosoftFluentUI/Core_ios'
    avatar_ios.source_files = ["ios/FluentUI/Avatar/**/*.{swift,h}"]
  end

  s.subspec 'Button_ios' do |button_ios|
    button_ios.platform = :ios
    button_ios.dependency 'MicrosoftFluentUI/Core_ios'
    button_ios.source_files = ["ios/FluentUI/Button/**/*.{swift,h}"]
  end

  s.subspec 'Core_ios' do |core_ios|
    core_ios.platform = :ios
    core_ios.resource_bundle = { 'FluentUIResources-ios' => ["apple/Resources/**/*.{json,xcassets}",
                                                             "ios/FluentUI/**/*.{storyboard,xib,xcassets,strings,stringsdict}"] }
    core_ios.source_files = ["ios/FluentUI/Configuration/**/*.{swift,h}",
                             "ios/FluentUI/Core/**/*.{swift,h}",
                             "ios/FluentUI/Extensions/**/*.{swift,h}",
                             "ios/FluentUI/Vnext/Core/FluentUIStyle.generated.swift"]
  end


# Mac

  s.osx.deployment_target = "10.14"

  s.subspec 'Appearance_mac' do |appearance_mac|
    appearance_mac.platform = :osx
    appearance_mac.source_files = ["macos/FluentUI/Appearance/**/*.{swift,h}"]
  end

  s.subspec 'AvatarView_mac' do |avatarview_mac|
    avatarview_mac.platform = :osx
    avatarview_mac.dependency 'MicrosoftFluentUI/Core_mac'
    avatarview_mac.dependency 'MicrosoftFluentUI/DynamicColor_mac'
    avatarview_mac.source_files = ["macos/FluentUI/AvatarView/**/*.{swift,h}"]
  end

  s.subspec 'Button_mac' do |button_mac|
    button_mac.platform = :osx
    button_mac.dependency 'MicrosoftFluentUI/Core_mac'
    button_mac.source_files = ["macos/FluentUI/Button/**/*.{swift,h}"]
  end

  s.subspec 'Core_mac' do |core_mac|
    core_mac.platform = :osx
    core_mac.resource_bundle = { 'FluentUIResources-macos' => ["apple/Resources/**/*.{json,xcassets}",
                                                             "macos/FluentUIResources-macos/**/*.{storyboard,xib,xcassets,strings,stringsdict}"] }
    core_mac.source_files = ["macos/FluentUI/Core/**/*.{swift,h}"]
  end

  s.subspec 'DatePicker_mac' do |datepicker_mac|
    datepicker_mac.platform = :osx
    datepicker_mac.dependency 'MicrosoftFluentUI/Core_mac'
    datepicker_mac.dependency 'MicrosoftFluentUI/Appearance_mac'
    datepicker_mac.source_files = ["macos/FluentUI/DatePicker/**/*.{swift,h}"]
  end

  s.subspec 'DynamicColor_mac' do |dynamiccolor_mac|
    dynamiccolor_mac.platform = :osx
    dynamiccolor_mac.dependency 'MicrosoftFluentUI/Appearance_mac'
    dynamiccolor_mac.source_files = ["macos/FluentUI/DynamicColor/**/*.{swift,h}"]
  end

  s.subspec 'Link_mac' do |link_mac|
    link_mac.platform = :osx
    link_mac.dependency 'MicrosoftFluentUI/Core_mac'
    link_mac.source_files = ["macos/FluentUI/Link/**/*.{swift,h}"]
  end

  s.subspec 'Separator_mac' do |separator_mac|
    separator_mac.platform = :osx
    separator_mac.dependency 'MicrosoftFluentUI/Core_mac'
    separator_mac.source_files = ["macos/FluentUI/Separator/**/*.{swift,h}"]
  end

end
