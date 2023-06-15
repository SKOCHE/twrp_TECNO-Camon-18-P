#!/bin/bash

cd bootable/recovery-twrp
git apply -v ../../device/Tecno/Camon18P/patches/0001-persist_settings.patch
cd ../..

echo Patch applied successfully
