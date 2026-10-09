package com.squareup.wire;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RepeatedProtoAdapter<E> extends ProtoAdapter<List<? extends E>> {
    public final ProtoAdapter v;

    public RepeatedProtoAdapter(ProtoAdapter protoAdapter) {
        super(protoAdapter.a, Reflection.a(List.class), null, protoAdapter.d, EmptyList.j, 32, 0);
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
        protoWriter.getClass();
        ((List) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        ((List) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        List list = (List) obj;
        protoWriter.getClass();
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.v.f(protoWriter, i, list.get(i2));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        List list = (List) obj;
        reverseProtoWriter.getClass();
        if (list != null) {
            int size = list.size();
            while (true) {
                size--;
                if (-1 < size) {
                    this.v.g(reverseProtoWriter, i, list.get(size));
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ((List) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        List list = (List) obj;
        if (list == null) {
            return 0;
        }
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += this.v.i(i, list.get(i3));
        }
        return i2;
    }
}
