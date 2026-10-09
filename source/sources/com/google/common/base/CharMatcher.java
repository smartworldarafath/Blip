package com.google.common.base;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CharMatcher implements Predicate<Character> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class FastMatcher extends CharMatcher {
        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return b(((Character) obj).charValue());
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Is extends FastMatcher {
        public final char j;

        public Is(char c) {
            this.j = c;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean b(char c) {
            if (c == this.j) {
                return true;
            }
            return false;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.is('");
            char[] cArr = new char[6];
            cArr[0] = '\\';
            cArr[1] = 'u';
            cArr[2] = 0;
            cArr[3] = 0;
            cArr[4] = 0;
            cArr[5] = 0;
            char c = this.j;
            for (int i = 0; i < 4; i++) {
                cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
                c = (char) (c >> 4);
            }
            sb.append(String.copyValueOf(cArr));
            sb.append("')");
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class NamedFastMatcher extends FastMatcher {
        public final String j;

        public NamedFastMatcher(String str) {
            this.j = str;
        }

        public final String toString() {
            return this.j;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class None extends NamedFastMatcher {
        public static final CharMatcher k = new NamedFastMatcher("CharMatcher.none()");

        @Override // com.google.common.base.CharMatcher
        public final int a(CharSequence charSequence, int i) {
            Preconditions.k(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.CharMatcher
        public final boolean b(char c) {
            return false;
        }
    }

    public int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        Preconditions.k(i, length);
        while (i < length) {
            if (b(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean b(char c);
}
