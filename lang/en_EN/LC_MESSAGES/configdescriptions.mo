��    @        Y         �     �     �     �     �     �     �     �               3     N     d     |  '   �  #   �  !   �           (  %   C      i     �     �     �     �     �     �               8     I     [     t     �     �     �     �     �     �     �     		  "   $	     G	     Y	     q	     �	     �	     �	     �	     �	     �	     
     /
     F
     Z
     h
  &   �
     �
     �
     �
     �
     �
            �    �   �     z  /   �  8  �    �  4   �  �   '  �   �  �   �  Q  �  +   �  -     :   >  Z   y  #   �  m   �  8   f  4   �  %   �  q   �  7   l    �  �   �  �   E  |   �  �   F       x        �     �  %   �  C   �       6        F  �   K  	   .  C   8  �   |  �   $  �   �  A   �  �   �  �   g  0   d      �      �   Z   �   W   
!  K   b!  "   �!  6   �!  o   "     x"     �"  ~   �"     #  �   5#  Z   �#     9$  �   =$  6   �$     %         4   6                       7   	   
          0       !       $          /   #       8                                       '   )      @       -   "   .             *                    ,   +          2   ;                :   5   <      (   =   &   1      3       9            %          ?      >                       AHCI_RUNTIME_PM_GROUP Audio_CATEGORY BAY_DEVICE_ID BAY_POWEROFF_ON_BAT_ID CHARGE_THRESH_BAT0_GROUP CHARGE_THRESH_BAT1_GROUP CPU_BOOST_GROUP CPU_PERF_GROUP CPU_SCALING_FREQ_GROUP CPU_SCALING_GOVERNOR_GROUP DEVICES_ON_DOCK_GROUP DEVICES_ON_UNDOCK_GROUP DEVICES_TO_DISABLE_ON_BAT_ID DEVICES_TO_DISABLE_ON_BAT_NOT_IN_USE_ID DEVICES_TO_DISABLE_ON_CONNECT_GROUP DEVICES_TO_DISABLE_ON_SHUTDOWN_ID DEVICES_TO_DISABLE_ON_STARTUP_ID DEVICES_TO_ENABLE_ON_AC_ID DEVICES_TO_ENABLE_ON_DISCONNECT_GROUP DEVICES_TO_ENABLE_ON_SHUTDOWN_ID DEVICES_TO_ENABLE_ON_STARTUP_ID DISK_APM_LEVEL_GROUP DISK_DEVICES_ID DISK_IDLE_SECS_GROUP DISK_IOSCHED_ID DISK_SPINDOWN_TIMEOUT_GROUP Disks_CATEGORY ENERGY_PERF_POLICY_GROUP General_CATEGORY Graphics_CATEGORY MAX_LOST_WORK_SECS_GROUP NMI_WATCHDOG_ID Network_CATEGORY PCIE_ASPM_GROUP PCIe_CATEGORY PHC_CONTROLS_ID Processor_CATEGORY RADEON_DPM_PERF_LEVEL_GROUP RADEON_DPM_STATE_GROUP RADEON_POWER_PROFILE_GROUP RESTORE_DEVICE_STATE_ON_STARTUP_ID RUNTIME_PM_ALL_ID RUNTIME_PM_BLACKLIST_ID RUNTIME_PM_DRIVER_BLACKLIST_ID RUNTIME_PM_GROUP Radio Device Wizard_CATEGORY Radio_CATEGORY SATA_LINKPWR_BLACKLIST_ID SATA_LINKPWR_GROUP SCHED_POWERSAVE_GROUP SOUND_POWER_SAVE_CONTROLLER_ID SOUND_POWER_SAVE_GROUP TLP_DEFAULT_MODE_ID TLP_ENABLE_ID ThinkPad Battery_CATEGORY USB_AUTOSUSPEND_DISABLE_ON_SHUTDOWN_ID USB_AUTOSUSPEND_ID USB_BLACKLIST_ID USB_BLACKLIST_WWAN_ID USB_CATEGORY USB_WHITELIST_ID WIFI_PWR_GROUP WOL_DISABLE_ID Project-Id-Version: TLPUI
POT-Creation-Date: 2016-10-01 20:26+0200
PO-Revision-Date: 2016-10-01 20:26+0200
Last-Translator: 
Language-Team: 
Language: en
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.8.7.1
X-Poedit-Basepath: ../..
Plural-Forms: nplurals=2; plural=(n != 1);
X-Poedit-SourceCharset: UTF-8
X-Poedit-KeywordsList: _
X-Poedit-SearchPath-0: configschema.json.h
 Runtime Power Management for AHCI controllers and disks: on=disable, auto=enable.

