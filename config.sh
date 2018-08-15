AUTOMOUNT=true
PROPFILE=true
POSTFSDATA=false
LATESTARTSERVICE=true

print_modname() {
  ui_print "******************************"
  ui_print "  Basic Tweaks Magisk Module  "
  ui_print "******************************"
}

REPLACE="
/system/etc/permissions/handheld_core_hardware.xml
"

set_permissions() {
  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
  set_perm  $MODPATH/system/etc/permissions/handheld_core_hardware.xml  0  0  0644
  set_perm  $MODPATH/system/bin/hosts  0  0  0777
}
