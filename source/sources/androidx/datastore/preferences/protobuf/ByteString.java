package androidx.datastore.preferences.protobuf;

import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ByteString implements Iterable<Byte>, Serializable {
    public static final ByteString k = new LiteralByteString(Internal.b);
    public static final ByteArrayCopier l;
    public int j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.datastore.preferences.protobuf.ByteString$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends AbstractByteIterator {
        public int j = 0;
        public final int k;

        public AnonymousClass1() {
            this.k = ByteString.this.size();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.j < this.k) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class AbstractByteIterator implements Iterator {
        @Override // java.util.Iterator
        public final Object next() {
            byte b;
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) this;
            int i = anonymousClass1.j;
            if (i < anonymousClass1.k) {
                anonymousClass1.j = i + 1;
                b = ByteString.this.f(i);
            } else {
                k8.o();
                b = 0;
            }
            return Byte.valueOf(b);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ArraysByteArrayCopier implements ByteArrayCopier {
        @Override // androidx.datastore.preferences.protobuf.ByteString.ByteArrayCopier
        public final byte[] a(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BoundedByteString extends LiteralByteString {
        public final int n;
        public final int o;

        public BoundedByteString(byte[] bArr, int i, int i2) {
            super(bArr);
            ByteString.c(i, i + i2, bArr.length);
            this.n = i;
            this.o = i2;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public final byte b(int i) {
            int i2 = this.o;
            if (((i2 - (i + 1)) | i) < 0) {
                if (i < 0) {
                    throw new ArrayIndexOutOfBoundsException(q.g(i, "Index < 0: "));
                }
                throw new ArrayIndexOutOfBoundsException(q.f(i, i2, "Index > length: ", ", "));
            }
            return this.m[this.n + i];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public final void e(int i, byte[] bArr) {
            System.arraycopy(this.m, this.n, bArr, 0, i);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public final byte f(int i) {
            return this.m[this.n + i];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString
        public final int g() {
            return this.n;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public final int size() {
            return this.o;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ByteArrayCopier {
        byte[] a(byte[] bArr, int i, int i2);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class LeafByteString extends ByteString {
        @Override // java.lang.Iterable
        public final Iterator<Byte> iterator() {
            return new AnonymousClass1();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LiteralByteString extends LeafByteString {
        public final byte[] m;

        public LiteralByteString(byte[] bArr) {
            this.j = 0;
            bArr.getClass();
            this.m = bArr;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public byte b(int i) {
            return this.m[i];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public void e(int i, byte[] bArr) {
            System.arraycopy(this.m, 0, bArr, 0, i);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj != this) {
                if ((obj instanceof ByteString) && size() == ((ByteString) obj).size()) {
                    if (size() != 0) {
                        if (obj instanceof LiteralByteString) {
                            LiteralByteString literalByteString = (LiteralByteString) obj;
                            int i = this.j;
                            int i2 = literalByteString.j;
                            if (i == 0 || i2 == 0 || i == i2) {
                                int size = size();
                                if (size <= literalByteString.size()) {
                                    if (size <= literalByteString.size()) {
                                        byte[] bArr = literalByteString.m;
                                        int g = g() + size;
                                        int g2 = g();
                                        int g3 = literalByteString.g();
                                        while (g2 < g) {
                                            if (this.m[g2] != bArr[g3]) {
                                                return false;
                                            }
                                            g2++;
                                            g3++;
                                        }
                                        return true;
                                    }
                                    StringBuilder j = jb.j("Ran off end of other: 0, ", size, ", ");
                                    j.append(literalByteString.size());
                                    throw new IllegalArgumentException(j.toString());
                                }
                                throw new IllegalArgumentException("Length too large: " + size + size());
                            }
                            return false;
                        }
                        return obj.equals(this);
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public byte f(int i) {
            return this.m[i];
        }

        public int g() {
            return 0;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public int size() {
            return this.m.length;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SystemByteArrayCopier implements ByteArrayCopier {
        @Override // androidx.datastore.preferences.protobuf.ByteString.ByteArrayCopier
        public final byte[] a(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.datastore.preferences.protobuf.ByteString$ByteArrayCopier] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    static {
        ?? r0;
        if (Android.a()) {
            r0 = new Object();
        } else {
            r0 = new Object();
        }
        l = r0;
    }

    public static int c(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 < i) {
                    u2.o(q.f(i, i2, "Beginning index larger than ending index: ", ", "));
                    return 0;
                }
                u2.o(q.f(i2, i3, "End index: ", " >= "));
                return 0;
            }
            u2.o(jb.d("Beginning index: ", i, " < 0"));
            return 0;
        }
        return i4;
    }

    public static ByteString d(byte[] bArr, int i, int i2) {
        c(i, i + i2, bArr.length);
        return new LiteralByteString(l.a(bArr, i, i2));
    }

    public abstract byte b(int i);

    public abstract void e(int i, byte[] bArr);

    public abstract boolean equals(Object obj);

    public abstract byte f(int i);

    public final int hashCode() {
        int i = this.j;
        if (i == 0) {
            int size = size();
            LiteralByteString literalByteString = (LiteralByteString) this;
            int g = literalByteString.g();
            int i2 = size;
            for (int i3 = g; i3 < g + size; i3++) {
                i2 = (i2 * 31) + literalByteString.m[i3];
            }
            if (i2 == 0) {
                i2 = 1;
            }
            this.j = i2;
            return i2;
        }
        return i;
    }

    public abstract int size();

    public final String toString() {
        ByteString boundedByteString;
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            concat = TextFormatEscaper.a(this);
        } else {
            LiteralByteString literalByteString = (LiteralByteString) this;
            int c = c(0, 47, literalByteString.size());
            if (c == 0) {
                boundedByteString = k;
            } else {
                boundedByteString = new BoundedByteString(literalByteString.m, literalByteString.g(), c);
            }
            concat = TextFormatEscaper.a(boundedByteString).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(size);
        sb.append(" contents=\"");
        return q.l(sb, concat, "\">");
    }
}
