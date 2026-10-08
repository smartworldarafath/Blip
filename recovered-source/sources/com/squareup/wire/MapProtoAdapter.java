package com.squareup.wire;

import defpackage.u2;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyMap;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MapProtoAdapter<K, V> extends ProtoAdapter<Map<K, ? extends V>> {
    public final MapEntryProtoAdapter v;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MapProtoAdapter(ProtoAdapter protoAdapter, ProtoAdapter protoAdapter2) {
        super(r1, r2, null, r4, r5, 32, 0);
        Map map;
        protoAdapter.getClass();
        protoAdapter2.getClass();
        FieldEncoding fieldEncoding = FieldEncoding.m;
        ClassReference a = Reflection.a(Map.class);
        Syntax syntax = protoAdapter2.d;
        map = EmptyMap.j;
        this.v = new MapEntryProtoAdapter(protoAdapter, protoAdapter2);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        MapEntryProtoAdapter mapEntryProtoAdapter = this.v;
        Object obj = mapEntryProtoAdapter.v.e;
        ProtoAdapter protoAdapter = mapEntryProtoAdapter.w;
        Object obj2 = protoAdapter.e;
        ByteArrayProtoReader32 byteArrayProtoReader32 = (ByteArrayProtoReader32) protoReader32;
        int d = byteArrayProtoReader32.d();
        while (true) {
            int h = byteArrayProtoReader32.h();
            if (h == -1) {
                break;
            }
            if (h != 1) {
                if (h == 2) {
                    obj2 = protoAdapter.b(protoReader32);
                }
            } else {
                obj = mapEntryProtoAdapter.v.b(protoReader32);
            }
        }
        byteArrayProtoReader32.f(d);
        if (obj != null) {
            if (obj2 != null) {
                return MapsKt.e(new Pair(obj, obj2));
            }
            u2.l("Map entry with null value");
            return null;
        }
        u2.l("Map entry with null key");
        return null;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        MapEntryProtoAdapter mapEntryProtoAdapter = this.v;
        Object obj = mapEntryProtoAdapter.v.e;
        ProtoAdapter protoAdapter = mapEntryProtoAdapter.w;
        Object obj2 = protoAdapter.e;
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h == -1) {
                break;
            }
            if (h != 1) {
                if (h == 2) {
                    obj2 = protoAdapter.c(protoReader);
                }
            } else {
                obj = mapEntryProtoAdapter.v.c(protoReader);
            }
        }
        protoReader.f(d);
        if (obj != null) {
            if (obj2 != null) {
                return MapsKt.e(new Pair(obj, obj2));
            }
            u2.l("Map entry with null value");
            return null;
        }
        u2.l("Map entry with null key");
        return null;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        protoWriter.getClass();
        ((Map) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        ((Map) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        Map map = (Map) obj;
        protoWriter.getClass();
        if (map != null) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                this.v.f(protoWriter, i, it.next());
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        Map map = (Map) obj;
        reverseProtoWriter.getClass();
        if (map != null) {
            Map.Entry[] entryArr = (Map.Entry[]) map.entrySet().toArray(new Map.Entry[0]);
            ArraysKt.u(entryArr);
            for (Map.Entry entry : entryArr) {
                this.v.g(reverseProtoWriter, i, entry);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ((Map) obj).getClass();
        throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        Map map = (Map) obj;
        int i2 = 0;
        if (map == null) {
            return 0;
        }
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            i2 += this.v.i(i, it.next());
        }
        return i2;
    }
}
