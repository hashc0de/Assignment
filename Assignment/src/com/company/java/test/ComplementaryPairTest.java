package com.company.java.test;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.runners.MockitoJUnitRunner;

import com.company.java.ComplementaryPair;

@RunWith(MockitoJUnitRunner.class)
public class ComplementaryPairTest {

	@InjectMocks
	private ComplementaryPair pair;

	@Test
	public void testComplementaryPairScenario1() {
		int[] A = { 1, 8, -3, 0, 1, 3, -2, 4, 5 };
		assertEquals(7, pair.findComplementaryPair(A, 6));
	}

	@Test
	public void testComplementaryScenario2() {
		int[] B = { 2, 5, -1, 6, 10, -2 };
		assertEquals(5, pair.findComplementaryPair(B, 4));
	}

	@Test
	public void testComplementaryScenario3() {
		int[] C = { -8, 14, 7 };
		assertEquals(2, pair.findComplementaryPair(C, 6));
	}

}
