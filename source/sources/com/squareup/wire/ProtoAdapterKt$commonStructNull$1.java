package com.squareup.wire;

import com.squareup.wire.ProtoWriter;
import defpackage.k8;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonStructNull$1 extends ProtoAdapter {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        int o = ((ByteArrayProtoReader32) protoReader32).o();
        if (o == 0) {
            return null;
        }
        k8.j(q.g(o, "expected 0 but was "));
        return null;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        int p = protoReader.p();
        if (p == 0) {
            return null;
        }
        k8.j(q.g(p, "expected 0 but was "));
        return null;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        protoWriter.getClass();
        protoWriter.b(0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        reverseProtoWriter.g(0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        protoWriter.getClass();
        FieldEncoding fieldEncoding = this.a;
        fieldEncoding.getClass();
        protoWriter.b(fieldEncoding.j | (i << 3));
        protoWriter.b(0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        reverseProtoWriter.getClass();
        reverseProtoWriter.g(0);
        FieldEncoding fieldEncoding = this.a;
        fieldEncoding.getClass();
        reverseProtoWriter.g(fieldEncoding.j | (i << 3));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        return ProtoWriter.Companion.a(0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        int a = ProtoWriter.Companion.a(0);
        FieldEncoding fieldEncoding = FieldEncoding.k;
        return ProtoWriter.Companion.a(a) + ProtoWriter.Companion.a(i << 3);
    }
}
