protoc 自定义插件demo

protoc可以通过插件扩展。插件的工作原理是从标准输入中读取 CodeGeneratorRequest, 处理后生成CodeGeneratorResponse ，并写入标准输出中。
插件必须按照 protoc-gen-{NAME} 格式命名，在使用protoc中将， --{NAME}_out 当作参数传给protoc， 就会起作用。
实际调用过程中，可以把生成的插件文件放在环境变量PATH中，也可直接通过--plugin=[ plugin-name=plugin-path, ....] 传给protoc
