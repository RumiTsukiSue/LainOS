{ config, pkgs, ... }:
{
  programs.nixvim = {
    plugins.cmp = {
      enable = true;
      settings = {
        experimental = {
          ghost_text = true;  # 启用鬼影文本，像 VSCode 内联建议
        };
        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
        };
        sources = [
          { name = "nvim_lsp"; keyword_length = 3; }  # LSP，支持延迟
          { name = "path"; keyword_length = 3; }
          { name = "buffer"; keyword_length = 3; option.get_bufnrs.__raw = "vim.api.nvim_list_bufs"; }  # 从所有缓冲区补全，延迟
          { name = "luasnip"; keyword_length = 3; }
        ];
        window = {
          completion = { border = "rounded"; };
          documentation = { border = "rounded"; };
        };
      };
    };

    plugins.luasnip.enable = true;
  };
}
