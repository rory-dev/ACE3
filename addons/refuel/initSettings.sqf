[
    QGVAR(enabled),
    "CHECKBOX",
    ELSTRING(common,Enabled),
    [LELSTRING(OptionsMenu,CategoryLogistics), localize "str_state_refuel"],
    true,
    true,
    {[QGVAR(enabled), _this] call EFUNC(common,cbaSettings_settingChanged)},
    true // Needs mission restart
] call CBA_Settings_fnc_init;

[
    QGVAR(rate), "SLIDER",
    [LSTRING(RefuelSettings_speed_DisplayName), LSTRING(RefuelSettings_speed_Description)],
    [LELSTRING(OptionsMenu,CategoryLogistics), localize "str_state_refuel"],
    [0,25,1,1], // [min, max, default value, trailing decimals (-1 for whole numbers only)]
    true, // isGlobal
    {[QGVAR(rate), _this] call EFUNC(common,cbaSettings_settingChanged)}
] call CBA_settings_fnc_init;

[
    QGVAR(hoseLength), "SLIDER",
    [LSTRING(RefuelSettings_hoseLength_DisplayName)],
    [localize ELSTRING(OptionsMenu,CategoryLogistics), localize "str_state_refuel"],
    [0,50,12,1], // [min, max, default value, trailing decimals (-1 for whole numbers only)]
    true, // isGlobal
    {[QGVAR(hoseLength), _this] call EFUNC(common,cbaSettings_settingChanged)}
] call CBA_settings_fnc_init;
