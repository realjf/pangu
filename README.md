# pangu
Creator of universe in Chinese mythology


### Development
- c++20
- opengl 4.6
- [vulkan >1.2](https://www.lunarg.com/vulkan-sdk/)
- cmake > 3.15
- git
- python3

- [GLFW 3.3.6](https://github.com/glfw/glfw)
- [GLM 0.9.9.8](https://github.com/g-truc/glm)
- STB
- Dear ImGui
- EasyProfiler
- Optick
- Assimp
- Etc2Comp
- Taskflow
- MeshOptimizer


**`windows`**
- vs2019
- mingw64

**`linux`**
- gcc

```sh
sudo apt-get install build-essential cmake git python3.7
```


**`macOS`**



### Troubleshouting
`Error: GLX: Failed to create context: GLXBadFBConfig`
```sh
# upgrade opengl driver version
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