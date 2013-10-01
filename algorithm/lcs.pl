
my $i ;
my $j ;
my $k ;
my @array = ();

open (F_read, "<$ARGV[0]") || die ("cannot open file \n");


while(<F_read>)
{ 
       	chomp;	
	push @array,[split "" ];	
}

close(F_read);

for($i = 0; $i < 32; $i++)
{
	for($j = $i + 1 ; $j < 32  ; $j++)
		{
			if($array[$i][0] eq $array[$j][0] and $array[$i][1] eq $array[$j][1] and $array[$i][2] eq $array[$j][2] and $array[$i][3] eq $array[$j][3] and $array[$i][4] eq $array[$j][4] and $array[$i][5] eq $array[$j][5] and $array[$i][6] eq $array[$j][6] and $array[$i][7] eq $array[$j][7]  )
			{
				print "Pattern Mached : @{$array[$i]}\n";
			}
		}
}

for($i = 0; $i < 32; $i++)
{
	for($j = $i + 1 ; $j < 32  ; $j++)
		{
			if($array[$i][0] eq $array[$j][0] and $array[$i][1] eq $array[$j][1] and $array[$i][2] eq $array[$j][2] and $array[$i][3] eq $array[$j][3] and $array[$i][4] eq $array[$j][4] and $array[$i][5] eq $array[$j][5] and $array[$i][6] eq $array[$j][6] and $array[$i][7] ne $array[$j][7] )
			{
				print "Pattern Mached :$array[$i][0]$array[$i][1]$array[$i][2]$array[$i][3]$array[$i][4]$array[$i][5]$array[$i][6]\n";
			}
		}
}
for($i = 0; $i < 32; $i++)
{
	for($j = $i + 1 ; $j < 32  ; $j++)
		{
			if($array[$i][0] eq $array[$j][0] and $array[$i][1] eq $array[$j][1] and $array[$i][2] eq $array[$j][2] and $array[$i][3] eq $array[$j][3] and $array[$i][4] eq $array[$j][4] and $array[$i][5] eq $array[$j][5] and $array[$i][6] ne $array[$j][6] )
			{
				print "Pattern Mached :$array[$i][0]$array[$i][1]$array[$i][2]$array[$i][3]$array[$i][4]$array[$i][5]\n";
			}
		}
}

for($i = 0; $i < 32; $i++)
{
	for($j = $i + 1 ; $j < 32  ; $j++)
		{
			if(  $array[$i][2] eq $array[$j][2] and $array[$i][3] eq $array[$j][3] and $array[$i][4] eq $array[$j][4] and $array[$i][5] eq $array[$j][5] and $array[$i][6] eq $array[$j][6] and $array[$i][7] eq $array[$j][7] )
			{
				print "Pattern Mached :$array[$i][2]$array[$i][3]$array[$i][4]$array[$i][5]$array[$i][6]$array[$i][7]\n";
			}
		}
}
for($i = 0; $i < 32; $i++)
{
	for($j = $i + 1 ; $j < 32  ; $j++)
		{
			if($array[$i][0] eq $array[$j][0] and $array[$i][1] eq $array[$j][1] and $array[$i][2] eq $array[$j][2] and $array[$i][3] eq $array[$j][3] and $array[$i][4] eq $array[$j][4] and $array[$i][5] ne $array[$j][5])
			{
				print "Pattern Mached :$array[$i][0]$array[$i][1]$array[$i][2]$array[$i][3]$array[$i][4]\n";
			}
		}
}

