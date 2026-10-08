package com.squareup.wire;

import java.util.Map;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MapEntryProtoAdapter<K, V> extends ProtoAdapter<Map.Entry<? extends K, ? extends V>> {
    public final ProtoAdapter v;
    public final ProtoAdapter w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MapEntryProtoAdapter(ProtoAdapter protoAdapter, ProtoAdapter protoAdapter2) {
        super(FieldEncoding.m, Reflection.a(Map.Entry.class), null, protoAdapter2.d, null, 48, 0);
        protoAdapter.getClass();
        protoAdapter2.getClass();
        this.v = protoAdapter;
        this.w = protoAdapter2;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        throw new UnsupportedOperationException();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        protoWriter.getClass();
        entry.getClass();
        this.v.f(protoWriter, 1, entry.getKey());
        this.w.f(protoWriter, 2, entry.getValue());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        reverseProtoWriter.getClass();
        entry.getClass();
        this.w.g(reverseProtoWriter, 2, entry.getValue());
        this.v.g(reverseProtoWriter, 1, entry.getKey());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        return this.w.i(2, entry.getValue()) + this.v.i(1, entry.getKey());
    }
}
