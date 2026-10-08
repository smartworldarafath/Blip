package com.squareup.wire;

import java.time.Duration;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonDuration$1 extends ProtoAdapter<Duration> {
    public static int j(Duration duration) {
        if (duration.getSeconds() < 0 && duration.getNano() != 0) {
            return duration.getNano() - 1000000000;
        }
        return duration.getNano();
    }

    public static long k(Duration duration) {
        if (duration.getSeconds() < 0 && duration.getNano() != 0) {
            return duration.getSeconds() + 1;
        }
        return duration.getSeconds();
    }

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
                Duration ofSeconds = Duration.ofSeconds(j, i);
                ofSeconds.getClass();
                return ofSeconds;
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
                Duration ofSeconds = Duration.ofSeconds(j, i);
                ofSeconds.getClass();
                return ofSeconds;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Duration duration = (Duration) obj;
        protoWriter.getClass();
        duration.getClass();
        long k = k(duration);
        if (k != 0) {
            ProtoAdapter.k.f(protoWriter, 1, Long.valueOf(k));
        }
        int j = j(duration);
        if (j != 0) {
            ProtoAdapter.h.f(protoWriter, 2, Integer.valueOf(j));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Duration duration = (Duration) obj;
        reverseProtoWriter.getClass();
        duration.getClass();
        int j = j(duration);
        if (j != 0) {
            ProtoAdapter.h.g(reverseProtoWriter, 2, Integer.valueOf(j));
        }
        long k = k(duration);
        if (k != 0) {
            ProtoAdapter.k.g(reverseProtoWriter, 1, Long.valueOf(k));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        int i;
        Duration duration = (Duration) obj;
        duration.getClass();
        long k = k(duration);
        if (k != 0) {
            i = ProtoAdapter.k.i(1, Long.valueOf(k));
        } else {
            i = 0;
        }
        int j = j(duration);
        if (j != 0) {
            return ProtoAdapter.h.i(2, Integer.valueOf(j)) + i;
        }
        return i;
    }
}
