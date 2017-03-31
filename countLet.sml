fun countLetterAux(str:string, ch:char, n:int) : int =
	if n=size(str) then 0
	else
		if String.sub(str, n)=ch then 1+countLetterAux(str, ch, n+1)
		else countLetterAux(str, ch, n+1);

fun countLetter(str:string, ch:char) : int =
	countLetterAux(str, ch, 0);

countLetter("a", #"a");
countLetter("ab", #"a");
countLetter("abab", #"a");
countLetter("ababa", #"a");
countLetter("ababacc", #"c");
countLetter("abcd", #"d");
countLetter("abbgjfhrk03", #"t");
countLetter("58888rtrt8542yp8", #"8");

fun nonRepeatAux(str:string, n:int) : char = 
	if size(str)=1 then String.sub(str, 0)
	else
		if n=size(str)-1 then String.sub(str, n)
		else
			if countLetter(str, String.sub(str, n))=1 then String.sub(str, n)
			else
				nonRepeatAux(str, n+1);

fun nonRepeatedLetter(str:string) : char =
	nonRepeatAux(str, 0);

nonRepeatedLetter("abbb");
nonRepeatedLetter("a");
nonRepeatedLetter("abc");
nonRepeatedLetter("aaaab");
nonRepeatedLetter("hello world!");
nonRepeatedLetter("123123fg");