{ config, lib, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;
    
    programs.obs-studio.enable = true;

    environment.systemPackages = with pkgs; [

        (pkgs.wrapOBS {
            plugins = with pkgs.obs-studio-plugins; [
            wlrobs
            obs-backgroundremoval
            obs-pipewire-audio-capture
            obs-vaapi #optional AMD hardware acceleration
            obs-gstreamer
            obs-vkcapture
            obs-advanced-masks
            obs-3d-effect
            obs-composite-blur
            obs-freeze-filter
            obs-gradient-source
            obs-move-transition
            obs-mute-filter
            obs-plugin-countdown
            obs-replay-source
            obs-retro-effects
            obs-scale-to-sound
            obs-shaderfilter
            obs-source-clone
            obs-stroke-glow-shadow
            obs-source-switcher
            obs-source-record
            waveform
            ];
        })
    ];
}
