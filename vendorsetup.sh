#Colt Devices Bring in
for f in $(cat vendor/colt/colt.devices); do
    add_lunch_combo colt_$f-userdebug;
done
