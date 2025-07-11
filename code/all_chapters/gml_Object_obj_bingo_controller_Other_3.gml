/// IMPORT

if (global.ws_client != -1)
    network_destroy(global.ws_client);

ds_list_destroy(global.recruits_list);
instance_destroy();