package com.squareup.wire;

import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import java.time.Instant;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonInstant$1 extends ProtoAdapter<Instant> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        ByteArrayProtoReader32 byteArrayProtoReader32 = (ByteArrayProtoReader32) protoReader32;
        int d = byteArrayProtoReader32.d();
        long j = 0;
        int i = 0;
        while (true) {
            int h = byteArrayProtoReader32.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        byteArrayProtoReader32.n(h);
                    } else {
                        i = ((Number) ProtoAdapter.h.b(protoReader32)).intValue();
                    }
                } else {
                    j = ((Number) ProtoAdapter.k.b(protoReader32)).longValue();
                }
            } else {
                byteArrayProtoReader32.f(d);
                Instant ofEpochSecond = Instant.ofEpochSecond(j, i);
                ofEpochSecond.getClass();
                return ofEpochSecond;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        long j = 0;
        int i = 0;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        ProtoAdapter.h.getClass();
                        i = protoReader.p();
                    }
                } else {
                    ProtoAdapter.k.getClass();
                    j = protoReader.q();
                }
            } else {
                protoReader.f(d);
                Instant ofEpochSecond = Instant.ofEpochSecond(j, i);
                ofEpochSecond.getClass();
                return ofEpochSecond;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Instant instant = (Instant) obj;
        protoWriter.getClass();
        instant.getClass();
        long epochSecond = instant.getEpochSecond();
        int nano = instant.getNano();
        if (-62135596800L <= epochSecond && epochSecond < 253402300800L) {
            if (nano >= 0 && nano < 1000000000) {
                if (epochSecond != 0) {
                    ProtoAdapter.k.f(protoWriter, 1, Long.valueOf(epochSecond));
                }
                if (nano != 0) {
                    ProtoAdapter.h.f(protoWriter, 2, Integer.valueOf(nano));
                    return;
                }
                return;
            }
            fe.l(jb.d("Timestamp nanos (", nano, ") must be in range [0, 999999999]"));
            return;
        }
        k8.k("Timestamp seconds (", epochSecond, ") must be in range [-62135596800, 253402300799]");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Instant instant = (Instant) obj;
        reverseProtoWriter.getClass();
        instant.getClass();
        long epochSecond = instant.getEpochSecond();
        int nano = instant.getNano();
        if (-62135596800L <= epochSecond && epochSecond < 253402300800L) {
            if (nano >= 0 && nano < 1000000000) {
                if (nano != 0) {
                    ProtoAdapter.h.g(reverseProtoWriter, 2, Integer.valueOf(nano));
                }
                if (epochSecond != 0) {
                    ProtoAdapter.k.g(reverseProtoWriter, 1, Long.valueOf(epochSecond));
                    return;
                }
                return;
            }
            fe.l(jb.d("Timestamp nanos (", nano, ") must be in range [0, 999999999]"));
            return;
        }
        k8.k("Timestamp seconds (", epochSecond, ") must be in range [-62135596800, 253402300799]");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Instant instant = (Instant) obj;
        instant.getClass();
        long epochSecond = instant.getEpochSecond();
        int nano = instant.getNano();
        int i = 0;
        if (-62135596800L <= epochSecond && epochSecond < 253402300800L) {
            if (nano >= 0 && nano < 1000000000) {
                if (epochSecond != 0) {
                    i = ProtoAdapter.k.i(1, Long.valueOf(epochSecond));
                }
                if (nano != 0) {
                    return ProtoAdapter.h.i(2, Integer.valueOf(nano)) + i;
                }
                return i;
            }
            fe.l(jb.d("Timestamp nanos (", nano, ") must be in range [0, 999999999]"));
            return 0;
        }
        k8.k("Timestamp seconds (", epochSecond, ") must be in range [-62135596800, 253402300799]");
        return 0;
    }
}
