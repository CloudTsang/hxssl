rm -rf ../ndll/iPhone
haxelib run hxcpp build.xml -Diphonesim
haxelib run hxcpp build.xml -Diphonesim -DHXCPP_M64
haxelib run hxcpp build.xml -Diphoneos -DHXCPP_ARMV7
haxelib run hxcpp build.xml -Diphoneos -DHXCPP_ARM64
cd ../ndll/iPhone
lipo -thin armv7 libhxssl.iphoneos-v7.a -output libhxssl.iphoneos-v7.a
lipo -thin arm64 libhxssl.iphoneos-64.a -output libhxssl.iphoneos-64.a
lipo -thin i386 libhxssl.iphonesim.a -output libhxssl.iphonesim.a
lipo -thin x86_64 libhxssl.iphonesim-64.a -output libhxssl.iphonesim-64.a
cd ../../src
