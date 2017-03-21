Pod::Spec.new do |s|

  s.name                  = 'DYQRCodeDecoder'
  s.version               = '1.0.1'
  s.summary               = 'An iOS QRCode Scanner and Decoder.'
  s.homepage              = 'https://github.com/Dwarven/QRCode-Decoder'
  s.ios.deployment_target = '8.0'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'Dwarven' => 'prison.yang@gmail.com' }
  s.social_media_url      = "https://twitter.com/DwarvenYang"
  s.source                = { :git => 'https://github.com/Dwarven/QRCode-Decoder.git', :tag => s.version }
  s.source_files          = 'Class/*.{h,m}'
  s.resource              = 'Class/*.png'

end
