param($network, $server)
for ($num = 1 ; $num -le 254 ; $num++){
    if ($name = Resolve-DnsName -DnsOnly "$network.$num" -Server $server -ErrorAction Ignore | Select-Object -Property NameHost)
    {
        $newname = $name -replace "@{NameHost=" -replace "}"
        Write-Host "$network.$num $newname"
    }
}