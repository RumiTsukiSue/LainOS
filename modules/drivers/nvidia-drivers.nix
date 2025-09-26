{ lib
, pkgs
, config
, ...
}:
with lib;
let
  cfg = config.drivers.nvidia;
in
{
  options.drivers.nvidia = {
    enable = mkEnableOption "Enable Nvidia Drivers";
  };

  config = mkIf cfg.enable {
    # X11 Video Drivers
    services.xserver.videoDrivers = [ "nvidia" ];

    # Nvidia-specific hardware configuration
    hardware.nvidia = {
      # Modesetting is required for modern Nvidia GPUs
      modesetting.enable = true;
      # Power management: experimental, may cause sleep issues
      powerManagement.enable = true;
      # Fine-grained power management: only for Turing+ GPUs
      powerManagement.finegrained = false;
      # Open-source kernel module: alpha-quality, not recommended yet
      open = false;
      # Enable Nvidia settings GUI
      nvidiaSettings = true;
      # Driver package: adjust if needed for specific GPU
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  
  boot.kernelParams = [
    # 保持这个，用于临时文件
    "nvidia.NVreg_TemporaryFilePath=/var/tmp/nvidia"
    # 添加这些以改善 suspend/resume（基于 NixOS Discourse 和 NVIDIA 文档）
    "nvidia-drm.modeset=1"  # 启用 NVIDIA DRM 模式设置，帮 GPU 恢复
    "nvidia-drm.fbdev=1"    # 启用 framebuffer 设备，防止黑屏
    # "acpi_osi=Linux"        # 告诉BIOS使用Linux的ACPI行为
    # "acpi_backlight=vendor" # 如果是笔记本，帮 backlight 恢复
    # "ibt=off"               # 如果有 Intel CPU，禁用以避免 ACPI 冲突
  ];

    # System packages: only install when Nvidia is enabled
    environment.systemPackages = with pkgs; [
      glxinfo          # OpenGL info tool
      pciutils         # PCI device info
      libva-utils      # VAAPI verification
      vulkan-tools     # Vulkan support check
    ];

    # Environment variables: Nvidia-specific, only set when enabled
    environment.sessionVariables = {
      GBM_BACKEND = "nvidia-drm";           # For Wayland/EGL
      __GLX_VENDOR_LIBRARY_NAME = "nvidia"; # Force Nvidia GLX
      LIBVA_DRIVER_NAME = "nvidia";         # VAAPI driver
      NVD_BACKEND = "direct";               # XWayland acceleration
    };
  };
}
