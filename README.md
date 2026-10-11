# Netherra-AdBlock

**Netherra-AdBlock** is a **systemless** module for rooted Android devices. It is designed to block ads efficiently using the host list from [AdAway](https://github.com/AdAway/AdAway), without making permanent modifications to the system partition. With its **systemless** approach, Netherra-AdBlock ensures device safety, easy installation and removal, and high compatibility across Android versions.

## 📌 Background

Aggressive ads on Android devices can degrade performance, disrupt the user experience, and increase data usage. Although many adblock apps exist, a lot of them modify the system directly or require constant background processes, which can burden the CPU and RAM and raise the risk of bootloops.  

Netherra-AdBlock offers a **systemless** solution that uses **trusted host lists from AdAway** to block ad domains without permanently modifying the system.

## 🔧 Key Features

1. **Systemless and Safe**
   - Does not alter the system partition.
   - Lets you enable or disable the module at any time without risk of system damage.

2. **Host-Based Ad Blocking**
   - Uses the official host list from [AdAway](https://github.com/AdAway/AdAway) to block ad domains at the DNS level.

3. **Lightweight and Efficient**
   - No background processes running.
   - Minimizes RAM and CPU usage compared to app-based adblockers.

4. **High Compatibility**
   - Supports Android devices rooted with Magisk or KernelSU.
   - Works across various Android versions without additional configuration.

5. **Easy to Remove**
   - Can be removed easily through Magisk/KSU Manager without leaving any residue.

## ✅ Advantages of Netherra-AdBlock Over Other Adblockers

| Feature | Netherra-AdBlock | Other Adblock / AdAway Solutions |
|-------|-----------------|----------------------|
| **Does not modify the system partition** | ✅ Systemless | ❌ Many other adblockers require system partition modification |
| **Easy to remove** | ✅ Disable or delete the module in Magisk/KSU | ❌ Some adblockers require complex manual uninstallation |
| **Lightweight** | ✅ No additional background processes | ❌ Some other adblockers run continuously, consuming RAM/CPU |
| **Trusted host list** | ✅ Based on official AdAway | ❌ Not all adblockers use trusted sources |
| **Simple installation** | ✅ Install the `.zip` module via Magisk/KSU | ❌ Some adblockers require manual configuration or additional apps |
| **Root-safe** | ✅ Reduces the risk of bootloops or permanent system modification | ❌ Direct modification increases the risk of system damage |

## 📥 Installation

### 1. Download the Module

- Download the `.zip` file from [Netherra-AdBlock Releases](https://github.com/AX271/Netherra-AdBlock/releases) or clone the repository to build it yourself.

### 2. Install the Module via Magisk or KSU

1. Open **Magisk Manager** or **KSU Manager**.
2. Go to the **Modules** tab.
3. Tap the **Install from storage** button and select the module `.zip` file.
4. Reboot your device to apply the module.

### 3. Verification

- After rebooting, open an app or website that previously showed ads to confirm that blocking works.
- Use the `ping` or `nslookup` command to check DNS resolution for blocked domains.

## 🛠️ How It Works

1. **Copying the Host List**
   - The module copies the AdAway host list to a **systemless** location (`/data/adb/modules/Netherra-AdBlock/system/etc/hosts` or equivalent).
   
2. **DNS Resolution**
   - Every DNS request for a domain in the host list is redirected to `127.0.0.1`, so ads fail to load.

3. **Systemless Execution**
   - Because the module runs systemless, host changes can be reverted at any time by disabling or deleting the module, without affecting the system partition.

## 🧹 Removing the Module

1. Open **Magisk/KSU Manager** → **Modules**.
2. Select **Netherra-AdBlock**.
3. Tap **remove/uninstall**.
4. Reboot your device.

**Note:** No residue is left on the system because the module is systemless.

## 🛡️ Uses and Applications

- Removes ads in Android apps and browsers.
- Improves device performance by reducing RAM and CPU usage.
- Saves data quota by blocking automatic ad downloads.
- Suitable for rooted devices with Magisk/KSU, without the risk of permanent system modification.

## ⚠️ Important Notes

- Make sure your device is rooted with Magisk or KSU.
- Back up important data before installing the module.
- This module is **not compatible** with non-rooted devices.
- Being systemless keeps the system safe, but you should still be careful when changing the hosts file or other modules that affect the system.

## 🔗 Host List Source

- The host list used is taken from the **AdAway Official Repository**: [AdAway](https://github.com/AdAway/AdAway)

## 📄 License

- This module is licensed under the **[MIT License](LICENSE)**.  
- Use of the AdAway host list remains subject to the license and terms in the official AdAway repository.
