package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoAdapterKt$commonUint32$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Config$Companion$ADAPTER$1 extends ProtoAdapter<Config> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        String str = "";
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
                if (h != 2) {
                    if (h != 3) {
                        if (h != 4) {
                            ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.i;
                            if (h != 5) {
                                if (h != 6) {
                                    protoReader.o(h);
                                } else {
                                    protoAdapterKt$commonUint32$1.getClass();
                                    i2 = protoReader.p();
                                }
                            } else {
                                protoAdapterKt$commonUint32$1.getClass();
                                i = protoReader.p();
                            }
                        } else {
                            ProtoAdapter.p.getClass();
                            str = protoReader.n();
                        }
                    } else {
                        z2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    }
                } else {
                    z = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                }
            } else {
                return new Config(z, z2, str, i, i2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Config config = (Config) obj;
        protoWriter.getClass();
        config.getClass();
        String str = config.o;
        boolean z = config.m;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 2, Boolean.valueOf(z));
        }
        boolean z2 = config.n;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 3, Boolean.valueOf(z2));
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 4, str);
        }
        int i = config.p;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.i;
        if (i != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 5, Integer.valueOf(i));
        }
        int i2 = config.q;
        if (i2 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 6, Integer.valueOf(i2));
        }
        protoWriter.a(config.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Config config = (Config) obj;
        reverseProtoWriter.getClass();
        config.getClass();
        String str = config.o;
        reverseProtoWriter.d(config.a());
        int i = config.q;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.i;
        if (i != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 6, Integer.valueOf(i));
        }
        int i2 = config.p;
        if (i2 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 5, Integer.valueOf(i2));
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 4, str);
        }
        boolean z = config.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 3, Boolean.valueOf(z));
        }
        boolean z2 = config.m;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 2, Boolean.valueOf(z2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Config config = (Config) obj;
        config.getClass();
        String str = config.o;
        int e = config.a().e();
        boolean z = config.m;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            e = q.c(z, protoAdapterKt$commonBool$1, 2, e);
        }
        boolean z2 = config.n;
        if (z2) {
            e = q.c(z2, protoAdapterKt$commonBool$1, 3, e);
        }
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(4, str);
        }
        int i = config.p;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.i;
        if (i != 0) {
            e += protoAdapterKt$commonUint32$1.i(5, Integer.valueOf(i));
        }
        int i2 = config.q;
        if (i2 != 0) {
            return protoAdapterKt$commonUint32$1.i(6, Integer.valueOf(i2)) + e;
        }
        return e;
    }
}
