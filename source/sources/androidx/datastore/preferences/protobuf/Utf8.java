package androidx.datastore.preferences.protobuf;

import defpackage.q;
import java.nio.charset.Charset;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class Utf8 {
    public static final Processor a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DecodeUtil {
        public static boolean a(byte b) {
            if (b > -65) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Processor {
        public abstract String a(byte[] bArr, int i, int i2);

        public abstract int b(String str, byte[] bArr, int i, int i2);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SafeProcessor extends Processor {
        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        public final String a(byte[] bArr, int i, int i2) {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = bArr[i];
                    if (b < 0) {
                        break;
                    }
                    i++;
                    cArr[i4] = (char) b;
                    i4++;
                }
                while (i < i3) {
                    int i5 = i + 1;
                    byte b2 = bArr[i];
                    if (b2 >= 0) {
                        int i6 = i4 + 1;
                        cArr[i4] = (char) b2;
                        while (i5 < i3) {
                            byte b3 = bArr[i5];
                            if (b3 < 0) {
                                break;
                            }
                            i5++;
                            cArr[i6] = (char) b3;
                            i6++;
                        }
                        i4 = i6;
                        i = i5;
                    } else if (b2 < -32) {
                        if (i5 < i3) {
                            i += 2;
                            byte b4 = bArr[i5];
                            int i7 = i4 + 1;
                            if (b2 >= -62 && !DecodeUtil.a(b4)) {
                                cArr[i4] = (char) ((b4 & 63) | ((b2 & 31) << 6));
                                i4 = i7;
                            } else {
                                throw InvalidProtocolBufferException.a();
                            }
                        } else {
                            throw InvalidProtocolBufferException.a();
                        }
                    } else if (b2 < -16) {
                        if (i5 < i3 - 1) {
                            int i8 = i + 2;
                            byte b5 = bArr[i5];
                            i += 3;
                            byte b6 = bArr[i8];
                            int i9 = i4 + 1;
                            if (!DecodeUtil.a(b5) && ((b2 != -32 || b5 >= -96) && ((b2 != -19 || b5 < -96) && !DecodeUtil.a(b6)))) {
                                cArr[i4] = (char) (((b5 & 63) << 6) | ((b2 & 15) << 12) | (b6 & 63));
                                i4 = i9;
                            } else {
                                throw InvalidProtocolBufferException.a();
                            }
                        } else {
                            throw InvalidProtocolBufferException.a();
                        }
                    } else {
                        if (i5 < i3 - 2) {
                            byte b7 = bArr[i5];
                            int i10 = i + 3;
                            byte b8 = bArr[i + 2];
                            i += 4;
                            byte b9 = bArr[i10];
                            int i11 = i4 + 1;
                            if (!DecodeUtil.a(b7)) {
                                if ((((b7 + 112) + (b2 << 28)) >> 30) == 0 && !DecodeUtil.a(b8) && !DecodeUtil.a(b9)) {
                                    int i12 = ((b7 & 63) << 12) | ((b2 & 7) << 18) | ((b8 & 63) << 6) | (b9 & 63);
                                    cArr[i4] = (char) ((i12 >>> 10) + 55232);
                                    cArr[i11] = (char) ((i12 & 1023) + 56320);
                                    i4 += 2;
                                }
                            }
                            throw InvalidProtocolBufferException.a();
                        }
                        throw InvalidProtocolBufferException.a();
                    }
                }
                return new String(cArr, 0, i4);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        
            return r9 + r6;
         */
        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int b(String str, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            char charAt;
            int length = str.length();
            int i5 = i2 + i;
            int i6 = 0;
            while (i6 < length && (i4 = i6 + i) < i5 && (charAt = str.charAt(i6)) < 128) {
                bArr[i4] = (byte) charAt;
                i6++;
            }
            int i7 = i + i6;
            while (i6 < length) {
                char charAt2 = str.charAt(i6);
                if (charAt2 < 128 && i7 < i5) {
                    bArr[i7] = (byte) charAt2;
                    i7++;
                } else if (charAt2 < 2048 && i7 <= i5 - 2) {
                    int i8 = i7 + 1;
                    bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                    i7 += 2;
                    bArr[i8] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 < 55296 || 57343 < charAt2) && i7 <= i5 - 3) {
                    bArr[i7] = (byte) ((charAt2 >>> '\f') | 480);
                    int i9 = i7 + 2;
                    bArr[i7 + 1] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i7 += 3;
                    bArr[i9] = (byte) ((charAt2 & '?') | 128);
                } else {
                    if (i7 <= i5 - 4) {
                        int i10 = i6 + 1;
                        if (i10 != str.length()) {
                            char charAt3 = str.charAt(i10);
                            if (Character.isSurrogatePair(charAt2, charAt3)) {
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i7 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i11 = i7 + 3;
                                bArr[i7 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i7 += 4;
                                bArr[i11] = (byte) ((codePoint & 63) | 128);
                                i6 = i10;
                            } else {
                                i6 = i10;
                            }
                        }
                        throw new UnpairedSurrogateException(i6 - 1, length);
                    }
                    if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i6 + 1) == str.length() || !Character.isSurrogatePair(charAt2, str.charAt(i3)))) {
                        throw new UnpairedSurrogateException(i6, length);
                    }
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i7);
                }
                i6++;
            }
            return i7;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super(q.f(i, i2, "Unpaired surrogate at index ", " of "));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UnsafeProcessor extends Processor {
        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        public final String a(byte[] bArr, int i, int i2) {
            Charset charset = Internal.a;
            String str = new String(bArr, i, i2, charset);
            if (str.indexOf(65533) < 0 || Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i, i2 + i))) {
                return str;
            }
            throw InvalidProtocolBufferException.a();
        }

        @Override // androidx.datastore.preferences.protobuf.Utf8.Processor
        public final int b(String str, byte[] bArr, int i, int i2) {
            long j;
            long j2;
            long j3;
            int i3;
            char charAt;
            long j4 = i;
            long j5 = i2 + j4;
            int length = str.length();
            if (length <= i2 && bArr.length - i2 >= i) {
                int i4 = 0;
                while (true) {
                    j = 1;
                    if (i4 >= length || (charAt = str.charAt(i4)) >= 128) {
                        break;
                    }
                    UnsafeUtil.j(bArr, j4, (byte) charAt);
                    i4++;
                    j4 = 1 + j4;
                }
                if (i4 == length) {
                    return (int) j4;
                }
                while (i4 < length) {
                    char charAt2 = str.charAt(i4);
                    if (charAt2 < 128 && j4 < j5) {
                        UnsafeUtil.j(bArr, j4, (byte) charAt2);
                        j3 = j5;
                        j2 = j;
                        j4 += j;
                    } else if (charAt2 < 2048 && j4 <= j5 - 2) {
                        j2 = j;
                        long j6 = j4 + j2;
                        UnsafeUtil.j(bArr, j4, (byte) ((charAt2 >>> 6) | 960));
                        j4 += 2;
                        UnsafeUtil.j(bArr, j6, (byte) ((charAt2 & '?') | 128));
                        j3 = j5;
                    } else {
                        j2 = j;
                        if ((charAt2 >= 55296 && 57343 >= charAt2) || j4 > j5 - 3) {
                            j3 = j5;
                            if (j4 <= j3 - 4) {
                                int i5 = i4 + 1;
                                if (i5 != length) {
                                    char charAt3 = str.charAt(i5);
                                    if (Character.isSurrogatePair(charAt2, charAt3)) {
                                        int codePoint = Character.toCodePoint(charAt2, charAt3);
                                        UnsafeUtil.j(bArr, j4, (byte) ((codePoint >>> 18) | 240));
                                        UnsafeUtil.j(bArr, j4 + j2, (byte) (((codePoint >>> 12) & 63) | 128));
                                        long j7 = j4 + 3;
                                        UnsafeUtil.j(bArr, j4 + 2, (byte) (((codePoint >>> 6) & 63) | 128));
                                        j4 += 4;
                                        UnsafeUtil.j(bArr, j7, (byte) ((codePoint & 63) | 128));
                                        i4 = i5;
                                    } else {
                                        i4 = i5;
                                    }
                                }
                                throw new UnpairedSurrogateException(i4 - 1, length);
                            }
                            if (55296 <= charAt2 && charAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt2, str.charAt(i3)))) {
                                throw new UnpairedSurrogateException(i4, length);
                            }
                            throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + j4);
                        }
                        UnsafeUtil.j(bArr, j4, (byte) ((charAt2 >>> '\f') | 480));
                        long j8 = j4 + 2;
                        j3 = j5;
                        UnsafeUtil.j(bArr, j4 + j2, (byte) (((charAt2 >>> 6) & 63) | 128));
                        j4 += 3;
                        UnsafeUtil.j(bArr, j8, (byte) ((charAt2 & '?') | 128));
                    }
                    i4++;
                    j = j2;
                    j5 = j3;
                }
                return (int) j4;
            }
            throw new ArrayIndexOutOfBoundsException("Failed writing " + str.charAt(length - 1) + " at index " + (i + i2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.preferences.protobuf.Utf8$Processor] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    static {
        ?? r0;
        if (UnsafeUtil.e && UnsafeUtil.d && !Android.a()) {
            r0 = new Object();
        } else {
            r0 = new Object();
        }
        a = r0;
    }

    public static int a(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = str.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = str.length();
                while (i2 < length2) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(str, i2) >= 65536) {
                                i2++;
                            } else {
                                throw new UnpairedSurrogateException(i2, length2);
                            }
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + 4294967296L));
    }
}
