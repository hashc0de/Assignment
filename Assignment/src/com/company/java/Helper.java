package com.company.java;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class Helper {

	public static String getMd5Hash(final String str) {
		if (str == null) {
			throw new IllegalArgumentException("str == null");
		}

		String hash = null;

		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());

			byte[] digest = md.digest();
			StringBuffer sb = new StringBuffer();

			for (byte b : digest) {
				sb.append(String.format("%02x", b & 0xff));
			}

			hash = sb.toString();
		} catch (NoSuchAlgorithmException e) {
			throw new IllegalStateException("Error", e);
		}

		return hash;
	}

}
