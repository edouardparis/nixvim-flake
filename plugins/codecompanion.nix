{pkgs, ...}: {
  plugins.codecompanion = {
    enable = true;
    settings = {
      adapters = {
        ollama.__raw = ''
              function()
                return require('codecompanion.adapters').extend('ollama', {
                  env = {
                    url = "http://mac-mini-de-edouard:11434",
                  },
                  schema = {
                    model = {
                      default = 'qwen2.5-coder:14b',
                    },
                    temperature = {
                      default = 0.6,
                    },
                    num_ctx = {
                      default = 32768,
                    },
                  },
                })
              end
              '';
        openrouter.__raw = ''
          function()
            return require("codecompanion.adapters").extend("openai_compatible", {
              env = {
                api_key = "cmd:${pkgs.pass}/bin/pass openrouter/api-key",
                url = "https://openrouter.ai/api",
                chat_url = "/v1/chat/completions",
              },
              schema = {
                model = {
                  default = "mistralai/devstral-small",
                },
              },
            })
          end
          '';

        openrouter-perso.__raw = ''
          function()
            return require("codecompanion.adapters").extend("openai_compatible", {
              env = {
                api_key = "cmd:PASSWORD_STORE_DIR=~/.password-personal ${pkgs.pass}/bin/pass openrouter.ai/api-key",
                url = "https://openrouter.ai/api",
                chat_url = "/v1/chat/completions",
              },
              schema = {
                model = {
                  default = "mistralai/devstral-small:free",
                },
              },
            })
          end
          '';
      };

      strategies = {
        agent = {
          adapter = "openrouter";
        };
        chat = {
          adapter = "openrouter";
        };
        inline = {
          adapter = "openrouter";
        };
      };
    };
  };
}
