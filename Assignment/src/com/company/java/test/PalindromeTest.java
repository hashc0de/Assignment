package com.company.java.test;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.runners.MockitoJUnitRunner;

import com.company.java.Palindrome;

@RunWith(MockitoJUnitRunner.class)
public class PalindromeTest {

	@InjectMocks
	private Palindrome palindrome;

	@Test
	public void testPalindrome() {
		assertTrue(palindrome.isPalindrome("1221"));
		assertFalse(palindrome.isPalindrome("1121"));
	}

	@Test(expected = IllegalArgumentException.class)
	public void testException() {
		palindrome.isPalindrome(null);
	}

	@Test(expected = IllegalArgumentException.class)
	public void testEmpaty() {
		palindrome.isPalindrome(null);
	}
}
