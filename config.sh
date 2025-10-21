#!/system/bin/sh
# MODULENAME: Netherra AdBlock
MODID=netherraadblock

# Skip mount on certain folders (no need for us)
SKIPMOUNT=false

# Set to true if you want to load properties or system scripts
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

# Print module info to Magisk log
print_modname() {
  ui_print "*******************************"
  ui_print "   Netherra AdBlock v1.0      "
  ui_print "        by AX271              "
  ui_print "*******************************"
}

# Permissions setting (optional here)
set_permissions() {
  # Default permission: read-only for hosts file
  set_perm $MODPATH/system/etc/hosts 0 0 644
}
