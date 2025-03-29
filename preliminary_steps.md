# Preliminary steps

## Install Windows

Procede during the installation normally.

> If you have used a Microsoft account in your previous install, you can skip the product key by clicking on "I don't have a product key".
>
> When you log in with the account, the license should be applied automatically.

## Update Windows

Run Windows Update to update the Operating System and its drivers.

Reboot.

## Install additional drivers

Install the correct graphics card driver:

- [AMD GPU](https://www.amd.com/en/support/download/drivers.html)
- [NVIDIA GPU](https://www.nvidia.com/it-it/drivers/)

Check device manager to see if all the hardware was detected and all the drivers have been installed correctly.

If there are warning signs next to a device, check if there are optional/additional Windows updates to install.

If that doesn't fix all the warning signs, use a search engine to find the drivers page of that device.
> Sometimes the device name is "unknown"/"not recognised". In that case, right click on that device and check its properties: it might contain enough information to search online.

In my case I have to install:

- my printer's driver (Brother DCP-1612W) from the official website
- my AIO and PSU drivers (they are used to check power draw and temperatures): Corsair ICue detects and installs the correct drivers
- to make the USB 3.1 ports work: ASMedia USB 3.1 host controller driver from the the motherboard's website (Z170 pro gaming aura)

Reboot.

## Create users

Create at least two Windows users:

- One that has admin privileges. Use it to install drivers/software, do computer maintanance, ...
- One that doesn't have administrator privileges. Use it for daily tasks.

Add more users without admin privileges if needed.

## Docs navigation

[< Index](README.md)

[Applications >](applications.md)
