package okio;

import defpackage.fe;
import defpackage.jb;
import defpackage.q;
import java.security.MessageDigest;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* renamed from: okio.SegmentedByteString, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0013SegmentedByteString extends ByteString {
    public final transient byte[][] n;
    public final transient int[] o;

    public C0013SegmentedByteString(byte[][] bArr, int[] iArr) {
        super(ByteString.m.j);
        this.n = bArr;
        this.o = iArr;
    }

    @Override // okio.ByteString
    public final String a() {
        return u().a();
    }

    @Override // okio.ByteString
    public final void c(int i, int i2, int i3, byte[] bArr) {
        int i4;
        bArr.getClass();
        long j = i3;
        SegmentedByteString.b(e(), i, j);
        SegmentedByteString.b(bArr.length, i2, j);
        int i5 = i3 + i;
        int a = okio.internal.SegmentedByteString.a(this, i);
        while (i < i5) {
            int[] iArr = this.o;
            if (a == 0) {
                i4 = 0;
            } else {
                i4 = iArr[a - 1];
            }
            int i6 = iArr[a] - i4;
            byte[][] bArr2 = this.n;
            int i7 = iArr[bArr2.length + a];
            int min = Math.min(i5, i6 + i4) - i;
            int i8 = (i - i4) + i7;
            ArraysKt.e(i2, i8, i8 + min, bArr2[a], bArr);
            i2 += min;
            i += min;
            a++;
        }
    }

    @Override // okio.ByteString
    public final ByteString d(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.n;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.o;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(bArr[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digest = messageDigest.digest();
        digest.getClass();
        return new ByteString(digest);
    }

    @Override // okio.ByteString
    public final int e() {
        return this.o[this.n.length - 1];
    }

    @Override // okio.ByteString
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ByteString) {
                ByteString byteString = (ByteString) obj;
                if (byteString.e() == e() && n(0, byteString, e())) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    @Override // okio.ByteString
    public final String f() {
        return u().f();
    }

    @Override // okio.ByteString
    public final int g(int i, byte[] bArr) {
        bArr.getClass();
        return u().g(i, bArr);
    }

    @Override // okio.ByteString
    public final int hashCode() {
        int i = this.k;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.n;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.o;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr2 = bArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.k = i3;
        return i3;
    }

    @Override // okio.ByteString
    public final byte[] i() {
        return r();
    }

    @Override // okio.ByteString
    public final byte j(int i) {
        int i2;
        byte[][] bArr = this.n;
        int length = bArr.length - 1;
        int[] iArr = this.o;
        SegmentedByteString.b(iArr[length], i, 1L);
        int a = okio.internal.SegmentedByteString.a(this, i);
        if (a == 0) {
            i2 = 0;
        } else {
            i2 = iArr[a - 1];
        }
        return bArr[a][(i - i2) + iArr[bArr.length + a]];
    }

    @Override // okio.ByteString
    public final int k(int i, byte[] bArr) {
        bArr.getClass();
        return u().k(i, bArr);
    }

    @Override // okio.ByteString
    public final boolean m(int i, int i2, int i3, byte[] bArr) {
        int i4;
        bArr.getClass();
        if (i < 0 || i > e() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i5 = i3 + i;
        int a = okio.internal.SegmentedByteString.a(this, i);
        while (i < i5) {
            int[] iArr = this.o;
            if (a == 0) {
                i4 = 0;
            } else {
                i4 = iArr[a - 1];
            }
            int i6 = iArr[a] - i4;
            byte[][] bArr2 = this.n;
            int i7 = iArr[bArr2.length + a];
            int min = Math.min(i5, i6 + i4) - i;
            if (!SegmentedByteString.a((i - i4) + i7, i2, min, bArr2[a], bArr)) {
                return false;
            }
            i2 += min;
            i += min;
            a++;
        }
        return true;
    }

    @Override // okio.ByteString
    public final boolean n(int i, ByteString byteString, int i2) {
        int i3;
        byteString.getClass();
        if (i >= 0 && i <= e() - i2) {
            int i4 = i2 + i;
            int a = okio.internal.SegmentedByteString.a(this, i);
            int i5 = 0;
            while (i < i4) {
                int[] iArr = this.o;
                if (a == 0) {
                    i3 = 0;
                } else {
                    i3 = iArr[a - 1];
                }
                int i6 = iArr[a] - i3;
                byte[][] bArr = this.n;
                int i7 = iArr[bArr.length + a];
                int min = Math.min(i4, i6 + i3) - i;
                if (byteString.m(i5, (i - i3) + i7, min, bArr[a])) {
                    i5 += min;
                    i += min;
                    a++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // okio.ByteString
    public final ByteString o(int i, int i2) {
        if (i >= 0) {
            if (i2 <= e()) {
                int i3 = i2 - i;
                if (i3 >= 0) {
                    if (i == 0 && i2 == e()) {
                        return this;
                    }
                    if (i == i2) {
                        return ByteString.m;
                    }
                    int a = okio.internal.SegmentedByteString.a(this, i);
                    int a2 = okio.internal.SegmentedByteString.a(this, i2 - 1);
                    byte[][] bArr = this.n;
                    byte[][] bArr2 = (byte[][]) ArraysKt.l(bArr, a, a2 + 1);
                    int[] iArr = new int[bArr2.length * 2];
                    int i4 = 0;
                    int[] iArr2 = this.o;
                    if (a <= a2) {
                        int i5 = a;
                        int i6 = 0;
                        while (true) {
                            iArr[i6] = Math.min(iArr2[i5] - i, i3);
                            int i7 = i6 + 1;
                            iArr[i6 + bArr2.length] = iArr2[bArr.length + i5];
                            if (i5 == a2) {
                                break;
                            }
                            i5++;
                            i6 = i7;
                        }
                    }
                    if (a != 0) {
                        i4 = iArr2[a - 1];
                    }
                    int length = bArr2.length;
                    iArr[length] = (i - i4) + iArr[length];
                    return new C0013SegmentedByteString(bArr2, iArr);
                }
                fe.l(q.f(i2, i, "endIndex=", " < beginIndex="));
                return null;
            }
            StringBuilder j = jb.j("endIndex=", i2, " > length(");
            j.append(e());
            j.append(')');
            throw new IllegalArgumentException(j.toString().toString());
        }
        fe.l(jb.d("beginIndex=", i, " < 0"));
        return null;
    }

    @Override // okio.ByteString
    public final ByteString q() {
        return u().q();
    }

    @Override // okio.ByteString
    public final byte[] r() {
        byte[] bArr = new byte[e()];
        byte[][] bArr2 = this.n;
        int length = bArr2.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.o;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            ArraysKt.e(i3, i4, i4 + i6, bArr2[i], bArr);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // okio.ByteString
    public final void t(Buffer buffer, int i) {
        int i2;
        int a = okio.internal.SegmentedByteString.a(this, 0);
        int i3 = 0;
        while (i3 < i) {
            int[] iArr = this.o;
            if (a == 0) {
                i2 = 0;
            } else {
                i2 = iArr[a - 1];
            }
            int i4 = iArr[a] - i2;
            byte[][] bArr = this.n;
            int i5 = iArr[bArr.length + a];
            int min = Math.min(i, i4 + i2) - i3;
            int i6 = (i3 - i2) + i5;
            Segment segment = new Segment(bArr[a], i6, i6 + min, true);
            Segment segment2 = buffer.j;
            if (segment2 == null) {
                segment.g = segment;
                segment.f = segment;
                buffer.j = segment;
            } else {
                Segment segment3 = segment2.g;
                segment3.getClass();
                segment3.b(segment);
            }
            i3 += min;
            a++;
        }
        buffer.k += i;
    }

    @Override // okio.ByteString
    public final String toString() {
        return u().toString();
    }

    public final ByteString u() {
        return new ByteString(r());
    }
}
