#define SNAPWIRE_IO_DEVICE
#include <node.h>
#include "device.h"

using namespace v8;

Device::Device() {};
Device::~Device() {};

void Device::Init(Handle<Object> target) {
  // Prepare constructor template
  Local<FunctionTemplate> tpl = FunctionTemplate::New(New);
  tpl->SetClassName(String::NewSymbol("Device"));
  tpl->InstanceTemplate()->SetInternalFieldCount(1);
  // Prototype
  tpl->PrototypeTemplate()->Set(String::NewSymbol("plusOne"),
      FunctionTemplate::New(PlusOne)->GetFunction());

  Persistent<Function> constructor = Persistent<Function>::New(tpl->GetFunction());
  target->Set(String::NewSymbol("Device"), constructor);
}

Handle<Value> Device::New(const Arguments& args) {
  HandleScope scope;

  Device* obj = new Device();
  obj->counter_ = args[0]->IsUndefined() ? 0 : args[0]->NumberValue();
  obj->Wrap(args.This());

  return args.This();
}

Handle<Value> Device::PlusOne(const Arguments& args) {
  HandleScope scope;

  Device* obj = ObjectWrap::Unwrap<Device>(args.This());
  obj->counter_ += 1;

  return scope.Close(Number::New(obj->counter_));
}
