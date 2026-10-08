package okhttp3.internal.http2;

import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Header {
    public static final ByteString d;
    public static final ByteString e;
    public static final ByteString f;
    public static final ByteString g;
    public static final ByteString h;
    public static final ByteString i;
    public final ByteString a;
    public final ByteString b;
    public final int c;

    static {
        ByteString byteString = ByteString.m;
        d = ByteString.Companion.b(":");
        e = ByteString.Companion.b(":status");
        f = ByteString.Companion.b(":method");
        g = ByteString.Companion.b(":path");
        h = ByteString.Companion.b(":scheme");
        i = ByteString.Companion.b(":authority");
    }

    public Header(ByteString byteString, ByteString byteString2) {
        byteString.getClass();
        byteString2.getClass();
        this.a = byteString;
        this.b = byteString2;
        this.c = byteString2.e() + byteString.e() + 32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        if (Intrinsics.a(this.a, header.a) && Intrinsics.a(this.b, header.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return this.a.s() + ": " + this.b.s();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, String str2) {
        this(ByteString.Companion.b(str), ByteString.Companion.b(str2));
        str.getClass();
        str2.getClass();
        ByteString byteString = ByteString.m;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, ByteString byteString) {
        this(byteString, ByteString.Companion.b(str));
        byteString.getClass();
        str.getClass();
        ByteString byteString2 = ByteString.m;
    }
}
