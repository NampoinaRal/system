$font = CodeNewRomanNerdFont
$white = rgb(255,252,242)
$silver = rgb(204,197,185)
$brown = rgb(64,61,57)
$black = rgb(37,36,34)
$paprika = rgb(235,94,40)
$shadow = rgba(37,36,34,0.5)

general {
  ignore_empty_input = true
}

animations {
    enabled = true
    bezier = linear, 1, 1, 0, 0
    animation = fadeIn, 1, 5, linear
    animation = fadeOut, 1, 5, linear
    animation = inputFieldDots, 1, 2, linear
}

background {
    monitor =
    path = screenshot
    blur_passes = 3
}

input-field {
    monitor =
    size = 20%, 5%
    outline_thickness = 3
    inner_color = rgba(0, 0, 0, 0.0) # no fill

    outer_color = $paprika
    check_color = $brown
    fail_color = $paprika

    font_color = $white
    fade_on_empty = false
    rounding = 15

    font_family = $font
    placeholder_text = Mot de passe
    fail_text = $PAMFAIL

    # uncomment if you wish to display a message during authentication
    # check_text = Authenticating...

    # uncomment to use a letter instead of a dot to indicate the typed password
    # dots_text_format = *
    # dots_size = 0.4
    dots_spacing = 0.3

    # uncomment to use an input indicator that does not show the password length (similar to swaylock's input indicator)
    # hide_input = true

    position = 0, -20
    halign = center
    valign = center
}

# TIME
label {
    monitor =
    text = $TIME # ref. https://wiki.hyprland.org/Hypr-Ecosystem/hyprlock/#variable-substitution
    font_size = 90
    font_family = $font

    position = -30, 0
    halign = right
    valign = top
}

# DATE
label {
    monitor =
    text = cmd[update:60000] date +"%A, %d %B %Y" # update every 60 seconds
    font_size = 25
    font_family = $font

    position = -30, -150
    halign = right
    valign = top
}
