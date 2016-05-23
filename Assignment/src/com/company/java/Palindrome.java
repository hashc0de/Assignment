package com.company.java;

public class Palindrome {

	public boolean isPalindrome(String s) {
		if (s == null || s.isEmpty()) {
			throw new IllegalArgumentException("string must be not null or empaty");
		}
		int n = s.length();
		s = s.toLowerCase();
		for (int i = 0; i < (n / 2) + 1; ++i) {
			if (s.charAt(i) != s.charAt(n - i - 1)) {
				return false;
			}
		}
		return true;
	}

}
