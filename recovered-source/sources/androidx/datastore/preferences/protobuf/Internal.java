package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.CodedInputStream;
import io.sentry.d;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Internal {
    public static final Charset a;
    public static final byte[] b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ProtobufList<E> extends List<E>, RandomAccess {
        boolean w();
    }

    static {
        Charset.forName("US-ASCII");
        a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new CodedInputStream.ArrayDecoder(bArr, 0, 0, false).e(0);
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        d.f(str);
    }

    public static int b(long j) {
        return (int) (j ^ (j >>> 32));
    }
}
