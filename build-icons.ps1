Add-Type -AssemblyName System.Drawing
foreach ($size in @(180,192,512)) {
    $bitmap = New-Object System.Drawing.Bitmap $size,$size
    $g = [System.Drawing.Graphics]::FromImage($bitmap)
    $g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $g.Clear([System.Drawing.Color]::White)
    $m = [single]($size * 0.2)
    $w = [single]($size * 0.6)
    $pen = New-Object System.Drawing.Pen ([System.Drawing.Color]::FromArgb(184,48,48)),([single]($size/110))
    $g.DrawRectangle($pen,$m,$m,$w,$w)
    $g.DrawLine($pen,$m,($size/2),($m+$w),($size/2))
    $g.DrawLine($pen,($size/2),$m,($size/2),($m+$w))
    $font = New-Object System.Drawing.Font 'Microsoft YaHei',([single]($size*.43)),([System.Drawing.FontStyle]::Bold),([System.Drawing.GraphicsUnit]::Pixel)
    $format = New-Object System.Drawing.StringFormat
    $format.Alignment = [System.Drawing.StringAlignment]::Center
    $format.LineAlignment = [System.Drawing.StringAlignment]::Center
    $rect = New-Object System.Drawing.RectangleF 0,0,$size,$size
    $g.DrawString([string][char]0x8BCD,$font,[System.Drawing.Brushes]::Black,$rect,$format)
    $bitmap.Save((Join-Path $PSScriptRoot ('dist/icon-{0}.png' -f $size)),[System.Drawing.Imaging.ImageFormat]::Png)
    $format.Dispose(); $font.Dispose(); $pen.Dispose(); $g.Dispose(); $bitmap.Dispose()
}
