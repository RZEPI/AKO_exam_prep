#include <stdio.h>
#include <windows.h>

wchar_t* ASCII_na_UTF16(char* znaki, int n);

int main()
{
	char* znaki = "convert to utf16";
	int n = 16;
	wchar_t* utf16 = ASCII_na_UTF16(znaki, n);
	MessageBoxW(0, utf16, "Title", 0);
	return 0;
}