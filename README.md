# Machine Outfitting

The one stop for setting up my Windows 11 machine cuz Ninite is overrated and everyone loves a one click install amirite.

You need [winget](https://github.com/microsoft/winget-cli/) for the installation scripts to be recognized by your PowerShell terminal.

## How to run

Check out with the PowerShell command `Get-ExecutionPolicy` if you can execute PowerShell scripts.  

>💡Always use caution when running your command prompt as an administrator, and only install applications you trust.  

>💡You may launch the script with elevated permissions if you don't want to check elevation prompts.  

>💡If you don't, make sure you check your taskbar, as the prompt will remain in it waiting for your attention.

You can either execute this script by:  

1. Opening a PowerShell terminal, navigating to the script folder with `cd \route\to\script\`, executing `Set-ExecutionPolicy -ExecutionPolicy Bypass -File winget-install-script.ps1` to allow the execution of the install script once and then by executing `.\winget-script.ps1`
2. By right clicking the file and selecting `Execute with Powershell` if you have lighter restrictions on script execution (as administrator in a PowerShell terminal, execute `Set-ExecutionPolicy Unrestricted`).  

## Leveraging the `winget list` output

You can take note of what apps you have installed that are available to be installed with winget using `winget list`.  

[This tool](create-winget-install-script.ps1) is a PowerShell script that creates another script by parsing your `winget list` output and creating a new script file with all the packages available to be installed with `winget` and executable as it is.  

It might have some incorrect lines so do be careful and check the generated script before executing it.

## Notes

If you want to make scripts like this, you can try [winstall](https://winstall.app/), [winget.run](https://winget.run) or use `winget search` in your PowerShell terminal of choice to look for the packages you want and write your own script.  

Not everything is available in `winget` though, you may ask the developer of the app you want to publish it in the [Windows Package Manager Community Repository](https://docs.microsoft.com/es-es/windows/package-manager/package/repository).
