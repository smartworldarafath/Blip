package com.squareup.wire;

import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoReader32AsProtoReader extends ProtoReader {
    public final ProtoReader32 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v0, types: [okio.BufferedSource, java.lang.Object] */
    public ProtoReader32AsProtoReader(ProtoReader32 protoReader32) {
        super(new Object());
        protoReader32.getClass();
        this.j = protoReader32;
    }

    @Override // com.squareup.wire.ProtoReader
    public final void a(int i, FieldEncoding fieldEncoding, Object obj) {
        ((ByteArrayProtoReader32) this.j).a(i, fieldEncoding, obj);
    }

    @Override // com.squareup.wire.ProtoReader
    public final long d() {
        return ((ByteArrayProtoReader32) this.j).d();
    }

    @Override // com.squareup.wire.ProtoReader
    public final ByteString f(long j) {
        return ((ByteArrayProtoReader32) this.j).f((int) j);
    }

    @Override // com.squareup.wire.ProtoReader
    public final int h() {
        return ((ByteArrayProtoReader32) this.j).h();
    }

    @Override // com.squareup.wire.ProtoReader
    public final FieldEncoding i() {
        return ((ByteArrayProtoReader32) this.j).h;
    }

    @Override // com.squareup.wire.ProtoReader
    public final ByteString k() {
        return ((ByteArrayProtoReader32) this.j).j();
    }

    @Override // com.squareup.wire.ProtoReader
    public final int l() {
        return ((ByteArrayProtoReader32) this.j).k();
    }

    @Override // com.squareup.wire.ProtoReader
    public final long m() {
        return ((ByteArrayProtoReader32) this.j).l();
    }

    @Override // com.squareup.wire.ProtoReader
    public final String n() {
        return ((ByteArrayProtoReader32) this.j).m();
    }

    @Override // com.squareup.wire.ProtoReader
    public final void o(int i) {
        ((ByteArrayProtoReader32) this.j).n(i);
    }

    @Override // com.squareup.wire.ProtoReader
    public final int p() {
        return ((ByteArrayProtoReader32) this.j).o();
    }

    @Override // com.squareup.wire.ProtoReader
    public final long q() {
        return ((ByteArrayProtoReader32) this.j).p();
    }

    @Override // com.squareup.wire.ProtoReader
    public final void s() {
        ((ByteArrayProtoReader32) this.j).r();
    }
}
