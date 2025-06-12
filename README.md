# Screensaver Preventer v2.1

## 🛡️ The Professional Screensaver Prevention Solution

A lightweight, reliable Windows batch script that prevents screensaver activation using invisible F15 keypress simulation. **Perfect for remote desktop sessions, virtual machines, and professional presentations.**

![Version](https://img.shields.io/badge/version-2.1-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows-lightgrey.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![PowerShell](https://img.shields.io/badge/PowerShell-Required-blue.svg)

---

## 🚀 Why This Solution?

### ❌ Traditional Mouse Jigglers Fail Because:
- **Hardware devices** don't work with remote desktop sessions
- **Software mouse movement** is ignored by modern Windows security
- **Unreliable** on virtual machines and multi-monitor setups
- **Resource intensive** and often **disruptive** to actual work

### ✅ F15 Invisible Keypress Method:
- **Works everywhere**: Local systems, remote desktop (RDP), virtual machines
- **Completely invisible**: F15 key does absolutely nothing except prevent screensaver
- **Lightweight**: Minimal system resources, maximum reliability
- **Professional grade**: Clean interface, configurable intervals, proper logging

---

## 🎯 Features

- **🔧 Simple Configuration**: 30-90 second intervals (default: 60s)
- **👻 Invisible Operation**: F15 phantom key - zero user interference
- **🖥️ Remote Desktop Ready**: Works flawlessly on RDP, VNC, TeamViewer
- **⚡ Lightweight**: Minimal CPU and memory usage
- **📊 Clean Logging**: Single-line status updates, no screen spam
- **🎮 Easy Control**: Ctrl+C to stop, instant restart capability
- **🔒 Safe**: No system modifications, no registry changes

---

## 📥 Quick Start

### 1. Download & Run
```bash
# Method 1: Download the .bat file
# Save as "ScreenSaverPreventer.bat"

# Method 2: Copy content and create file manually
# Right-click in folder → New → Text Document → Rename to .bat
```

### 2. Launch
```bash
# Right-click ScreenSaverPreventer.bat
# Select "Run as administrator" (recommended)
```

### 3. Configure
```
Enter your choice (1-2, default is 1): [PRESS ENTER]
Enter interval in seconds (30-90, default is 60): [PRESS ENTER]
```

**That's it!** Your screensaver is now prevented.

---

## 💻 Usage Examples

### For Remote Desktop Sessions
1. **Copy** the .bat file to your remote machine
2. **Run** directly on the remote system (not locally)
3. **Leave running** during your work session
4. **Ctrl+C** to stop when done

### For Long-Running Processes
```bash
# Set longer interval for background processes
Enter interval: 90

# Set shorter interval for active monitoring  
Enter interval: 30
```

### For Presentations
```bash
# Reliable 60-second interval (recommended)
Enter interval: 60
```

---

## 🛠️ Technical Details

### How It Works
```batch
# The core mechanism - invisible F15 keypress
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{F15}')"
```

The **F15 key** is a "phantom key" that:
- ✅ Exists in Windows keyboard mapping
- ✅ Recognized as genuine user activity
- ✅ **Does absolutely nothing** functionally
- ✅ Cannot be captured or interfered with by applications

### System Requirements
- **OS**: Windows 7/8/10/11 (any edition)
- **PowerShell**: 2.0 or higher (included in modern Windows)
- **Permissions**: Standard user (Administrator recommended)
- **Dependencies**: None (uses built-in Windows features)

---

## 📋 Use Cases

### ✅ Appropriate Use
- **Remote work presentations** via screen sharing
- **Development environments** during long builds/deployments
- **System monitoring** dashboards that need constant visibility
- **Personal computers** where you need extended screen time
- **Virtual machines** for testing or development
- **Server maintenance** through remote desktop sessions

### ⚠️ Consider Carefully
- **Corporate environments**: Ensure compliance with IT policies
- **Shared systems**: Respect other users and system administrators  
- **Time-tracking systems**: Be transparent about productivity tools
- **Security policies**: Some organizations may restrict automation tools

---

## ⚖️ Legal & Ethical Guidelines

### 📜 Responsible Use Policy

This tool is designed for **legitimate productivity enhancement**. Users must ensure compliance with:

**✅ Acceptable Use:**
- Personal computers and authorized work machines
- Development, testing, and legitimate work environments  
- Remote work scenarios with proper authorization
- Educational and research purposes

**❌ Prohibited Use:**
- Circumventing employer monitoring without authorization
- Bypassing security policies or access controls
- Unauthorized system access or policy violations
- Misrepresenting work activity or time tracking

### ⚠️ Important Disclaimers

> **🚨 USER RESPONSIBILITY**  
> This software is provided "AS IS" for educational and legitimate productivity purposes only. Users are **solely responsible** for ensuring their use complies with:
> - Company IT policies and terms of employment
> - Local laws and regulations
> - Software license agreements  
> - Workplace computer use guidelines
> 
> **The authors assume NO RESPONSIBILITY for misuse, policy violations, or consequences arising from use of this software.**

### 🤝 Ethical Considerations

Before using this tool, ask yourself:
- Do I have authorization to run automation tools on this system?
- Am I being transparent about my productivity methods?
- Does this align with my organization's values and policies?
- Am I using this to genuinely enhance productivity vs. circumvent oversight?

---

## 🔧 Troubleshooting

### Common Issues & Solutions

#### "PowerShell execution policy" Error
```powershell
# Run PowerShell as Administrator and execute:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

#### Script Not Working on Remote Desktop
- ✅ **Run on the remote machine**, not your local computer
- ✅ **Copy the actual .bat file** to the remote system
- ✅ **Execute with administrator privileges** on the remote machine
- ✅ **Verify PowerShell** is available on the remote system

#### Screensaver Still Activating
- 🔄 **Try shorter interval** (30 seconds) to test
- 👀 **Watch the timestamp updates** to confirm script is running  
- 🔐 **Check for additional security software** that may block the method
- 📞 **Contact IT support** for enterprise systems with strict policies

#### Performance Issues
- ⚡ **Script is very lightweight** - if you experience issues, check for:
  - Antivirus software blocking PowerShell commands
  - Group policy restrictions on SendKeys functionality
  - Remote desktop client limitations

---

## 📊 Comparison with Alternatives

| Solution | Local Systems | Remote Desktop | Resource Usage | User Interference | Setup Complexity |
|----------|---------------|----------------|----------------|-------------------|------------------|
| **F15 Keypress (This)** | ✅ Perfect | ✅ Perfect | 🟢 Minimal | 🟢 None | 🟢 Simple |
| Hardware Mouse Jiggler | ✅ Works | ❌ Fails | 🟢 None | 🟡 Can disrupt | 🟡 Positioning required |
| Software Mouse Movement | 🟡 Unreliable | ❌ Usually fails | 🟡 Medium | 🟡 Can disrupt | 🟡 Configuration needed |
| Caffeine/Similar Apps | 🟡 Hit or miss | ❌ Limited | 🟡 Medium | 🟢 Minimal | 🟡 Installation required |

---

## 🤝 Contributing

We welcome contributions! Please ensure any changes maintain the tool's:
- **Simplicity** and **reliability**
- **Ethical use** focus and **clear documentation**
- **Cross-environment compatibility** (local + remote desktop)

### Development Guidelines
1. **Test thoroughly** on both local and remote desktop environments
2. **Maintain backward compatibility** with older Windows versions
3. **Keep the interface simple** - this should be a "just works" tool
4. **Document any new features** with ethical use considerations

---

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

**Summary**: You can use, modify, and distribute this software freely, but you assume all responsibility for compliance with applicable policies and laws.

---

## 🙋‍♂️ Support

### Getting Help
- **🐛 Bug Reports**: Open an issue with system details and error messages
- **💡 Feature Requests**: Suggestions welcome, but we prioritize simplicity
- **❓ Usage Questions**: Check existing issues before posting new ones

### ⭐ If This Helped You
- **Star the repository** to show support
- **Share with colleagues** who face similar challenges
- **Contribute improvements** or documentation updates

---

## 📚 Related Reading

- **Medium Article**: [The Ultimate Screensaver Prevention Solution](MEDIUM_ARTICLE_LINK)
- **Microsoft Docs**: [SendKeys Method Documentation](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.sendkeys)
- **Remote Desktop Best Practices**: [Microsoft RDP Security Guidelines](https://docs.microsoft.com/en-us/windows-server/remote/remote-desktop-services/rds-plan-secure-data-storage)

---

**Made with ❤️ for productivity-focused professionals**

*Remember: Great power comes with great responsibility. Use ethically, transparently, and in compliance with your organization's policies.*
