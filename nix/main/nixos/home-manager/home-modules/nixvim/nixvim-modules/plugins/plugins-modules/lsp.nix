{ pkgs, config, ...}:
{
  plugins = {
    lsp.enable = true;

    lsp-signature = {
      enable = true;
    };

    lspconfig = {
      enable = true;
    };
  };
}
