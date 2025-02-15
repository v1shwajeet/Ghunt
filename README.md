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

### 💁‍♂️ GHunt Setup Instructions 🕵️‍♂️

GHunt is a powerful tool for investigating Google accounts. Follow these steps to set it up.

---

## 📌 Table of Contents
- [📂 Clone the Repository](#-clone-the-repository)
- [🌍 Create a Virtual Environment](#-create-a-virtual-environment)
- [📦 Install Dependencies](#-install-dependencies)
- [🔑 Login to GHunt](#-login-to-ghunt)
- [🚀 Run GHunt](#-run-ghunt)
  - [🔍 Using Email Lookup](#-using-email-lookup)
  - [🔍 Using Gaia ID Lookup](#-using-gaia-id-lookup)
  - [🛠 Available Modules](#-available-modules)
- [📝 Notes](#-notes)

---

## 📂 Clone the Repository

Clone the repository and navigate into the directory.

```sh
git clone https://github.com/v1shwajeet/Ghunt.git
cd Ghunt
```

## 🌍 Create a Virtual Environment

Set up a virtual environment to isolate dependencies.

**On macOS/Linux:**
```sh
python3 -m venv venv
source venv/bin/activate
```

**On Windows:**
```sh
python3 -m venv venv
venv\Scripts\activate
```

## 📦 Install Dependencies

Install the required dependencies using pip.

```sh
pip3 install pillow
pip3 install -r requirements.txt
```

## 🔑 Login to GHunt

Authenticate with GHunt before running queries.

```sh
python3 main.py login
```

## 🚀 Run GHunt

Perform lookups using GHunt.

### 🔍 Using Email Lookup
Retrieve details of a Google account using an email address.

```sh
python3 main.py email target@example.com
```
Replace `target@example.com` with the actual email you are investigating.

### 🔍 Using Gaia ID Lookup
Retrieve details of a Google account using a Gaia ID.

```sh
python3 main.py gaia 1234567890
```
Replace `1234567890` with the actual Gaia ID.

## 🛠 Available Modules

After successful authentication, you can utilize various modules:

```sh
ghunt [-h] {login,email,gaia,drive,geolocate,spiderdal} ...
```

### **Module Descriptions:**
- `login` → Authenticate GHunt to Google.
- `email` → Retrieve information about an email address.
- `gaia` → Fetch details associated with a Gaia ID.
- `drive` → Obtain information on a Google Drive file or folder.
- `geolocate` → Determine the geographical location of a BSSID.
- `spiderdal` → Discover assets using Digital Assets Links.

### **Example Usage:**
To gather information about a specific email address:

```sh
ghunt email example@gmail.com
```

### **Exporting Data in JSON Format:**
For structured data output, use the `--json` flag:

```sh
ghunt email example@gmail.com --json output.json
```

## 📝 Notes

✅ Ensure you are running commands inside the virtual environment (`venv`).
✅ Replace `target@example.com` with the actual email you are investigating.
✅ Replace `1234567890` with the actual Gaia ID.

⚡ Happy Hunting! 🕵️‍♂️

## 🧑‍💻 Developers

For those interested in integrating GHunt into their projects:

- **[Documentation](https://github.com/mxrch/GHunt/wiki)**
- **[Examples](https://github.com/mxrch/GHunt/tree/master/examples)**

To use GHunt as a library, ensure it's installed in your environment:

```sh
pip3 install ghunt
```

You can then import and utilize GHunt in your Python scripts:

```python
import ghunt
```

## 📬 Details

### **Obvious Disclaimer**

This tool is intended for **educational purposes only**. The author is not responsible for any misuse.

### **Less Obvious Disclaimer**

GHunt is licensed under the **AGPL License**. Ensure you comply with its terms. Use this tool only for **personal projects, criminal investigations, penetration testing, or open-source contributions**.

### **Acknowledgments**

- Special thanks to **novitae** for collaboration.
- Appreciation to the **Malfrats Industries** community.

## ⭐ Sources

[GHunt GitHub Repository](https://github.com/mxrch/GHunt)

