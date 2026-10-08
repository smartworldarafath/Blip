package com.squareup.wire;

import kotlin.reflect.KClass;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProtoAdapterKt {
    public static final void a(final ProtoAdapter protoAdapter, final String str) {
        FieldEncoding fieldEncoding = FieldEncoding.k;
        final KClass kClass = protoAdapter.b;
        Syntax syntax = Syntax.k;
        final Object obj = protoAdapter.e;
        new ProtoAdapter<Object>(str, kClass, obj) { // from class: com.squareup.wire.ProtoAdapterKt$commonWrapper$1
            {
                FieldEncoding fieldEncoding2 = FieldEncoding.m;
                Syntax syntax2 = Syntax.l;
                int i = 32;
                int i2 = 0;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final Object b(ProtoReader32 protoReader32) {
                protoReader32.getClass();
                ProtoAdapter protoAdapter2 = protoAdapter;
                Object obj2 = protoAdapter2.e;
                ByteArrayProtoReader32 byteArrayProtoReader32 = (ByteArrayProtoReader32) protoReader32;
                int d = byteArrayProtoReader32.d();
                while (true) {
                    int h = byteArrayProtoReader32.h();
                    if (h != -1) {
                        if (h == 1) {
                            obj2 = protoAdapter2.b(protoReader32);
                        } else {
                            byteArrayProtoReader32.n(h);
                        }
                    } else {
                        byteArrayProtoReader32.f(d);
                        return obj2;
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final Object c(ProtoReader protoReader) {
                protoReader.getClass();
                ProtoAdapter protoAdapter2 = protoAdapter;
                Object obj2 = protoAdapter2.e;
                long d = protoReader.d();
                while (true) {
                    int h = protoReader.h();
                    if (h != -1) {
                        if (h == 1) {
                            obj2 = protoAdapter2.c(protoReader);
                        } else {
                            protoReader.o(h);
                        }
                    } else {
                        protoReader.f(d);
                        return obj2;
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final void d(ProtoWriter protoWriter, Object obj2) {
                protoWriter.getClass();
                if (obj2 != null) {
                    ProtoAdapter protoAdapter2 = protoAdapter;
                    if (!obj2.equals(protoAdapter2.e)) {
                        protoAdapter2.f(protoWriter, 1, obj2);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final void e(ReverseProtoWriter reverseProtoWriter, Object obj2) {
                reverseProtoWriter.getClass();
                if (obj2 != null) {
                    ProtoAdapter protoAdapter2 = protoAdapter;
                    if (!obj2.equals(protoAdapter2.e)) {
                        protoAdapter2.g(reverseProtoWriter, 1, obj2);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public final int h(Object obj2) {
                if (obj2 != null) {
                    ProtoAdapter protoAdapter2 = protoAdapter;
                    if (!obj2.equals(protoAdapter2.e)) {
                        return protoAdapter2.i(1, obj2);
                    }
                    return 0;
                }
                return 0;
            }
        };
    }
}
