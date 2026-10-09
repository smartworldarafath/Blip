package okio;

import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* renamed from: okio.-Base64, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Base64 {
    public static final byte[] a;

    static {
        ByteString byteString = ByteString.m;
        a = ByteString.Companion.b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").j;
        ByteString.Companion.b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
    }
}
