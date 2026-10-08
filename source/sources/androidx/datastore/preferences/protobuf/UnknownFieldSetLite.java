package androidx.datastore.preferences.protobuf;

import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UnknownFieldSetLite {
    public static final UnknownFieldSetLite f = new UnknownFieldSetLite(0, new int[0], new Object[0], false);
    public int a;
    public int[] b;
    public Object[] c;
    public int d = -1;
    public boolean e;

    public UnknownFieldSetLite(int i, int[] iArr, Object[] objArr, boolean z) {
        this.a = i;
        this.b = iArr;
        this.c = objArr;
        this.e = z;
    }

    public final void a(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.c = Arrays.copyOf(this.c, i);
        }
    }

    public final int b() {
        int d;
        int f2;
        int d2;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.a; i3++) {
            int i4 = this.b[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 != 3) {
                            if (i6 == 5) {
                                ((Integer) this.c[i3]).getClass();
                                d2 = CodedOutputStream.d(i5) + 4;
                            } else {
                                throw new IllegalStateException(InvalidProtocolBufferException.b());
                            }
                        } else {
                            d = CodedOutputStream.d(i5) * 2;
                            f2 = ((UnknownFieldSetLite) this.c[i3]).b();
                        }
                    } else {
                        d2 = CodedOutputStream.b(i5, (ByteString) this.c[i3]);
                    }
                } else {
                    ((Long) this.c[i3]).getClass();
                    d2 = CodedOutputStream.d(i5) + 8;
                }
                i2 = d2 + i2;
            } else {
                long longValue = ((Long) this.c[i3]).longValue();
                d = CodedOutputStream.d(i5);
                f2 = CodedOutputStream.f(longValue);
            }
            i2 = f2 + d + i2;
        }
        this.d = i2;
        return i2;
    }

    public final void c(int i, Object obj) {
        if (this.e) {
            a(this.a + 1);
            int[] iArr = this.b;
            int i2 = this.a;
            iArr[i2] = i;
            this.c[i2] = obj;
            this.a = i2 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void d(Writer writer) {
        if (this.a != 0) {
            writer.getClass();
            for (int i = 0; i < this.a; i++) {
                int i2 = this.b[i];
                Object obj = this.c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                if (i4 == 5) {
                                    ((CodedOutputStreamWriter) writer).a.l(i3, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(InvalidProtocolBufferException.b());
                                }
                            } else {
                                CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
                                codedOutputStream.v(i3, 3);
                                ((UnknownFieldSetLite) obj).d(writer);
                                codedOutputStream.v(i3, 4);
                            }
                        } else {
                            ((CodedOutputStreamWriter) writer).a.j(i3, (ByteString) obj);
                        }
                    } else {
                        ((CodedOutputStreamWriter) writer).a.n(i3, ((Long) obj).longValue());
                    }
                } else {
                    ((CodedOutputStreamWriter) writer).a.y(i3, ((Long) obj).longValue());
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnknownFieldSetLite)) {
            return false;
        }
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        int i = this.a;
        if (i == unknownFieldSetLite.a) {
            int[] iArr = this.b;
            int[] iArr2 = unknownFieldSetLite.b;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.c;
                    Object[] objArr2 = unknownFieldSetLite.c;
                    int i3 = this.a;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        int i2 = (527 + i) * 31;
        int[] iArr = this.b;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.c;
        int i7 = this.a;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }
}
