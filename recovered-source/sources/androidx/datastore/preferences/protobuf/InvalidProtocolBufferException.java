package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class InvalidProtocolBufferException extends IOException {
    public boolean j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class InvalidWireTypeException extends InvalidProtocolBufferException {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException, java.io.IOException] */
    public static InvalidProtocolBufferException a() {
        return new IOException("Protocol message had invalid UTF-8.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException$InvalidWireTypeException, java.io.IOException] */
    public static InvalidWireTypeException b() {
        return new IOException("Protocol message tag had invalid wire type.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException, java.io.IOException] */
    public static InvalidProtocolBufferException c() {
        return new IOException("CodedInputStream encountered a malformed varint.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException, java.io.IOException] */
    public static InvalidProtocolBufferException d() {
        return new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.InvalidProtocolBufferException, java.io.IOException] */
    public static InvalidProtocolBufferException e() {
        return new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
