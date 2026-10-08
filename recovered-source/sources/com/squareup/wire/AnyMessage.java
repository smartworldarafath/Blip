package com.squareup.wire;

import defpackage.jb;
import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnyMessage extends Message {
    public static final AnyMessage$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(AnyMessage.class), "type.googleapis.com/google.protobuf.Any", Syntax.l, null, 48, 0);
    public final String m;
    public final ByteString n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnyMessage(String str, ByteString byteString) {
        super(o, ByteString.m);
        str.getClass();
        byteString.getClass();
        this.m = str;
        this.n = byteString;
    }

    public final Object b(ProtoAdapter protoAdapter) {
        protoAdapter.getClass();
        String str = protoAdapter.c;
        String str2 = this.m;
        if (Intrinsics.a(str2, str)) {
            ByteString byteString = this.n;
            byteString.getClass();
            return protoAdapter.b(new ByteArrayProtoReader32(byteString.e(), byteString.r()));
        }
        u2.i("type mismatch: ", str2, " != ", str);
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AnyMessage)) {
            return false;
        }
        AnyMessage anyMessage = (AnyMessage) obj;
        if (Intrinsics.a(this.m, anyMessage.m) && Intrinsics.a(this.n, anyMessage.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.n.hashCode() + jb.c(this.m, i * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        return "Any{type_url=" + this.m + ", value=" + this.n + '}';
    }
}
