#define SNAPWIRE_IO_DEVICE
#include <node.h>
#include "device.h"

using namespace v8;

void InitAll(Handle<Object> exports) {
  Device::Init(exports);
}

NODE_MODULE(aiousb, InitAll)
