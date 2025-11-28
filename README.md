# WLAN Password INFO

## Description

This batch script allows you to display the stored Wi-Fi profiles and their passwords on a Windows system. It uses the command `netsh wlan show profiles` to list available Wi-Fi profiles and retrieve detailed information about a specific Wi-Fi profile (including the stored password).

### Requirements

- The script must be run **with administrator privileges**.
- The Wi-Fi profile whose information is to be displayed must be locally stored on the computer.

---

## How It Works

1. **Display stored Wi-Fi profiles**:  
   - The script lists all Wi-Fi profiles saved on the system.

2. **Enter the network name (SSID)**:  
   - The user is prompted to enter the name of a network (SSID) from the list.

3. **Retrieve information**:  
   - The script displays the stored information of the specified network, including the password (if saved). The password appears under the field `Key Content`.

4. **Error handling**:  
   - If the network profile does not exist or no information is available, the script shows an appropriate error message.

---

## Usage

1. **Run the batch file**:  
   - Right-click the file and select "Run as administrator."

2. **Process**:  
   - After starting, all stored Wi-Fi profiles are displayed.  
   - Enter the desired network name (SSID).  
   - The script shows the corresponding information, including the password (if available).

3. **Example output**:
   - Available Wi-Fi profiles: Profile 1: MyWiFi Profile 2: GuestWiFi
   - Please enter the network name (SSID): MyWiFi
   - Information for the network "MyWiFi": Key Content = MyPassword123


---

## Notes

- **Password display**: The field `Key Content` contains the stored password, if available.  
- **Permissions**: The script requires administrator privileges to access stored network information.  
- **System language**: On non-German Windows systems, `Schlüsselinhalt` may appear as `Key Content`.

---

## Disclaimer

This script is intended for private use only. It should not be used for unauthorized access to networks. The author assumes no liability for misuse of the script.

---