** EXPERIMENTAL ** WARNING: auto will most likely cause system lockups/data loss Audio Optical drive device to power off (default sr0) Set to power off optical drive in UltraBay/MediaBay when running on battery.
Otherwise this feature is disabled (Default).
Drive can be powered on again by releasing (and reinserting) the
eject lever or by pressing the disc eject button on newer models.
Note: an UltraBay/MediaBay hard disk is never powered off. Battery charge thresholds (ThinkPad only, tp-smapi or acpi-call kernel module required)
Charging starts when the remaining capacity falls below the START_CHARGE_TRESH
value and stops when exceeding the STOP_CHARGE_TRESH value.
Main / Internal battery (values in %) Ultrabay / Slice / Replaceable battery (values in %) Set the cpu "turbo boost" feature.
Requires an Intel Core i processor.
Important:
- This may conflict with your distribution's governor settings
- A value of 1 does not activate boosting, it just allows it Set Intel P-state performance: 0..100 (%)
Limit the max/min P-state to control the power dissipation of the CPU.
Values are stated as a percentage of the available performance.
Requires an Intel Core i processor with intel_pstate driver. Set the min/max frequency available for the scaling governor.
Possible values strongly depend on your cpu.
For available frequencies see tlp-stat output, Section "Processor". Select a cpu frequency scaling governor: ondemand/powersave/performance/conservative
Intel Core i processor with intel_pstate driver: powersave/performance
Important:
- You *must* disable your distribution's governor settings or conflicts will occur
- ondemand is sufficient for *almost all* workloads, you should know what you're doing! Radio devices to enable/disable when docked Radio devices to enable/disable when undocked Radio devices to disable on battery: bluetooth, wifi, wwan Radio devices to disable on battery when not in use (not connected):
bluetooth, wifi, wwan Radio devices to disable on connect Radio devices to disable on shutdown: bluetooth wifi wwan
(workaround for devices that are blocking shutdown) Radio devices to disable on startup: bluetooth wifi wwan Radio devices to enable on AC: bluetooth, wifi, wwan Radio devices to enable on disconnect Radio devices to enable on shutdown: bluetooth wifi wwan
(to prevent other operating systems from missing radios) Radio devices to enable on startup: bluetooth wifi wwan Hard disk advanced power management level: 1..254, 255 (max saving, min, off)
Levels 1..127 may spin down the disk; 255 allowable on most drives.
Separate values for multiple disks with spaces. Use the special value 'keep'
to keep the hardware default for the particular disk. Hard disk devices, separate multiple devices with spaces (default: sda).
Devices can be specified by disk id too (lookup with: tlp diskid). Seconds laptop mode has to to wait after the disk goes idle before doing a sync.
Non-zero value enables, zero disables laptop mode. Select io scheduler for the disk devices: noop/deadline/cfq (Default: cfq)
Separate values for multiple devices with spaces. Hard disk spin down timeout:
0:			spin down disabled
1..240:		timeouts from 5s to 20min (in units of 5s)
241..251:	timeouts from 30min to 5.5 hours (in units of 30min)
(see 'man hdparm' for details) Disks Set CPU performance versus energy savings policy.
Requires kernel module msr and x86_energy_perf_policy from linux-tools General Graphics Dirty page values (timeouts in secs). Kernel NMI Watchdog
off: saves power, on: for kernel debugging only Network PCI Express Active State Power Management (PCIe ASPM). PCIe Change CPU voltages aka "undervolting"
Kernel with PHC patch required
Freq:voltage pairs are written to /sys/devices/system/cpu/cpu0/cpufreq/phc_controls
CAUTION: only use this, if you thoroughly understand what you are doing! Processor Radeon DPM performance level: auto, low, high; auto is recommended. Radeon dynamic power management method (DPM): battery, performance
Works with open-source driver 'radeon' only,
requires kernel >= 3.11 and boot 'option radeon.dpm=1'. Radeon graphics clock speed (profile method): low, mid, high, auto, default;
auto = mid on BAT, high on AC; default = use hardware defaults.
Requires open-source driver 'radeon'. Restore radio device state (Bluetooth, WiFi, WWAN) from previous shutdown on system startup.
Hint: the parameters DEVICES_TO_DISABLE/ENABLE_ON_STARTUP/SHUTDOWN below are ignored when this is enabled! Runtime PM for *all* PCI(e) bus devices, except blacklisted ones. Exclude PCI(e) device adresses the following list from Runtime PM
(separate with spaces). Use lspci to get the adresses (1st column). Exclude PCI(e) devices assigned to the listed drivers from Runtime PM
(should prevent accidential power on of hybrid graphics' discrete part).
Default is "radeon nouveau"; use "" to disable the feature completely.
Separate multiple drivers with spaces. Runtime Power Management for PCI(e) bus devices. Radio Device Wizard Radio Exclude SATA host devices from link power management.
Separate multiple hosts with spaces. SATA aggressive link power management (ALPM): min_power, medium_power, max_performance. Minimize number of used cpu cores/hyper-threads under light load conditions Disable controller too (HDA only). Enable audio power saving for Intel HDA, AC97 devices. Operation mode when no power supply can be detected: AC, BAT.
Concerns some desktop and embedded hardware only. Enable/disable TLP. ThinkPad Battery Set to disable autosuspend before shutdown / otherwise to do nothing
(workaround for USB devices that cause shutdown problems) USB autosuspend feature. Devices from the following list are excluded from autosuspend
(separate with spaces). Use lsusb to get the ids.
Note: input devices (usbhid) are excluded automatically. WWAN devices are excluded from autosuspend.
Note: works for ids 05c6:* 0bdb:* 1199:* only. USB Include listed devices into autosuspend even if already excluded
by the driver or WWAN blacklists above (separate with spaces).
Use lsusb to get the ids. WiFi power saving mode. Not supported by all adapters. Disable wake on LAN. 