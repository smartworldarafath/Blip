package com.squareup.wire;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PackedProtoAdapter<E> extends ProtoAdapter<List<? extends E>> {
    public final ProtoAdapter v;

    public PackedProtoAdapter(ProtoAdapter protoAdapter) {
        super(FieldEncoding.m, Reflection.a(List.class), null, protoAdapter.d, EmptyList.j, 32, 0);
        this.v = protoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return CollectionsKt.B(this.v.b(protoReader32));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return CollectionsKt.B(this.v.c(protoReader));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        List list = (List) obj;
        protoWriter.getClass();
        list.getClass();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            this.v.d(protoWriter, list.get(i));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        List list = (List) obj;
        reverseProtoWriter.getClass();
        list.getClass();
        int size = list.size();
        while (true) {
            size--;
            if (-1 < size) {
                this.v.e(reverseProtoWriter, list.get(size));
            } else {
                return;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        List list = (List) obj;
        protoWriter.getClass();
        if (list != null && !list.isEmpty()) {
            super.f(protoWriter, i, list);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        List list = (List) obj;
        reverseProtoWriter.getClass();
        if (list != null && !list.isEmpty()) {
            super.g(reverseProtoWriter, i, list);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        List list = (List) obj;
        list.getClass();
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.v.h(list.get(i2));
        }
        return i;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        List list = (List) obj;
        if (list != null && !list.isEmpty()) {
            return super.i(i, list);
        }
        return 0;
    }
}
