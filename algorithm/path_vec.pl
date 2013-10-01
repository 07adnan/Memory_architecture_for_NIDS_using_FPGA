
my $i ;
my $j ;
my $k ;
my @array = ();
my $path_vec;

open (F_read, "<$ARGV[0]") || die ("cannot open file \n");
open (F_write, ">$ARGV[1]") || die ("cannot open file \n");


while(<F_read>)
{ 
       	chomp;	
	push @array,[split "" ];	
}

close(F_read);

$k = 0b11111111111111111111111111111111;

printf(F_write "state : %08b path_vec : %032b ifFinal : 0  next_state : %08b if pattern : a  \n",0,$k,1); 
$j = 2;
for($i = 0 ; $i < 32 ; $i++)
	{
		printf(F_write "state : %08b path_vec : %032b ifFinal : 0  next_state : %08b if pattern : %s  \n",1,$k,$j,$array[$i][1]); 
		$j = $j + 7;
	}

$path_vec = 1;	
$k = 2;	
for($i = 0 ; $i < 32 ; $i++)
	{
	for($j = 2 ; $j < 8 ; $j++)
		{
		printf(F_write "state : %08b path_vec : %032b ifFinal : 0  next_state : %08b if pattern : %s  \n",$k,$path_vec,$k+1,$array[$i][$j]);
	        $k = $k + 1;
			if($j == 7)
				{
	        			$k = $k + 1;
				}	
		}
	   $path_vec = $path_vec << 1;	
	}

close(F_write);

