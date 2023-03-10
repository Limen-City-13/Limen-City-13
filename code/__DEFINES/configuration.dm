//config files
#define CONFIG_GET(X) global.config.Get(/datum/config_entry/##X)
#define CONFIG_SET(X, Y) global.config.Set(/datum/config_entry/##X, ##Y)
/// Gets the datum of the object, for when editing a const define.
#define CONFIG_GET_ENTRY(X) global.config.GetEntryDatum(/datum/config_entry/##X)

#define CONFIG_MAPS_FILE "maps.txt"

//flags
///can't edit
#define CONFIG_ENTRY_LOCKED 1
///can't see value
#define CONFIG_ENTRY_HIDDEN 2
