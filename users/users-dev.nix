{ config, pkgs, ... }:

let
  # SSH keys used for remote user support
  remoteSupportSSHKeys = [ ./imincik.pub ];
  extraGroups = [ "vboxusers" ];

in
{
  users.users.user1 = {
    description = "Test User 1";
    isNormalUser = true;
    home = "/home/user1";
    password = "";
    extraGroups = extraGroups;

    openssh.authorizedKeys.keyFiles = remoteSupportSSHKeys;
  };

  users.users.user2 = {
    description = "Test User 2";
    isNormalUser = true;
    home = "/home/user2";
    password = "";
    extraGroups = extraGroups;

    openssh.authorizedKeys.keyFiles = remoteSupportSSHKeys;
  };
}
