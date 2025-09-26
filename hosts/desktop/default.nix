{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
    ./../../modules/drivers
  ];

  # 基础电源管理
  powerManagement.enable = true;
  
  # ACPI事件处理（桌面也需要）
  services.acpid.enable = true;
  
  # 应用程序电源状态支持
  services.upower.enable = true;
  
  # 让桌面环境处理电源键
  services.logind.settings.Login = {
    HandlePowerKey = "ignore";
    HandleSuspendKey = "ignore";
    HandleHibernateKey = "ignore";
  };

  # 启用nvida专有驱动
  drivers.nvidia.enable = true;

  # 启用开发环境
  core.dev.enable = true;
}
