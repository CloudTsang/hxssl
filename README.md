HXSSL
=====
Haxe Cpp/Neko OpenSSL bindings  

[![Build Status](https://travis-ci.org/tong/hxssl.svg?branch=master)](https://travis-ci.org/tong/hxssl)

### Windows build
Modify your .hxcpp_config.xml to integrate openssl library ( you can download standalone ones or cygwin ones ).
Add a define for snprintf which is no longer supported
Comment out non win compatible SOCKET things ( should be normalized in a separate header )
Hint the compiler for the lib inclusion : #pragma comment (lib, "Ws2_32.lib")

### iOS build
Run build-libssl.sh in the `dependencies/ios-openssl` directory (openssl for iOS).
Then, run hxcpp, and ensure there is only one architecture in each binary.
This can be done by running `lipo` in the `ndll/iPhone/` directory:
```
lipo -thin armv7 libhxssl.iphoneos-v7.a -output libhxssl.iphoneos-v7.a
lipo -thin arm64 libhxssl.iphoneos-64.a -output libhxssl.iphoneos-64.a
lipo -thin i386 libhxssl.iphonesim.a -output libhxssl.iphonesim.a
lipo -thin x86_64 libhxssl.iphonesim-64.a -output libhxssl.iphonesim-64.a
```
