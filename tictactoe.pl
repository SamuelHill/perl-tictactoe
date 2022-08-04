#! /usr/bin/perl
# tictactoe.pl

$tictactoe = " 1 | 2 | 3 \n-----------\n 4 | 5 | 6 \n-----------\n 7 | 8 | 9 \n";
$spacesleft = "1|2|3|4|5|6|7|8|9";
my $ties = 0;
my $wins1 = 0;
my $wins2 = 0;

while (1)
{
	print $tictactoe;
	print "\nWhich space would you like to take player 1?\t";
	$player1 = <STDIN>;
	chomp ($player1);
	print "\n\n";
	
	if ($player1 !~ /($spacesleft)/)
	{
		print "Not a valid space. You lose a turn.\n\n";
	}
	else
	{
		$tictactoe =~ s/($player1)/X/g;
		$spacesleft =~ s/($player1)/X/g;
	}
	
	if ($tictactoe =~ /(X...X...X)|(X.{9}\n.{11}\n.X.{9}\n.{11}\n.X)/ ||
		$tictactoe =~ /(X.{5}\n.{11}\n.{5}X.{5}\n.{11}\n.{5}X)/ ||
		$tictactoe =~ /(X.\n.{11}\n.{9}X.\n.{11}\n.{9}X)/ ||
		$tictactoe =~ /(X.{9}\n.{11}\n.{5}X.{5}\n.{11}\n.{9}X)/ ||
		$tictactoe =~ /(X.\n.{11}\n.{5}X.{5}\n.{11}\n.X)/)
	{
		print "Player 1 won!\n";
		$wins1++;
		print "\nWould you like to continue?    ";
		$continue = <STDIN>;
		if ($continue =~ "Yes")
		{
			print "\n\n";
			$tictactoe = " 1 | 2 | 3 \n-----------\n 4 | 5 | 6 \n-----------\n 7 | 8 | 9 \n";
			$spacesleft = "1|2|3|4|5|6|7|8|9";
			next;
		}
		elsif ($continue !~ "Yes")
		{
			last;
		}
	}
	elsif ($tictactoe =~ /(.[XO]...[XO]...[XO].\n.{11}\n.[XO]...[XO]...[XO].\n.{11}\n.[XO]...[XO]...[XO].)/)
	{
		print "This game was a tie.../n";
		$ties++;
		print "\nWould you like to continue?    ";
		$continue = <STDIN>;
		if ($continue =~ "Yes")
		{
			print "\n\n";
			$tictactoe = " 1 | 2 | 3 \n-----------\n 4 | 5 | 6 \n-----------\n 7 | 8 | 9 \n";
			$spacesleft = "1|2|3|4|5|6|7|8|9";
			next;
		}
		elsif ($continue !~ "Yes")
		{
			last;
		}
	}
	
	print $tictactoe;
	print "\nWhich space would you like to take player 2?\t";
	$player2 = <STDIN>;
	chomp ($player2);
	print "\n\n";
	
	if ($player2 !~ /($spacesleft)/)
	{
		print "Not a valid space. You lose a turn.\n\n";
	}
	else
	{
		$tictactoe =~ s/($player2)/O/g;
		$spacesleft =~ s/($player2)/O/g;
	}
	
	if ($tictactoe =~ /(O...O...O)|(O.{9}\n.{11}\n.O.{9}\n.{11}\n.O)/ ||
		$tictactoe =~ /(O.{5}\n.{11}\n.{5}O.{5}\n.{11}\n.{5}O)/ ||
		$tictactoe =~ /(O.\n.{11}\n.{9}O.\n.{11}\n.{9}O)/ ||
		$tictactoe =~ /(O.{9}\n.{11}\n.{5}O.{5}\n.{11}\n.{9}O)/ ||
		$tictactoe =~ /(O.\n.{11}\n.{5}O.{5}\n.{11}\n.O)/)
	{
		print "Player 2 won!\n";
		$wins2++;
		print "\nWould you like to continue?    ";
		$continue = <STDIN>;
		if ($continue =~ "Yes")
		{
			print "\n\n";
			$tictactoe = " 1 | 2 | 3 \n-----------\n 4 | 5 | 6 \n-----------\n 7 | 8 | 9 \n";
			$spacesleft = "1|2|3|4|5|6|7|8|9";
			next;
		}
		elsif ($continue !~ "Yes")
		{
			last;
		}
	}
	elsif ($tictactoe =~ /(.[XO]...[XO]...[XO].\n.{11}\n.[XO]...[XO]...[XO].\n.{11}\n.[XO]...[XO]...[XO].)/)
	{
		print "This game was a tie.../n";
		$ties++;
		print "\nWould you like to continue?    ";
		$continue = <STDIN>;
		if ($continue =~ "Yes")
		{
			print "\n\n";
			$tictactoe = " 1 | 2 | 3 \n-----------\n 4 | 5 | 6 \n-----------\n 7 | 8 | 9 \n";
			$spacesleft = "1|2|3|4|5|6|7|8|9";
			next;
		}
		elsif ($continue !~ "Yes")
		{
			last;
		}
	}
}

print "Player 1 |  Ties  | Player 2\n";
print "    " . $wins1 . "    |" if ($wins1 < 9);
print "   " . $wins1 . "    |" if ($wins1 > 9);
print "   " . $ties . "    |" if ($ties < 9);
print "   " . $ties . "   |" if ($ties > 9);
print "    " . $wins2;