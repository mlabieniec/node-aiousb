cmd_Release/aiousb.node := ln -f "Release/obj.target/aiousb.node" "Release/aiousb.node" 2>/dev/null || (rm -rf "Release/aiousb.node" && cp -af "Release/obj.target/aiousb.node" "Release/aiousb.node")
