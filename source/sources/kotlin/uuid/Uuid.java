package kotlin.uuid;

import java.io.Serializable;
import kotlin.text.Charsets;
import kotlin.text.HexExtensionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Uuid implements Comparable<Uuid>, Serializable {
    public static final Uuid l = new Uuid(0, 0);
    public final long j;
    public final long k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static Uuid a(String str) {
            String concat;
            str.getClass();
            int length = str.length();
            Uuid uuid = Uuid.l;
            int i = 0;
            if (length != 32) {
                if (length != 36) {
                    StringBuilder sb = new StringBuilder("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"");
                    if (str.length() <= 64) {
                        concat = str;
                    } else {
                        concat = str.substring(0, 64).concat("...");
                    }
                    sb.append(concat);
                    sb.append("\" of length ");
                    sb.append(str.length());
                    throw new IllegalArgumentException(sb.toString());
                }
                long j = 0;
                while (i < 8) {
                    long j2 = j << 4;
                    char charAt = str.charAt(i);
                    if ((charAt >>> '\b') == 0) {
                        long j3 = HexExtensionsKt.b[charAt];
                        if (j3 >= 0) {
                            j = j2 | j3;
                            i++;
                        }
                    }
                    UuidKt__UuidKt.b(str, i, "a hexadecimal digit");
                    throw null;
                }
                if (str.charAt(8) == '-') {
                    long j4 = 0;
                    for (int i2 = 9; i2 < 13; i2++) {
                        long j5 = j4 << 4;
                        char charAt2 = str.charAt(i2);
                        if ((charAt2 >>> '\b') == 0) {
                            long j6 = HexExtensionsKt.b[charAt2];
                            if (j6 >= 0) {
                                j4 = j5 | j6;
                            }
                        }
                        UuidKt__UuidKt.b(str, i2, "a hexadecimal digit");
                        throw null;
                    }
                    if (str.charAt(13) == '-') {
                        long j7 = 0;
                        for (int i3 = 14; i3 < 18; i3++) {
                            long j8 = j7 << 4;
                            char charAt3 = str.charAt(i3);
                            if ((charAt3 >>> '\b') == 0) {
                                long j9 = HexExtensionsKt.b[charAt3];
                                if (j9 >= 0) {
                                    j7 = j8 | j9;
                                }
                            }
                            UuidKt__UuidKt.b(str, i3, "a hexadecimal digit");
                            throw null;
                        }
                        if (str.charAt(18) == '-') {
                            long j10 = 0;
                            for (int i4 = 19; i4 < 23; i4++) {
                                long j11 = j10 << 4;
                                char charAt4 = str.charAt(i4);
                                if ((charAt4 >>> '\b') == 0) {
                                    long j12 = HexExtensionsKt.b[charAt4];
                                    if (j12 >= 0) {
                                        j10 = j11 | j12;
                                    }
                                }
                                UuidKt__UuidKt.b(str, i4, "a hexadecimal digit");
                                throw null;
                            }
                            if (str.charAt(23) == '-') {
                                long j13 = 0;
                                for (int i5 = 24; i5 < 36; i5++) {
                                    long j14 = j13 << 4;
                                    char charAt5 = str.charAt(i5);
                                    if ((charAt5 >>> '\b') == 0) {
                                        long j15 = HexExtensionsKt.b[charAt5];
                                        if (j15 >= 0) {
                                            j13 = j14 | j15;
                                        }
                                    }
                                    UuidKt__UuidKt.b(str, i5, "a hexadecimal digit");
                                    throw null;
                                }
                                long j16 = (j << 32) | (j4 << 16) | j7;
                                long j17 = (j10 << 48) | j13;
                                if (j16 == 0 && j17 == 0) {
                                    return uuid;
                                }
                                return new Uuid(j16, j17);
                            }
                            UuidKt__UuidKt.b(str, 23, "'-' (hyphen)");
                            throw null;
                        }
                        UuidKt__UuidKt.b(str, 18, "'-' (hyphen)");
                        throw null;
                    }
                    UuidKt__UuidKt.b(str, 13, "'-' (hyphen)");
                    throw null;
                }
                UuidKt__UuidKt.b(str, 8, "'-' (hyphen)");
                throw null;
            }
            long j18 = 0;
            while (i < 16) {
                long j19 = j18 << 4;
                char charAt6 = str.charAt(i);
                if ((charAt6 >>> '\b') == 0) {
                    long j20 = HexExtensionsKt.b[charAt6];
                    if (j20 >= 0) {
                        j18 = j19 | j20;
                        i++;
                    }
                }
                UuidKt__UuidKt.b(str, i, "a hexadecimal digit");
                throw null;
            }
            long j21 = 0;
            for (int i6 = 16; i6 < 32; i6++) {
                long j22 = j21 << 4;
                char charAt7 = str.charAt(i6);
                if ((charAt7 >>> '\b') == 0) {
                    long j23 = HexExtensionsKt.b[charAt7];
                    if (j23 >= 0) {
                        j21 = j22 | j23;
                    }
                }
                UuidKt__UuidKt.b(str, i6, "a hexadecimal digit");
                throw null;
            }
            if (j18 == 0 && j21 == 0) {
                return uuid;
            }
            return new Uuid(j18, j21);
        }
    }

    public Uuid(long j, long j2) {
        this.j = j;
        this.k = j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Uuid uuid) {
        Uuid uuid2 = uuid;
        uuid2.getClass();
        long j = uuid2.j;
        long j2 = this.j;
        if (j2 != j) {
            return Long.compareUnsigned(j2, j);
        }
        return Long.compareUnsigned(this.k, uuid2.k);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) obj;
        if (this.j == uuid.j && this.k == uuid.k) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.j ^ this.k);
    }

    public final String toString() {
        byte[] bArr = new byte[36];
        UuidKt__UuidJVMKt.a(this.j, bArr, 0, 0, 4);
        bArr[8] = 45;
        UuidKt__UuidJVMKt.a(this.j, bArr, 9, 4, 6);
        bArr[13] = 45;
        UuidKt__UuidJVMKt.a(this.j, bArr, 14, 6, 8);
        bArr[18] = 45;
        UuidKt__UuidJVMKt.a(this.k, bArr, 19, 0, 2);
        bArr[23] = 45;
        UuidKt__UuidJVMKt.a(this.k, bArr, 24, 2, 8);
        return new String(bArr, Charsets.a);
    }
}
