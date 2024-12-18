#############################
### Libraries and Drivers ###
#############################
winget install --id=Microsoft.DotNet.DesktopRuntime.3_1 -e  ;
winget install --id=Microsoft.DotNet.DesktopRuntime.5 -e  ;
winget install --id=Microsoft.DotNet.DesktopRuntime.6 -e  ;
winget install --id=Microsoft.VCRedist.2005.x64 -e  ;
winget install --id=Microsoft.VCRedist.2008.x64 -e  ;
winget install --id=Microsoft.VCRedist.2010.x86 -e  ;
winget install --id=Microsoft.VCRedist.2012.x64 -e  ;
winget install --id=Microsoft.VCRedist.2012.x86 -e  ;
winget install --id=Microsoft.VCRedist.2013.x86 -e  ;
winget install --id=Microsoft.VCRedist.2013.x64 -e  ;
winget install --id=Microsoft.VCRedist.2015+.x64 -e  ;
winget install --id=Microsoft.VCRedist.2015+.x86 -e  ;
winget install --id=Microsoft.VCLibs.Desktop.14 -e  ;
winget install --id=Microsoft.EdgeWebView2Runtime -e  ;
###########################
### Games and Launchers ###
###########################;
winget install --id=Valve.Steam -e  ;
winget install --id=EpicGames.EpicGamesLauncher -e  ;
winget install --id=GOG.Galaxy -e  ;
winget install --id=goatcorp.XIVLauncher -e  ;
winget install --id=WeakAuras.WeakAurasCompanion -e ;
winget install --id=WowUp.Wowup -e ;
winget install --id=NexusMods.Vortex -e ;
################
### Dev Apps ###
################
winget install --id=Microsoft.VisualStudioCode -e  ;
winget install --id=JanDeDobbeleer.OhMyPosh -s winget -e  ;
winget install --id=Microsoft.Git -e  ;
#################
### CLI Tools ###
#################
winget install --id=BurntSushi.ripgrep.MSVC -e  ;
winget install --id=sharkdp.bat -e  ;
winget install --id=ajeetdsouza.zoxide -e ;
winget install --id=eza-community.eza -e ;
winget install --id=gsass1.NTop -e ;
winget install --id=Fastfetch-cli.Fastfetch -e ;
################
### Sys Apps ###
################
winget install --id=Microsoft.PowerShell -e  ;
winget install --id=9P9TQF7MRM4R -e --accept-package-agreements ## msstore Windows Subsystem for Linux
winget install --id=9P3395VX91NR -e --accept-package-agreements ## msstore Windows Subsystem for Android
##################
### Media Apps ###
##################
winget install --id=9PFHDD62MXS1 -e --accept-package-agreements ; ## msstore Apple Music
winget install --id=9NP83LWLPZ9K -e --accept-package-agreements ; ## msstore Apple Devices
winget install --id=VideoLAN.VLC -e  ; ## Maybe a slow download
winget install --id=ChatterinoTeam.Chatterino -e  ;
################
### SNS Apps ###
################
winget install --id=9NKSQGP7F2NH -e --accept-package-agreements ; ## msstore UWP WhatsApp
winget install --id=XPDC2RH70K22MN -e --accept-package-agreements ; ## msstore Discord
winget install --id=Telegram.TelegramDesktop -e  ;
###################
### Backup Apps ###
###################
winget install --id=Mega.MEGASync -e  ; # Sometimes returns bad hash
winget install --id=HaystackSoftwareLLC.Arq7 -e ;
#################
### Tool Apps ###
#################
winget install --id=Gyan.FFmpeg -e  ;
winget install --id=M2Team.NanaZip -e  ;
winget install --id=bozbez.WinCaptureAudio.beta -e  ;
winget install --id=REALiX.HWiNFO -e  ;
winget install --id=Nota.Gyazo -e  ;
winget install --id=SumatraPDF.SumatraPDF -e  ;
winget install --id=WinDirStat.WinDirStat -e  ;
winget install --id=AppWork.JDownloader -e  ;
winget install --id=OBSProject.OBSStudio -e  ;
winget install --id=CrystalDewWorld.CrystalDiskInfo -e  ;
winget install --id=Mp3tag.Mp3tag -e  ;
winget install --id=Bin-Huang.Chatbox -e  ;
winget install --id=KDE.Krita -e  ;
########################
### Windows QoL Apps ###
########################
winget install --id=ModernFlyouts.ModernFlyouts -e  ;
winget install --id=Microsoft.PowerToys -e  ;
winget install --id=xanderfrangos.twinkletray -e  ;
##############################
### Devices Companion Apps ###
##############################
winget install --id=9PFHDD62MXS1 -e --accept-package-agreements ; ## msstore Apple Devices
winget install --id=SteelSeries.GG -e  ;
winget install --id=Logitech.OptionsPlus -e  ;
winget install --id=Logitech.GHUB -e  ;
#####################
### Internet Apps ###
#####################
winget install --id=qBittorrent.qBittorrent -e  ;
winget install --id=Mozilla.Firefox -e  ;
winget install --id=Zen-Team.Zen-Browser -e  ;
winget install --id=AgileBits.1Password -e  ;
###############################
### VPN and Networking Apps ###
###############################
winget install --id=NordVPN.NordVPN -e  ;
winget install --id=ProtonTechnologies.ProtonVPN -e  ;
winget install --id=Fortinet.FortiClientVPN -e  ;
############################
### Extra Setup Commands ###
############################
Install-Module posh-git
# Get-PoshThemes for more PS themes