package okio;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.io.Serializable;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okio.internal.ByteStringNonJs;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    public static final ByteString m = new ByteString(new byte[0]);
    public final byte[] j;
    public transient int k;
    public transient String l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static ByteString a(String str) {
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) (ByteStringNonJs.a(str.charAt(i2 + 1)) + (ByteStringNonJs.a(str.charAt(i2)) << 4));
                }
                return new ByteString(bArr);
            }
            fe.l("Unexpected hex string: ".concat(str));
            return null;
        }

        public static ByteString b(String str) {
            str.getClass();
            byte[] bytes = str.getBytes(Charsets.a);
            bytes.getClass();
            ByteString byteString = new ByteString(bytes);
            byteString.l = str;
            return byteString;
        }

        public static ByteString c(byte[] bArr) {
            int length = bArr.length;
            SegmentedByteString.b(bArr.length, 0L, length);
            return new ByteString(ArraysKt.k(bArr, 0, length));
        }
    }

    public ByteString(byte[] bArr) {
        bArr.getClass();
        this.j = bArr;
    }

    public static int h(ByteString byteString, ByteString byteString2) {
        byteString.getClass();
        byteString2.getClass();
        return byteString.g(0, byteString2.i());
    }

    public static int l(ByteString byteString, ByteString byteString2) {
        int e = byteString.e();
        byteString.getClass();
        byteString2.getClass();
        return byteString.k(e, byteString2.i());
    }

    public static ByteString p(ByteString byteString, int i, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = byteString.e();
        }
        return byteString.o(i, i2);
    }

    public String a() {
        byte[] bArr = Base64.a;
        byte[] bArr2 = this.j;
        bArr2.getClass();
        bArr.getClass();
        byte[] bArr3 = new byte[((bArr2.length + 2) / 3) * 4];
        int length = bArr2.length - (bArr2.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = bArr2[i];
            int i3 = i + 2;
            byte b2 = bArr2[i + 1];
            i += 3;
            byte b3 = bArr2[i3];
            bArr3[i2] = bArr[(b & 255) >> 2];
            bArr3[i2 + 1] = bArr[((b & 3) << 4) | ((b2 & 255) >> 4)];
            int i4 = i2 + 3;
            bArr3[i2 + 2] = bArr[((b2 & 15) << 2) | ((b3 & 255) >> 6)];
            i2 += 4;
            bArr3[i4] = bArr[b3 & 63];
        }
        int length2 = bArr2.length - length;
        if (length2 != 1) {
            if (length2 == 2) {
                int i5 = i + 1;
                byte b4 = bArr2[i];
                byte b5 = bArr2[i5];
                bArr3[i2] = bArr[(b4 & 255) >> 2];
                bArr3[i2 + 1] = bArr[((b4 & 3) << 4) | ((b5 & 255) >> 4)];
                bArr3[i2 + 2] = bArr[(b5 & 15) << 2];
                bArr3[i2 + 3] = 61;
            }
        } else {
            byte b6 = bArr2[i];
            bArr3[i2] = bArr[(b6 & 255) >> 2];
            bArr3[i2 + 1] = bArr[(b6 & 3) << 4];
            bArr3[i2 + 2] = 61;
            bArr3[i2 + 3] = 61;
        }
        return new String(bArr3, Charsets.a);
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ByteString byteString) {
        byteString.getClass();
        int e = e();
        int e2 = byteString.e();
        int min = Math.min(e, e2);
        for (int i = 0; i < min; i++) {
            int j = j(i) & 255;
            int j2 = byteString.j(i) & 255;
            if (j != j2) {
                if (j < j2) {
                    return -1;
                }
                return 1;
            }
        }
        if (e == e2) {
            return 0;
        }
        if (e < e2) {
            return -1;
        }
        return 1;
    }

    public void c(int i, int i2, int i3, byte[] bArr) {
        bArr.getClass();
        ArraysKt.e(i2, i, i3 + i, this.j, bArr);
    }

    public ByteString d(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.j, 0, e());
        byte[] digest = messageDigest.digest();
        digest.getClass();
        return new ByteString(digest);
    }

    public int e() {
        return this.j.length;
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ByteString) {
                ByteString byteString = (ByteString) obj;
                int e = byteString.e();
                byte[] bArr = this.j;
                if (e == bArr.length && byteString.m(0, 0, bArr.length, bArr)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public String f() {
        byte[] bArr = this.j;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = okio.internal.ByteString.a;
            cArr[i] = cArr2[(b >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public int g(int i, byte[] bArr) {
        bArr.getClass();
        byte[] bArr2 = this.j;
        int length = bArr2.length - bArr.length;
        int max = Math.max(i, 0);
        if (max <= length) {
            while (!SegmentedByteString.a(max, 0, bArr.length, bArr2, bArr)) {
                if (max != length) {
                    max++;
                } else {
                    return -1;
                }
            }
            return max;
        }
        return -1;
    }

    public int hashCode() {
        int i = this.k;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.j);
        this.k = hashCode;
        return hashCode;
    }

    public byte[] i() {
        return this.j;
    }

    public byte j(int i) {
        return this.j[i];
    }

    public int k(int i, byte[] bArr) {
        bArr.getClass();
        byte[] bArr2 = this.j;
        for (int min = Math.min(i, bArr2.length - bArr.length); -1 < min; min--) {
            if (SegmentedByteString.a(min, 0, bArr.length, bArr2, bArr)) {
                return min;
            }
        }
        return -1;
    }

    public boolean m(int i, int i2, int i3, byte[] bArr) {
        bArr.getClass();
        if (i >= 0) {
            byte[] bArr2 = this.j;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && SegmentedByteString.a(i, i2, i3, bArr2, bArr)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean n(int i, ByteString byteString, int i2) {
        byteString.getClass();
        return byteString.m(0, i, i2, this.j);
    }

    public ByteString o(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.j;
            if (i2 <= bArr.length) {
                if (i2 - i >= 0) {
                    if (i == 0 && i2 == bArr.length) {
                        return this;
                    }
                    return new ByteString(ArraysKt.k(bArr, i, i2));
                }
                u2.g("endIndex < beginIndex");
                return null;
            }
            fe.l(q.j(new StringBuilder("endIndex > length("), bArr.length, ')'));
            return null;
        }
        u2.g("beginIndex < 0");
        return null;
    }

    public ByteString q() {
        int i = 0;
        while (true) {
            byte[] bArr = this.j;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 65 && b <= 90) {
                    byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                    copyOf[i] = (byte) (b + 32);
                    for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                        byte b2 = copyOf[i2];
                        if (b2 >= 65 && b2 <= 90) {
                            copyOf[i2] = (byte) (b2 + 32);
                        }
                    }
                    return new ByteString(copyOf);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    public byte[] r() {
        byte[] bArr = this.j;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final String s() {
        String str = this.l;
        if (str == null) {
            byte[] i = i();
            i.getClass();
            String str2 = new String(i, Charsets.a);
            this.l = str2;
            return str2;
        }
        return str;
    }

    public void t(Buffer buffer, int i) {
        buffer.X(i, this.j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x00f6, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0130, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0134, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00d6, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0173, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x017a, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x016c, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x01aa, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x01ad, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x01b0, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0140, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x01b3, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0096, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c4, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0085, code lost:
    
        if (r6 == 64) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00fe, code lost:
    
        if (r6 == 64) goto L180;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        int i;
        byte b;
        int i2;
        int i3;
        ByteString byteString = this;
        byte[] bArr = byteString.j;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        loop0: while (true) {
            if (i4 >= length) {
                break;
            }
            byte b2 = bArr[i4];
            int i7 = 2;
            if (b2 >= 0) {
                int i8 = i6 + 1;
                if (i6 == 64) {
                    break;
                }
                if ((b2 != 10 && b2 != 13 && ((b2 >= 0 && b2 < 32) || (Byte.MAX_VALUE <= b2 && b2 < 160))) || b2 == 65533) {
                    break;
                }
                if (b2 < 65536) {
                    i = 1;
                } else {
                    i = 2;
                }
                i5 += i;
                i4++;
                while (true) {
                    i6 = i8;
                    if (i4 < length && (b = bArr[i4]) >= 0) {
                        i4++;
                        i8 = i6 + 1;
                        if (i6 == 64) {
                            break loop0;
                        }
                        if ((b != 10 && b != 13 && ((b >= 0 && b < 32) || (Byte.MAX_VALUE <= b && b < 160))) || b == 65533) {
                            break loop0;
                        }
                        if (b < 65536) {
                            i2 = 1;
                        } else {
                            i2 = 2;
                        }
                        i5 += i2;
                    }
                }
            } else if ((b2 >> 5) == -2) {
                int i9 = i4 + 1;
                if (length > i9) {
                    byte b3 = bArr[i9];
                    if ((b3 & 192) == 128) {
                        int i10 = (b3 ^ 3968) ^ (b2 << 6);
                        if (i10 >= 128) {
                            i3 = i6 + 1;
                            if (i6 == 64) {
                                break;
                            }
                            if ((i10 != 10 && i10 != 13 && ((i10 >= 0 && i10 < 32) || (127 <= i10 && i10 < 160))) || i10 == 65533) {
                                break;
                            }
                            if (i10 < 65536) {
                                i7 = 1;
                            }
                            i5 += i7;
                            i4 += 2;
                            i6 = i3;
                        }
                    }
                }
            } else if ((b2 >> 4) == -2) {
                int i11 = i4 + 2;
                if (length > i11) {
                    byte b4 = bArr[i4 + 1];
                    if ((b4 & 192) == 128) {
                        byte b5 = bArr[i11];
                        if ((b5 & 192) == 128) {
                            int i12 = ((b5 ^ (-123008)) ^ (b4 << 6)) ^ (b2 << 12);
                            if (i12 >= 2048) {
                                if (55296 > i12 || i12 >= 57344) {
                                    i3 = i6 + 1;
                                    if (i6 == 64) {
                                        break;
                                    }
                                    if ((i12 != 10 && i12 != 13 && ((i12 >= 0 && i12 < 32) || (127 <= i12 && i12 < 160))) || i12 == 65533) {
                                        break;
                                    }
                                    if (i12 < 65536) {
                                        i7 = 1;
                                    }
                                    i5 += i7;
                                    i4 += 3;
                                    i6 = i3;
                                }
                            }
                        }
                    }
                }
            } else if ((b2 >> 3) == -2) {
                int i13 = i4 + 3;
                if (length > i13) {
                    byte b6 = bArr[i4 + 1];
                    if ((b6 & 192) == 128) {
                        byte b7 = bArr[i4 + 2];
                        if ((b7 & 192) == 128) {
                            byte b8 = bArr[i13];
                            if ((b8 & 192) == 128) {
                                int i14 = (((b8 ^ 3678080) ^ (b7 << 6)) ^ (b6 << 12)) ^ (b2 << 18);
                                if (i14 <= 1114111) {
                                    if (55296 > i14 || i14 >= 57344) {
                                        if (i14 >= 65536) {
                                            i3 = i6 + 1;
                                            if (i6 == 64) {
                                                break;
                                            }
                                            if ((i14 != 10 && i14 != 13 && ((i14 >= 0 && i14 < 32) || (127 <= i14 && i14 < 160))) || i14 == 65533) {
                                                break;
                                            }
                                            if (i14 < 65536) {
                                                i7 = 1;
                                            }
                                            i5 += i7;
                                            i4 += 4;
                                            i6 = i3;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (i5 == -1) {
            if (bArr.length <= 64) {
                return "[hex=" + byteString.f() + ']';
            }
            StringBuilder sb = new StringBuilder("[size=");
            sb.append(bArr.length);
            sb.append(" hex=");
            if (64 <= bArr.length) {
                if (64 != bArr.length) {
                    byteString = new ByteString(ArraysKt.k(bArr, 0, 64));
                }
                sb.append(byteString.f());
                sb.append("…]");
                return sb.toString();
            }
            fe.l(q.j(new StringBuilder("endIndex > length("), bArr.length, ')'));
            return null;
        }
        String s = byteString.s();
        String F = StringsKt.F(StringsKt.F(StringsKt.F(s.substring(0, i5), "\\", "\\\\"), "\n", "\\n"), "\r", "\\r");
        if (i5 < s.length()) {
            return "[size=" + bArr.length + " text=" + F + "…]";
        }
        return "[text=" + F + ']';
    }
}
