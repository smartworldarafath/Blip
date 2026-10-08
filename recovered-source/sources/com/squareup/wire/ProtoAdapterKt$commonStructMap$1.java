package com.squareup.wire;

import com.squareup.wire.ProtoWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonStructMap$1 extends ProtoAdapter<Map<String, ?>> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ByteArrayProtoReader32 byteArrayProtoReader32 = (ByteArrayProtoReader32) protoReader32;
        int d = byteArrayProtoReader32.d();
        while (true) {
            int h = byteArrayProtoReader32.h();
            if (h != -1) {
                if (h != 1) {
                    byteArrayProtoReader32.r();
                } else {
                    int d2 = byteArrayProtoReader32.d();
                    String str = null;
                    Object obj = null;
                    while (true) {
                        int h2 = byteArrayProtoReader32.h();
                        if (h2 == -1) {
                            break;
                        }
                        if (h2 != 1) {
                            if (h2 != 2) {
                                byteArrayProtoReader32.n(h2);
                            } else {
                                obj = ProtoAdapter.t.b(protoReader32);
                            }
                        } else {
                            ProtoAdapter.p.getClass();
                            str = byteArrayProtoReader32.m();
                        }
                    }
                    byteArrayProtoReader32.f(d2);
                    if (str != null) {
                        linkedHashMap.put(str, obj);
                    }
                }
            } else {
                byteArrayProtoReader32.f(d);
                return linkedHashMap;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    protoReader.s();
                } else {
                    long d2 = protoReader.d();
                    String str = null;
                    Object obj = null;
                    while (true) {
                        int h2 = protoReader.h();
                        if (h2 == -1) {
                            break;
                        }
                        if (h2 != 1) {
                            if (h2 != 2) {
                                protoReader.o(h2);
                            } else {
                                obj = ProtoAdapter.t.c(protoReader);
                            }
                        } else {
                            ProtoAdapter.p.getClass();
                            str = protoReader.n();
                        }
                    }
                    protoReader.f(d2);
                    if (str != null) {
                        linkedHashMap.put(str, obj);
                    }
                }
            } else {
                protoReader.f(d);
                return linkedHashMap;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Map map = (Map) obj;
        protoWriter.getClass();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                int i = protoAdapterKt$commonString$1.i(1, str);
                ProtoAdapterKt$commonStructValue$1 protoAdapterKt$commonStructValue$1 = ProtoAdapter.t;
                int i2 = protoAdapterKt$commonStructValue$1.i(2, value) + i;
                FieldEncoding fieldEncoding = FieldEncoding.k;
                protoWriter.b(10);
                protoWriter.b(i2);
                protoAdapterKt$commonString$1.f(protoWriter, 1, str);
                protoAdapterKt$commonStructValue$1.f(protoWriter, 2, value);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Map map = (Map) obj;
        reverseProtoWriter.getClass();
        if (map != null) {
            Set entrySet = map.entrySet();
            Map.Entry[] entryArr = (Map.Entry[]) entrySet.toArray(new Map.Entry[0]);
            ArraysKt.u(entryArr);
            for (Map.Entry entry : entryArr) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                int b = reverseProtoWriter.b();
                ProtoAdapter.t.g(reverseProtoWriter, 2, value);
                ProtoAdapter.p.g(reverseProtoWriter, 1, str);
                reverseProtoWriter.g(reverseProtoWriter.b() - b);
                FieldEncoding fieldEncoding = FieldEncoding.k;
                reverseProtoWriter.g(10);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Map map = (Map) obj;
        int i = 0;
        if (map == null) {
            return 0;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            int i2 = ProtoAdapter.t.i(2, value) + ProtoAdapter.p.i(1, str);
            FieldEncoding fieldEncoding = FieldEncoding.k;
            i += ProtoWriter.Companion.a(i2) + ProtoWriter.Companion.a(8) + i2;
        }
        return i;
    }
}
