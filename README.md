# GHunt

## 🐍 Python Compatibility

GHunt is now compatible with **Python 3.13** and above.

## 😊 Description

GHunt is an offensive Google framework designed for efficient evolution. While primarily focused on OSINT (Open Source Intelligence), it offers versatile functionalities related to Google services.

### Features:
- Command-Line Interface (CLI) usage with multiple modules
- Python library integration
- Fully asynchronous operations
- JSON data export
- Browser extension to facilitate login

## ✔️ Requirements

- Python version **3.10 or higher**

## ⚙️ Installation

### **Using pipx (Recommended)**

```bash
pip3 install pipx
pipx ensurepath
pipx install ghunt
```

This approach utilizes virtual environments to prevent dependency conflicts with other projects.

### **Alternative Installation Using pip**

If you prefer to use pip directly or plan to integrate GHunt as a library in your projects:

```bash
pip3 install ghunt
```

This method installs GHunt system-wide or within your active virtual environment.

## 💃 Usage

### **1. Authentication**

Before using GHunt's modules, authenticate your session:

#### **Start the Login Listener:**

```bash
ghunt login
```

You'll be presented with the following options:

```
[1] (Companion) Put GHunt on listening mode
[2] (Companion) Paste base64-encoded cookies
[3] Enter manually all cookies

Choice =>
```

#### **Use GHunt Companion Extension:**
- **[Firefox Users](https://addons.mozilla.org/en-US/firefox/addon/ghunt-companion/)**
- **[Chrome Users](https://chrome.google.com/webstore/detail/ghunt-companion/dpdcofblfbmmnikcbmmiakkclocadjab)**

After installing the extension, follow the prompts to complete the authentication process.

#### **Common Authentication Issues:**

**Error: `No stored session found.`**

**Solution:** Ensure you've completed the login process using the GHunt Companion extension. If the issue persists, rerun `ghunt login` and follow the authentication steps carefully.

### **2. Modules**

After successful authentication, you can utilize various modules:

```bash
ghunt [-h] {login,email,gaia,drive,geolocate,spiderdal} ...
```

#### **Available Modules:**
- `login` → Authenticate GHunt to Google.
- `email` → Retrieve information about an email address.
- `gaia` → Fetch details associated with a Gaia ID.
- `drive` → Obtain information on a Google Drive file or folder.
- `geolocate` → Determine the geographical location of a BSSID.
- `spiderdal` → Discover assets using Digital Assets Links.

#### **Example Usage:**

To gather information about a specific email address:

```bash
ghunt email example@gmail.com
```

#### **Exporting Data in JSON Format:**

For structured data output, use the `--json` flag:

```bash
ghunt email example@gmail.com --json output.json
```

#### **Common Module Issues:**

**Error: `ModuleNotFoundError: No module named 'packaging'`**

**Solution:** Install missing dependencies by running:

```bash
pip3 install -U ghunt
```

**Error: `ModuleNotFoundError: No module named 'rich_argparse'`**

**Solution:** Update GHunt and its dependencies:

```bash
pip3 install -U ghunt
```

## 🧑‍💻 Developers

For those interested in integrating GHunt into their projects:

- **[Documentation](https://github.com/mxrch/GHunt/wiki)**
- **[Examples](https://github.com/mxrch/GHunt/tree/master/examples)**

To use GHunt as a library, ensure it's installed in your environment:

```bash
pip3 install ghunt
```

You can then import and utilize GHunt in your Python scripts:

```python
import ghunt
```

## 📮 Details

### **Obvious Disclaimer**

This tool is intended for **educational purposes only**. The author is not responsible for any misuse.

### **Less Obvious Disclaimer**

GHunt is licensed under the **AGPL License**. Ensure you comply with its terms. Use this tool only for **personal projects, criminal investigations, penetration testing, or open-source contributions**.

### **Acknowledgments**

- Special thanks to **novitae** for collaboration.
- Appreciation to the **Malfrats Industries** community.

## ⭐ Sources

[GHunt GitHub Repository](https://github.com/mxrch/GHunt)
