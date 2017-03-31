fun AuxPalindrome(str:string, n:int) : bool =
	if (size(str)-2*n<=1 andalso n>1) orelse size(str)<=1 then true
	else
		if String.sub(str, n)=String.sub(str, size(str)-n-1) then AuxPalindrome(str, n+1)
		else false;

fun IsPalindrome(str:string) : bool =
	AuxPalindrome(str, 0);

IsPalindrome("");
IsPalindrome("a");
IsPalindrome("bb");
IsPalindrome("cdc");
IsPalindrome("lrlrl");
IsPalindrome("lrrr");
IsPalindrome("ABCDDCBA");
IsPalindrome("go hang a salami!imalas a gnah og");
IsPalindrome("ABBA");
IsPalindrome("level");