

PLAT ?= LINUX
TYPE ?= DEBUG



.PHONY: build bin rm_submod push lib clean run



rm_submod:
# 清空模块目录
	@-git submodule deinit -f ${MOD_NAME}
# 删除.gitmodules中的模块信息
	@-git rm -r --cached ${MOD_NAME}
# 清理.gitmodules!!!
# 删除目录
	@-sed -i "\#${MOD_NAME}#,+3d" .gitmodules
	@-rm -rf .git/modules/${MOD_NAME}
	@-rm -rf ${MOD_NAME}


clean:
	@rm -rf bin
	@rm -rf build
	@rm -rf lib


build:
	@rm -rf build
	@mkdir -p build
ifeq (${PLAT},WINDOWS)
	@cd build && cmake .. -G "Visual Studio 16 2019" -A x64
endif
ifeq (${PLAT},LINUX)
	@cd build && cmake .. -G "Unix Makefiles"
endif
ifeq (${PLAT},MACOS)
	@cd build && cmake .. -G "Unix Makefiles" -
endif

ifeq (${TYPE},DEBUG)
	@cd build && cmake --build . --config Debug
endif
ifeq (${TYPE},RELEASE)
	@cd build && cmake --build . --config Release
endif
ifeq (${TYPE},RELDEBINFO)
	@cd build && cmake --build . --config ReleaseDebInfo
endif


run:
	@./bin/pangu
# or run: MESA_GL_VERSION_OVERRIDE=4.6 ./bin/pangu


push:
	@git add -A && git commit -m "update" && git push origin master
