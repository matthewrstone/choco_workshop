git clone https://github.com/matthewrstone/choco_workshop.git C:\workshop
New-Item -Type File -Path C:\workshop\inventory.yaml
Set-Location -Path C:\workshop
bolt puppetfile install