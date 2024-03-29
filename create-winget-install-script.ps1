# Log the start of the script execution

# Get the list of installed packages via winget
$installedPackagesOutput = winget list

# Check if output is empty
if (-not $installedPackagesOutput) {
    Write-Host "No output from 'winget list'. Please ensure Winget is installed and working correctly."
    exit
} else {
    Write-Host "Successfully retrieved the list of installed packages."
}

# Parse the output into an array, skipping the first two lines (headers)
$installedPackages = $installedPackagesOutput -split "`r`n" | Select-Object -Skip 2

# Initialize an empty array to hold the install commands
$installScriptContent = @()

# Define a regex pattern for valid package IDs
$validPackageIdPattern = '^[A-Za-z0-9\.\-_]+$'

# Go through each installed package and extract the Id for "winget" or "msstore"
foreach ($package in $installedPackages) {
    if (-not [string]::IsNullOrWhiteSpace($package)) {
        # Use regex to split the line by multiple spaces, then take the necessary columns
        $packageDetails = $package -split '\s\s+'
        if ($packageDetails.Count -ge 4) {
            $origen = $packageDetails[3]
            if ($origen -eq 'winget' -or $origen -eq 'msstore') {
                $packageId = $packageDetails[1]
                # Validate the package ID
                if ($packageId -match $validPackageIdPattern) {
                    $installCommand = "winget install $packageId --accept-package-agreements --accept-source-agreements"
                    $installScriptContent += $installCommand
                } else {
                    Write-Host "Skipping invalid package: ID = $packageId, Origen = $origen"
                }
            }
        }
    }
}

# Define the path for the new install script
$installScriptPath = "wingetListOutput-installScript.ps1"

# Check if there are any install commands to write to the script
if ($installScriptContent) {
    $installScriptContent | Out-File -FilePath $installScriptPath -Encoding UTF8
    Write-Host "Winget install script has been created at: $installScriptPath"
} else {
    Write-Host "No install commands generated. There might be an issue with the list of installed packages for 'winget' or 'msstore'."
}
