{ config, lib, pkgs, inputs, ... }:
let
  cfg = config.core.dev;
  base = pkgs.appimageTools.defaultFhsEnvArgs;
  devPackages = with pkgs; [
    ## Lsp
    nixd
    ## formating
    shfmt
    treefmt
    nixfmt-rfc-style
    ## C / C++
    gcc_multi
    gdb
    cmake
    gnumake
    valgrind
    llvmPackages_20.clang-tools
    ## Python
    python3
    python3Packages.ipython
  ];
  devPackages32bit = with pkgs.pkgsi686Linux; [
    glibc
    glibc.dev
    gccNGPackages_15.libstdcxx
    libgcc
    zlib     # 压缩库
    ncurses  # 终端库
  ];
  fhsEnv = pkgs.buildFHSEnv (base // {
    name = "fhs-shell";
    targetPkgs = pkgs: (with pkgs; [
      # FHS 环境本身需要的一些基础包
      pkg-config
      ncurses
      zlib
    ]) ++ devPackages;
    multiPkgs = pkgs: devPackages32bit;
    multiArch = true;
    runScript = "zsh";
    # 额外绑定路径，提升兼容性（例如运行非 Nix 二进制）
    extraBwrapArgs = [
    ];
    # 环境变量和欢迎消息
    profile = ''
      export FHS_ENV=1
      export PS1="\[\e[1;32m\][FHS]\[\e[0m\] > "
      echo "--- Entered FHS Development Environment ---"
    '';
  });
in
{
  # 1. 定义模块的选项 (Options)
  # ------------------------------------
  # 这使得你的配置。
  # 你可以在 flake.nix 中通过 my.dev.enable = true; 来启用它。
  options.core.dev = {
    enable = lib.mkEnableOption "Enable core development environment tools";
  };
  # 2. 根据选项生成配置 (Configuration)
  # ------------------------------------
  # lib.mkIf 会判断 enable 选项是否为 true，如果是，则应用下面的配置。
  config = lib.mkIf cfg.enable {
    nix.settings = {
      # 添加 devenv 的二进制缓存
      extra-substituters = [ "https://devenv.cachix.org" ];
      # 信任 devenv 缓存的公钥
      extra-trusted-public-keys = [ "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw=" ];
    };
    environment.systemPackages =
      [
        fhsEnv
	pkgs.appimage-run
        inputs.devenv.packages.${pkgs.system}.devenv
      ];
  };
}
