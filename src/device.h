#ifndef DEVICE_H
#define DEVICE_H

#include <node.h>

#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>
#include <aiousb.h>
#include <USBDevice.hpp>

using namespace AIOUSB;
using namespace std;

class Device : public node::ObjectWrap {
 public:
  static void Init(v8::Handle<v8::Object> target);
  USBDeviceArray getDeviceByProductID( int productID ) const;

 private:
  Device();
  ~Device();

  static v8::Handle<v8::Value> New(const v8::Arguments& args);
  static v8::Handle<v8::Value> PlusOne(const v8::Arguments& args);
  double counter_;


};

#endif
