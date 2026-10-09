package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UnknownFieldSchema<T, B> {
    public abstract UnknownFieldSetLite a(Object obj);

    public final boolean b(int i, CodedInputStreamReader codedInputStreamReader, Object obj) {
        int i2 = codedInputStreamReader.b;
        CodedInputStream codedInputStream = codedInputStreamReader.a;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            return false;
                        }
                        if (i4 == 5) {
                            codedInputStreamReader.w(5);
                            ((UnknownFieldSetLite) obj).c(5 | (i3 << 3), Integer.valueOf(codedInputStream.j()));
                            return true;
                        }
                        throw InvalidProtocolBufferException.b();
                    }
                    UnknownFieldSetLite unknownFieldSetLite = new UnknownFieldSetLite(0, new int[8], new Object[8], true);
                    int i5 = i3 << 3;
                    int i6 = i5 | 4;
                    int i7 = i + 1;
                    if (i7 >= 100) {
                        throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                    }
                    while (codedInputStreamReader.a() != Integer.MAX_VALUE && b(i7, codedInputStreamReader, unknownFieldSetLite)) {
                    }
                    if (i6 == codedInputStreamReader.b) {
                        if (unknownFieldSetLite.e) {
                            unknownFieldSetLite.e = false;
                        }
                        ((UnknownFieldSetLite) obj).c(i5 | 3, unknownFieldSetLite);
                        return true;
                    }
                    throw new IOException("Protocol message end-group tag did not match expected tag.");
                }
                ((UnknownFieldSetLite) obj).c((i3 << 3) | 2, codedInputStreamReader.e());
                return true;
            }
            codedInputStreamReader.w(1);
            ((UnknownFieldSetLite) obj).c((i3 << 3) | 1, Long.valueOf(codedInputStream.k()));
            return true;
        }
        codedInputStreamReader.w(0);
        ((UnknownFieldSetLite) obj).c(i3 << 3, Long.valueOf(codedInputStream.n()));
        return true;
    }
}
