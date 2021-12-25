<p align="center">
  <img src="/assets/banner.png">
</p>

<p align="center">
<i>- A custom module for the Polybar -</i>
</p>

## Table of Contents

* [Introduction](#introduction)
* [Getting started](#getting-started)
  * [Installation](#installation)
  * [Configuration](#configuration)

## Introduction

xxxwindow allows customizing the name of the applications shown in the Polybar, it's a custom module, very similar to the internal _xwindow_ module.

Instead of getting:

<p align="center">
  <img src="/assets/xwindowModule.png">
</p>

It is possible to reduce the name to a much simpler one:

<p align="center">                              
    <img src="/assets/xxxwindowModule.png">
</p>

Or even personalize it:

<p align="center">                              
    <img src="/assets/xxxwindowModuleCustom.png">              
</p>

## Getting started

### Installation

To add the xxxwindow module to the Polybar, simply add the following code to the configuration file of the Polybar.

<p align="center">
    <img src="/assets/installationCommandLines.png"
</p>

In the **exec** section, it is necessary to indicate the location of the [xxxwindow.sh](https://github.com/MateoNitro550/xxxwindowPolybarModule/blob/main/xxxwindow.sh) file.

### Configuration

#### WM_DESKTOP

To avoid the following error:

<p align="center">
    <img src="/assets/desktopError.png"
</p>

It is necessary to determine the value of **WM_DESKTOP**. 

To do this, we can run the following command:

```
sleep 3; xdotool getwindowfocus
```

Immediately after executing the command, we should move to an empty desktop; the value we just got, we should replace it here:

<p align="center">
    <img src="/assets/WM_DESKTOP.png"
</p>

#### WM_CLASS

ABC

#### WM_NAME

ABC

#### Colors

ABC
