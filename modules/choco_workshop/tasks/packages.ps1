@(
    'chocolateygui',
    'vscode',
    'vscode-puppet'
    'puppet-bolt'
) | ForEach-Object { choco install $_ -y }