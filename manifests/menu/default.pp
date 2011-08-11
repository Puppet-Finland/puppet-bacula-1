class pxe::menu::default ($tftp_root){

  $target    = 'default'
  $fullpath  = "$tftp_root/pxelinux.cfg"

  concat::fragment { "menu_default-header":
    order  => '00',
    target => "$fullpath/$target",
    source => "puppet:///modules/pxe/default";
  }

  concat { "$fullpath/$target": }

}
