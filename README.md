# pangu
Creator of universe in Chinese mythology


### Development
- c++20
- opengl 4.6
- [vulkan >1.2](https://www.lunarg.com/vulkan-sdk/)
- cmake > 3.15
- git
- python3

- [GLFW 3.3.8](https://github.com/glfw/glfw)
- [GLM 0.9.9.8](https://github.com/g-truc/glm)
- STB
- [Dear ImGui v1.89.1](https://github.com/ocornut/imgui)
- [easy_profiler v2.1.0](https://github.com/yse/easy_profiler/releases/download/v2.1.0/easy_profiler-v2.1.0-linux-x64-libc-2.27.tar.gz)
- [easy_sources v2.1.0](https://github.com/yse/easy_profiler/archive/refs/tags/v2.1.0.tar.gz)
- Optick
- Assimp
- Etc2Comp
- Taskflow
- MeshOptimizer


**`windows`**
- vs2019
- mingw64

**`linux`**
- gcc 8+

```sh
sudo apt-get install build-essential cmake git python3.7
```


**`macOS`**



### Troubleshouting
`Error: GLX: Failed to create context: GLXBadFBConfig`
```sh
# you can run:
glxinfo | grep 'version'
# make sure the opengl version is 4.6.0 or greater


# if not, upgrade opengl driver version
https://developer.nvidia.com/opengl-driver
# or
sudo apt-get remove --purge nvidia*
sudo apt -y install linux-headers-$(uname -r) build-essential libglvnd-dev pkg-config
sudo vim /etc/modprobe.d/blacklist.conf
# add the following lines to the file
blacklist nouveau
options nouveau modeset=0

sudo update-initramfs -u
systemctl set-default multi-user.target
systemctl reboot
bash [driver file name]
systemctl set-default graphical.target
systemctl reboot
```
