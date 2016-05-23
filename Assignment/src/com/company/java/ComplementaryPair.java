package com.company.java;

import java.util.HashMap;
import java.util.Set;

public class ComplementaryPair {

	public int findComplementaryPair(int[] arr, int K) {
		int count = 0;
		HashMap<Integer, Integer> occurrencies = new HashMap<Integer, Integer>();

		for (int i : arr) {
			if (occurrencies.get(i) == null) {
				occurrencies.put(i, 1);
			} else {
				occurrencies.put(i, occurrencies.get(i) + 1);
			}
		}

		Set<Integer> keys = occurrencies.keySet();
		for (Integer key : keys) {
			int needed = K - key;
			if (occurrencies.containsKey(needed)) {
				count += occurrencies.get(key) * occurrencies.get(needed);
			}
		}
		return count;
	}
}
