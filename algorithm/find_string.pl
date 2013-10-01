use Tie::File

tie @array,'Tie::File',$ARGV[0] ;

$count = 0;

open (F_write, ">$ARGV[1]") || die ("cannot open file \n");

for(@array)
{  
	if($_ =~ /^a/)
	{
	  if($count < 32)
	  {
		printf F_write "$_\n";
       		$count = $count + 1;
          }
	}
	
}
untie @array;
close(F_write);

