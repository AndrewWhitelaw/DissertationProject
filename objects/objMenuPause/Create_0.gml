paused = false;
layerName = "PauseLayer";

update_pause = function()
{
    if(paused){
        instance_deactivate_all(true);
        layer_set_visible(layerName, true);
    }
    else{
        instance_activate_all();
        layer_set_visible(layerName, false);
        layer_set_visible("SettingsLayer", false);
    }
}

update_pause();

layer_set_visible("SettingsLayer", false);