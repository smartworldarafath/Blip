package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ConnStats$Companion$ADAPTER$1 extends ProtoAdapter<ConnStats> {
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
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0019. Please report as an issue. */
    @Override // com.squareup.wire.ProtoAdapter
    public final java.lang.Object c(com.squareup.wire.ProtoReader r14) {
        /*
            r13 = this;
            r14.getClass()
            long r0 = r14.d()
            r2 = 0
            r13 = 0
            r7 = r13
            r8 = r7
            r9 = r8
            r10 = r9
            r11 = r10
        Lf:
            r5 = r2
        L10:
            int r13 = r14.h()
            r2 = -1
            if (r13 == r2) goto L68
            com.squareup.wire.ProtoAdapterKt$commonBool$1 r2 = com.squareup.wire.ProtoAdapter.g
            switch(r13) {
                case 1: goto L5b;
                case 2: goto L4f;
                case 3: goto L43;
                case 4: goto L38;
                case 5: goto L2c;
                case 6: goto L20;
                default: goto L1c;
            }
        L1c:
            r14.o(r13)
            goto L10
        L20:
            java.lang.Object r13 = r2.c(r14)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            r9 = r13
            goto L10
        L2c:
            java.lang.Object r13 = r2.c(r14)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            r8 = r13
            goto L10
        L38:
            com.squareup.wire.ProtoAdapterKt$commonInt32$1 r13 = com.squareup.wire.ProtoAdapter.h
            r13.getClass()
            int r13 = r14.p()
            r11 = r13
            goto L10
        L43:
            java.lang.Object r13 = r2.c(r14)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            r10 = r13
            goto L10
        L4f:
            java.lang.Object r13 = r2.c(r14)
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            boolean r13 = r13.booleanValue()
            r7 = r13
            goto L10
        L5b:
            com.squareup.wire.DoubleProtoAdapter r13 = com.squareup.wire.ProtoAdapter.n
            java.lang.Object r13 = r13.c(r14)
            java.lang.Number r13 = (java.lang.Number) r13
            double r2 = r13.doubleValue()
            goto Lf
        L68:
            okio.ByteString r12 = r14.f(r0)
            net.blip.libblip.frontend.ConnStats r4 = new net.blip.libblip.frontend.ConnStats
            r4.<init>(r5, r7, r8, r9, r10, r11, r12)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: net.blip.libblip.frontend.ConnStats$Companion$ADAPTER$1.c(com.squareup.wire.ProtoReader):java.lang.Object");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        ConnStats connStats = (ConnStats) obj;
        protoWriter.getClass();
        connStats.getClass();
        double d = connStats.m;
        if (!Double.valueOf(d).equals(Double.valueOf(0.0d))) {
            ProtoAdapter.n.f(protoWriter, 1, Double.valueOf(d));
        }
        boolean z = connStats.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 2, Boolean.valueOf(z));
        }
        boolean z2 = connStats.o;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 5, Boolean.valueOf(z2));
        }
        boolean z3 = connStats.p;
        if (z3) {
            protoAdapterKt$commonBool$1.f(protoWriter, 6, Boolean.valueOf(z3));
        }
        boolean z4 = connStats.q;
        if (z4) {
            protoAdapterKt$commonBool$1.f(protoWriter, 3, Boolean.valueOf(z4));
        }
        int i = connStats.r;
        if (i != 0) {
            ProtoAdapter.h.f(protoWriter, 4, Integer.valueOf(i));
        }
        protoWriter.a(connStats.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        ConnStats connStats = (ConnStats) obj;
        reverseProtoWriter.getClass();
        connStats.getClass();
        double d = connStats.m;
        reverseProtoWriter.d(connStats.a());
        int i = connStats.r;
        if (i != 0) {
            ProtoAdapter.h.g(reverseProtoWriter, 4, Integer.valueOf(i));
        }
        boolean z = connStats.q;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 3, Boolean.valueOf(z));
        }
        boolean z2 = connStats.p;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 6, Boolean.valueOf(z2));
        }
        boolean z3 = connStats.o;
        if (z3) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 5, Boolean.valueOf(z3));
        }
        boolean z4 = connStats.n;
        if (z4) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 2, Boolean.valueOf(z4));
        }
        if (!Double.valueOf(d).equals(Double.valueOf(0.0d))) {
            ProtoAdapter.n.g(reverseProtoWriter, 1, Double.valueOf(d));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ConnStats connStats = (ConnStats) obj;
        connStats.getClass();
        int e = connStats.a().e();
        double d = connStats.m;
        if (!Double.valueOf(d).equals(Double.valueOf(0.0d))) {
            e += ProtoAdapter.n.i(1, Double.valueOf(d));
        }
        boolean z = connStats.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            e = q.c(z, protoAdapterKt$commonBool$1, 2, e);
        }
        boolean z2 = connStats.o;
        if (z2) {
            e = q.c(z2, protoAdapterKt$commonBool$1, 5, e);
        }
        boolean z3 = connStats.p;
        if (z3) {
            e = q.c(z3, protoAdapterKt$commonBool$1, 6, e);
        }
        boolean z4 = connStats.q;
        if (z4) {
            e = q.c(z4, protoAdapterKt$commonBool$1, 3, e);
        }
        int i = connStats.r;
        if (i != 0) {
            return ProtoAdapter.h.i(4, Integer.valueOf(i)) + e;
        }
        return e;
    }
}
