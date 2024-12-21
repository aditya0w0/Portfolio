{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.nodejs_20
    pkgs.nodePackages.nodemon
    pkgs.flutter
    pkgs.openjdk17
    pkgs.kotlin
    pkgs.python311
    pkgs.python311Packages.pandas
    pkgs.python311Packages.numpy
  ];

  env = {
    FLUTTER_HOME = "/nix/store/flutter"; # contoh konfigurasi Flutter
    JAVA_HOME = "/nix/store/openjdk-17";
    KOTLIN_HOME = "/nix/store/kotlin";
  };

  idx = {
    extensions = [
      "dart-code.flutter"
      "vscjava.vscode-java-pack"
      "esbenp.prettier-vscode"
      "ms-python.python"
      "k--kato.intellij-idea-keybindings"
      "bradlc.vscode-tailwindcss"
      "ritwickdey.LiveServer"
      "yandeu.five-server"
    ];

    previews = {
      enable = true;
      previews = {
        web = {
          manager = "web";
          env = {
             PORT = "$PORT";
          };
        };
      };
    };

    workspace = {
      onCreate = {
        npm-install = "npm install";
        flutter-doctor = "flutter doctor";
      };
      onStart = {
        start-frontend = "npm run dev";
        start-backend = "nodemon server.js";
      };
    };
  };
}