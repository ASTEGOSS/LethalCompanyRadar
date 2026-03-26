Add-Type -AssemblyName System.Speech, System.Windows.Forms
$synth = New-Object System.Speech.Synthesis.SpeechSynthesizer
$synth.Rate = 1 

Write-Host "--- ASTEGOS RADAR ---" -ForegroundColor Red
Write-Host "(OPEN THUNDERSTORE OPEN THE PROFILE YOU PLAY ON WITH BEPINEXPACK INSTALLED GO TO SETTINGS BROWSE DATA FOLDER 	(LETHALCOMPANY/PROFILES/...PROFILE YOU USE.../BEPINEX/LOGOUTPUT.LOG)DRAG LOGOUTPUT.LOG TO THE SCRIPT AND PRESS ENTER)" -ForegroundColor Yellow

$logPath = (Read-Host "PATH").Replace('"','')

if (-not (Test-Path $logPath)) {
    Write-Host "ERROR: File not found!" -ForegroundColor Red
    Read-Host "Press Enter to exit"; exit
}

$translator = @{
    "MouthDog" = "Dog"; "SandWorm" = "Worm"; "PufferEnemy" = "Lizard"
    "menstalker_prefab" = "Girl"; "RedLocustBees" = "Bees"; "SandSpider" = "Spider"
    "Flowerman" = "Bracken"; "SpringMan" = "Coil Head"; "Crawler" = "Thumper"
    "Centipede" = "Snare Flea"; "NutcrackerEnemy" = "Nutcracker"; "JesterEnemy" = "Jester"
}

Clear-Host
Write-Host "--- RADAR IS HUNTING ---" -ForegroundColor Green
Write-Host "Scanning every 35 seconds." -ForegroundColor Gray

while ($true) {
   
    $currentContent = Get-Content $logPath
    $foundEnemies = @()

    foreach ($line in $currentContent) {
        if ($line -match "IsEnemyEnabled\s+(.*?)\(Clone\)\s+True") {
            $raw = $matches[1].Trim()
            $name = if ($translator.ContainsKey($raw)) { $translator[$raw] } else { $raw }
            if ($foundEnemies -notcontains $name) {
                $foundEnemies += $name
            }
        }
    }

    # Moved output and speech OUTSIDE the per-line loop
    if ($foundEnemies.Count -gt 0) {
        Write-Host "[$(Get-Date -Format HH:mm:ss)] Scan found: $($foundEnemies -join ', ')" -ForegroundColor Red
        foreach ($enemy in $foundEnemies) {
            $synth.Speak($enemy) 
            Start-Sleep -Seconds 0.5 
        }
    } else {
        Write-Host "[$(Get-Date -Format HH:mm:ss)] Scan: DIDNT FIND ANY MONSTERS AROUND" -ForegroundColor Gray
    }

    Start-Sleep -Seconds 35
}