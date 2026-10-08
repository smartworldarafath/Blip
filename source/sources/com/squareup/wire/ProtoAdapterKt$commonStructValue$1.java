package com.squareup.wire;

import com.squareup.wire.ProtoWriter;
import io.sentry.d;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonStructValue$1 extends ProtoAdapter<Object> {
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0013. Please report as an issue. */
    @Override // com.squareup.wire.ProtoAdapter
    public final java.lang.Object b(com.squareup.wire.ProtoReader32 r6) {
        /*
            r5 = this;
            r6.getClass()
            r5 = r6
            com.squareup.wire.ByteArrayProtoReader32 r5 = (com.squareup.wire.ByteArrayProtoReader32) r5
            int r0 = r5.d()
            r1 = 0
        Lb:
            r2 = r1
        Lc:
            int r3 = r5.h()
            r4 = -1
            if (r3 == r4) goto L46
            switch(r3) {
                case 1: goto L40;
                case 2: goto L39;
                case 3: goto L2f;
                case 4: goto L28;
                case 5: goto L21;
                case 6: goto L1a;
                default: goto L16;
            }
        L16:
            r5.r()
            goto Lc
        L1a:
            com.squareup.wire.ProtoAdapterKt$commonStructList$1 r2 = com.squareup.wire.ProtoAdapter.r
            java.lang.Object r2 = r2.b(r6)
            goto Lc
        L21:
            com.squareup.wire.ProtoAdapterKt$commonStructMap$1 r2 = com.squareup.wire.ProtoAdapter.q
            java.lang.Object r2 = r2.b(r6)
            goto Lc
        L28:
            com.squareup.wire.ProtoAdapterKt$commonBool$1 r2 = com.squareup.wire.ProtoAdapter.g
            java.lang.Object r2 = r2.b(r6)
            goto Lc
        L2f:
            com.squareup.wire.ProtoAdapterKt$commonString$1 r2 = com.squareup.wire.ProtoAdapter.p
            r2.getClass()
            java.lang.String r2 = r5.m()
            goto Lc
        L39:
            com.squareup.wire.DoubleProtoAdapter r2 = com.squareup.wire.ProtoAdapter.n
            java.lang.Object r2 = r2.b(r6)
            goto Lc
        L40:
            com.squareup.wire.ProtoAdapterKt$commonStructNull$1 r2 = com.squareup.wire.ProtoAdapter.s
            r2.b(r6)
            goto Lb
        L46:
            r5.f(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.wire.ProtoAdapterKt$commonStructValue$1.b(com.squareup.wire.ProtoReader32):java.lang.Object");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0010. Please report as an issue. */
    @Override // com.squareup.wire.ProtoAdapter
    public final java.lang.Object c(com.squareup.wire.ProtoReader r6) {
        /*
            r5 = this;
            r6.getClass()
            long r0 = r6.d()
            r5 = 0
        L8:
            r2 = r5
        L9:
            int r3 = r6.h()
            r4 = -1
            if (r3 == r4) goto L43
            switch(r3) {
                case 1: goto L3d;
                case 2: goto L36;
                case 3: goto L2c;
                case 4: goto L25;
                case 5: goto L1e;
                case 6: goto L17;
                default: goto L13;
            }
        L13:
            r6.s()
            goto L9
        L17:
            com.squareup.wire.ProtoAdapterKt$commonStructList$1 r2 = com.squareup.wire.ProtoAdapter.r
            java.lang.Object r2 = r2.c(r6)
            goto L9
        L1e:
            com.squareup.wire.ProtoAdapterKt$commonStructMap$1 r2 = com.squareup.wire.ProtoAdapter.q
            java.lang.Object r2 = r2.c(r6)
            goto L9
        L25:
            com.squareup.wire.ProtoAdapterKt$commonBool$1 r2 = com.squareup.wire.ProtoAdapter.g
            java.lang.Object r2 = r2.c(r6)
            goto L9
        L2c:
            com.squareup.wire.ProtoAdapterKt$commonString$1 r2 = com.squareup.wire.ProtoAdapter.p
            r2.getClass()
            java.lang.String r2 = r6.n()
            goto L9
        L36:
            com.squareup.wire.DoubleProtoAdapter r2 = com.squareup.wire.ProtoAdapter.n
            java.lang.Object r2 = r2.c(r6)
            goto L9
        L3d:
            com.squareup.wire.ProtoAdapterKt$commonStructNull$1 r2 = com.squareup.wire.ProtoAdapter.s
            r2.c(r6)
            goto L8
        L43:
            r6.f(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.wire.ProtoAdapterKt$commonStructValue$1.c(com.squareup.wire.ProtoReader):java.lang.Object");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        protoWriter.getClass();
        if (obj == null) {
            ProtoAdapter.s.f(protoWriter, 1, obj);
            return;
        }
        if (obj instanceof Number) {
            ProtoAdapter.n.f(protoWriter, 2, Double.valueOf(((Number) obj).doubleValue()));
            return;
        }
        if (obj instanceof String) {
            ProtoAdapter.p.f(protoWriter, 3, obj);
            return;
        }
        if (obj instanceof Boolean) {
            ProtoAdapter.g.f(protoWriter, 4, obj);
            return;
        }
        if (obj instanceof Map) {
            ProtoAdapter.q.f(protoWriter, 5, (Map) obj);
        } else if (obj instanceof List) {
            ProtoAdapter.r.f(protoWriter, 6, obj);
        } else {
            d.e(obj, "unexpected struct value: ");
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        if (obj == null) {
            ProtoAdapter.s.g(reverseProtoWriter, 1, obj);
            return;
        }
        if (obj instanceof Number) {
            ProtoAdapter.n.g(reverseProtoWriter, 2, Double.valueOf(((Number) obj).doubleValue()));
            return;
        }
        if (obj instanceof String) {
            ProtoAdapter.p.g(reverseProtoWriter, 3, obj);
            return;
        }
        if (obj instanceof Boolean) {
            ProtoAdapter.g.g(reverseProtoWriter, 4, obj);
            return;
        }
        if (obj instanceof Map) {
            ProtoAdapter.q.g(reverseProtoWriter, 5, (Map) obj);
        } else if (obj instanceof List) {
            ProtoAdapter.r.g(reverseProtoWriter, 6, obj);
        } else {
            d.e(obj, "unexpected struct value: ");
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        protoWriter.getClass();
        if (obj == null) {
            FieldEncoding fieldEncoding = this.a;
            fieldEncoding.getClass();
            protoWriter.b((i << 3) | fieldEncoding.j);
            protoWriter.b(h(obj));
            d(protoWriter, obj);
            return;
        }
        super.f(protoWriter, i, obj);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        reverseProtoWriter.getClass();
        if (obj == null) {
            int b = reverseProtoWriter.b();
            e(reverseProtoWriter, obj);
            reverseProtoWriter.g(reverseProtoWriter.b() - b);
            FieldEncoding fieldEncoding = this.a;
            fieldEncoding.getClass();
            reverseProtoWriter.g(fieldEncoding.j | (i << 3));
            return;
        }
        super.g(reverseProtoWriter, i, obj);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        if (obj == null) {
            return ProtoAdapter.s.i(1, obj);
        }
        if (obj instanceof Number) {
            return ProtoAdapter.n.i(2, Double.valueOf(((Number) obj).doubleValue()));
        }
        if (obj instanceof String) {
            return ProtoAdapter.p.i(3, obj);
        }
        if (obj instanceof Boolean) {
            return ProtoAdapter.g.i(4, obj);
        }
        if (obj instanceof Map) {
            return ProtoAdapter.q.i(5, (Map) obj);
        }
        if (obj instanceof List) {
            return ProtoAdapter.r.i(6, obj);
        }
        d.e(obj, "unexpected struct value: ");
        return 0;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        if (obj == null) {
            int h = h(obj);
            FieldEncoding fieldEncoding = FieldEncoding.k;
            return ProtoWriter.Companion.a(h) + ProtoWriter.Companion.a(i << 3) + h;
        }
        return super.i(i, obj);
    }
}
