package com.squareup.wire;

import com.squareup.wire.Message;
import java.io.Serializable;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Message<M extends Message<M, B>, B> implements Serializable {
    public final transient ProtoAdapter j;
    public final transient ByteString k;
    public transient int l;

    public Message(ProtoAdapter protoAdapter, ByteString byteString) {
        protoAdapter.getClass();
        byteString.getClass();
        this.j = protoAdapter;
        this.k = byteString;
    }

    public final ByteString a() {
        ByteString byteString = this.k;
        if (byteString == null) {
            return ByteString.m;
        }
        return byteString;
    }
}
