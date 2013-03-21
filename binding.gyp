{
  "targets": [
    {
      "target_name": "aiousb",
      "sources": [ "./src/aiousb.cc", "./src/device.cc" ],
      'include_dirs+': [ 'src/','/usr/include/aiousb/','/usr/include/libusb-1.0/' ],
      'link_settings': {
          'conditions' : [
              ['OS=="linux"',
                  {
                      'libraries': [
                        '-lusb-1.0'
                      ]
                  }
              ],
              ['OS=="mac"',
                  {
                      'libraries': [
                        '-lusb-1.0'
                      ]
                  }
              ]
          ]
        }
    }
  ]
}
