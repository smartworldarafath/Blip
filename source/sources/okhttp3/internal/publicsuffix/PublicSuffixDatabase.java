package okhttp3.internal.publicsuffix;

import defpackage.fe;
import defpackage.jb;
import defpackage.u2;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.DropSequence;
import kotlin.sequences.DropTakeSequence;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.GzipSource;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PublicSuffixDatabase {
    public static final byte[] e = {42};
    public static final List f = CollectionsKt.B("*");
    public static final PublicSuffixDatabase g = new PublicSuffixDatabase();
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final CountDownLatch b = new CountDownLatch(1);
    public byte[] c;
    public byte[] d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final String a(byte[] bArr, byte[][] bArr2, int i) {
            int i2;
            boolean z;
            int i3;
            int i4;
            byte[] bArr3 = PublicSuffixDatabase.e;
            int length = bArr.length;
            int i5 = 0;
            while (i5 < length) {
                int i6 = (i5 + length) / 2;
                while (i6 > -1 && bArr[i6] != 10) {
                    i6--;
                }
                int i7 = i6 + 1;
                int i8 = 1;
                while (true) {
                    i2 = i7 + i8;
                    if (bArr[i2] == 10) {
                        break;
                    }
                    i8++;
                }
                int i9 = i2 - i7;
                int i10 = i;
                boolean z2 = false;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (z2) {
                        i3 = 46;
                        z = false;
                    } else {
                        byte b = bArr2[i10][i11];
                        byte[] bArr4 = Util.a;
                        int i13 = b & 255;
                        z = z2;
                        i3 = i13;
                    }
                    byte b2 = bArr[i7 + i12];
                    byte[] bArr5 = Util.a;
                    i4 = i3 - (b2 & 255);
                    if (i4 != 0) {
                        break;
                    }
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    }
                    if (bArr2[i10].length == i11) {
                        if (i10 == bArr2.length - 1) {
                            break;
                        }
                        i10++;
                        i11 = -1;
                        z2 = true;
                    } else {
                        z2 = z;
                    }
                }
                if (i4 >= 0) {
                    if (i4 <= 0) {
                        int i14 = i9 - i12;
                        int length2 = bArr2[i10].length - i11;
                        int length3 = bArr2.length;
                        for (int i15 = i10 + 1; i15 < length3; i15++) {
                            length2 += bArr2[i15].length;
                        }
                        if (length2 >= i14) {
                            if (length2 <= i14) {
                                Charset charset = StandardCharsets.UTF_8;
                                charset.getClass();
                                return new String(bArr, i7, i9, charset);
                            }
                        }
                    }
                    i5 = i2 + 1;
                }
                length = i6;
            }
            return null;
        }
    }

    public static List c(String str) {
        List H = StringsKt.H(str, new char[]{'.'});
        if (Intrinsics.a(CollectionsKt.z(H), "")) {
            return CollectionsKt.q(H);
        }
        return H;
    }

    public final String a(String str) {
        String str2;
        String str3;
        String str4;
        List list;
        List list2;
        int size;
        int size2;
        String unicode = IDN.toUnicode(str);
        unicode.getClass();
        List c = c(unicode);
        List list3 = EmptyList.j;
        if (!this.a.get() && this.a.compareAndSet(false, true)) {
            boolean z = false;
            while (true) {
                try {
                    try {
                        b();
                        break;
                    } catch (InterruptedIOException unused) {
                        Thread.interrupted();
                        z = true;
                    } catch (IOException e2) {
                        Platform platform = Platform.a;
                        Platform.a.getClass();
                        Platform.i("Failed to read public suffix list", 5, e2);
                        if (z) {
                        }
                    }
                } finally {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        } else {
            try {
                this.b.await();
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.c != null) {
            int size3 = c.size();
            byte[][] bArr = new byte[size3];
            for (int i = 0; i < size3; i++) {
                String str5 = (String) c.get(i);
                Charset charset = StandardCharsets.UTF_8;
                charset.getClass();
                byte[] bytes = str5.getBytes(charset);
                bytes.getClass();
                bArr[i] = bytes;
            }
            int i2 = 0;
            while (true) {
                if (i2 < size3) {
                    byte[] bArr2 = this.c;
                    if (bArr2 != null) {
                        str2 = Companion.a(bArr2, bArr, i2);
                        if (str2 != null) {
                            break;
                        }
                        i2++;
                    } else {
                        Intrinsics.e("publicSuffixListBytes");
                        throw null;
                    }
                } else {
                    str2 = null;
                    break;
                }
            }
            if (size3 > 1) {
                byte[][] bArr3 = (byte[][]) bArr.clone();
                int length = bArr3.length - 1;
                for (int i3 = 0; i3 < length; i3++) {
                    bArr3[i3] = e;
                    byte[] bArr4 = this.c;
                    if (bArr4 != null) {
                        str3 = Companion.a(bArr4, bArr3, i3);
                        if (str3 != null) {
                            break;
                        }
                    } else {
                        Intrinsics.e("publicSuffixListBytes");
                        throw null;
                    }
                }
            }
            str3 = null;
            if (str3 != null) {
                int i4 = size3 - 1;
                for (int i5 = 0; i5 < i4; i5++) {
                    byte[] bArr5 = this.d;
                    if (bArr5 != null) {
                        str4 = Companion.a(bArr5, bArr, i5);
                        if (str4 != null) {
                            break;
                        }
                    } else {
                        Intrinsics.e("publicSuffixExceptionListBytes");
                        throw null;
                    }
                }
            }
            str4 = null;
            if (str4 != null) {
                list2 = StringsKt.H("!".concat(str4), new char[]{'.'});
            } else if (str2 == null && str3 == null) {
                list2 = f;
            } else {
                if (str2 != null) {
                    list = StringsKt.H(str2, new char[]{'.'});
                } else {
                    list = list3;
                }
                if (str3 != null) {
                    list3 = StringsKt.H(str3, new char[]{'.'});
                }
                if (list.size() > list3.size()) {
                    list2 = list;
                } else {
                    list2 = list3;
                }
            }
            if (c.size() == list2.size() && ((String) list2.get(0)).charAt(0) != '!') {
                return null;
            }
            if (((String) list2.get(0)).charAt(0) == '!') {
                size = c.size();
                size2 = list2.size();
            } else {
                size = c.size();
                size2 = list2.size() + 1;
            }
            int i6 = size - size2;
            Sequence collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 = new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(c(str));
            if (i6 >= 0) {
                if (i6 != 0) {
                    if (collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 instanceof DropTakeSequence) {
                        collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 = ((DropTakeSequence) collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1).a(i6);
                    } else {
                        collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 = new DropSequence(collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1, i6);
                    }
                }
                return SequencesKt.f(collectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1, ".");
            }
            fe.l(jb.d("Requested element count ", i6, " is less than zero."));
            return null;
        }
        u2.l("Unable to load publicsuffixes.gz resource from the classpath.");
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final void b() {
        try {
            ?? obj = new Object();
            ?? obj2 = new Object();
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
            if (resourceAsStream != null) {
                RealBufferedSource realBufferedSource = new RealBufferedSource(new GzipSource(Okio.e(resourceAsStream)));
                try {
                    long readInt = realBufferedSource.readInt();
                    realBufferedSource.W0(readInt);
                    obj.j = realBufferedSource.k.A(readInt);
                    long readInt2 = realBufferedSource.readInt();
                    realBufferedSource.W0(readInt2);
                    obj2.j = realBufferedSource.k.A(readInt2);
                    realBufferedSource.close();
                    synchronized (this) {
                        Object obj3 = obj.j;
                        obj3.getClass();
                        this.c = (byte[]) obj3;
                        Object obj4 = obj2.j;
                        obj4.getClass();
                        this.d = (byte[]) obj4;
                    }
                } finally {
                }
            }
        } finally {
            this.b.countDown();
        }
    }
}
