package net.blip.libblip;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UserAgent$Companion$ADAPTER$1 extends ProtoAdapter<UserAgent> {
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
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
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x002b. Please report as an issue. */
    @Override // com.squareup.wire.ProtoAdapter
    public final java.lang.Object c(com.squareup.wire.ProtoReader r17) {
        /*
            r16 = this;
            r1 = r17
            r1.getClass()
            net.blip.libblip.DeviceKind r0 = net.blip.libblip.DeviceKind.m
            long r2 = r1.d()
            java.lang.String r4 = ""
            r6 = r4
            r7 = r6
            r9 = r7
            r10 = r9
            r11 = r10
            r12 = r11
            r13 = r12
            r14 = r13
        L15:
            r4 = r0
        L16:
            int r5 = r1.h()
            r0 = -1
            if (r5 == r0) goto La9
            r0 = 200(0xc8, float:2.8E-43)
            com.squareup.wire.ProtoAdapterKt$commonString$1 r8 = com.squareup.wire.ProtoAdapter.p
            if (r5 == r0) goto L9c
            r0 = 201(0xc9, float:2.82E-43)
            if (r5 == r0) goto L8f
            r0 = 304(0x130, float:4.26E-43)
            if (r5 == r0) goto L83
            switch(r5) {
                case 100: goto L79;
                case 101: goto L6e;
                case 102: goto L53;
                default: goto L2e;
            }
        L2e:
            switch(r5) {
                case 300: goto L4a;
                case 301: goto L41;
                case 302: goto L38;
                default: goto L31;
            }
        L31:
            r1.o(r5)
            r16 = r6
            r15 = r7
            goto L6a
        L38:
            r8.getClass()
            java.lang.String r0 = r1.n()
            r13 = r0
            goto L16
        L41:
            r8.getClass()
            java.lang.String r0 = r1.n()
            r12 = r0
            goto L16
        L4a:
            r8.getClass()
            java.lang.String r0 = r1.n()
            r11 = r0
            goto L16
        L53:
            net.blip.libblip.DeviceKind$Companion$ADAPTER$1 r0 = net.blip.libblip.DeviceKind.l     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L5a
            java.lang.Object r0 = r0.c(r1)     // Catch: com.squareup.wire.ProtoAdapter.EnumConstantNotFoundException -> L5a
            goto L15
        L5a:
            r0 = move-exception
            com.squareup.wire.FieldEncoding r8 = com.squareup.wire.FieldEncoding.k
            int r0 = r0.j
            r16 = r6
            r15 = r7
            long r6 = (long) r0
            java.lang.Long r0 = java.lang.Long.valueOf(r6)
            r1.a(r5, r8, r0)
        L6a:
            r6 = r16
            r7 = r15
            goto L16
        L6e:
            r16 = r6
            r8.getClass()
            java.lang.String r0 = r1.n()
            r7 = r0
            goto L16
        L79:
            r15 = r7
            r8.getClass()
            java.lang.String r0 = r1.n()
            r6 = r0
            goto L16
        L83:
            r16 = r6
            r15 = r7
            r8.getClass()
            java.lang.String r0 = r1.n()
            r14 = r0
            goto L16
        L8f:
            r16 = r6
            r15 = r7
            r8.getClass()
            java.lang.String r0 = r1.n()
            r10 = r0
            goto L16
        L9c:
            r16 = r6
            r15 = r7
            r8.getClass()
            java.lang.String r0 = r1.n()
            r9 = r0
            goto L16
        La9:
            r16 = r6
            r15 = r7
            okio.ByteString r0 = r1.f(r2)
            net.blip.libblip.UserAgent r5 = new net.blip.libblip.UserAgent
            r8 = r4
            net.blip.libblip.DeviceKind r8 = (net.blip.libblip.DeviceKind) r8
            r15 = r0
            r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.blip.libblip.UserAgent$Companion$ADAPTER$1.c(com.squareup.wire.ProtoReader):java.lang.Object");
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        UserAgent userAgent = (UserAgent) obj;
        protoWriter.getClass();
        userAgent.getClass();
        String str = userAgent.u;
        String str2 = userAgent.t;
        String str3 = userAgent.s;
        String str4 = userAgent.r;
        String str5 = userAgent.q;
        String str6 = userAgent.p;
        String str7 = userAgent.n;
        String str8 = userAgent.m;
        boolean a = Intrinsics.a(str8, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 100, str8);
        }
        if (!Intrinsics.a(str7, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 101, str7);
        }
        DeviceKind deviceKind = userAgent.o;
        if (deviceKind != DeviceKind.m) {
            DeviceKind.l.f(protoWriter, 102, deviceKind);
        }
        if (!Intrinsics.a(str6, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 200, str6);
        }
        if (!Intrinsics.a(str5, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 201, str5);
        }
        if (!Intrinsics.a(str4, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 300, str4);
        }
        if (!Intrinsics.a(str3, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 301, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 302, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 304, str);
        }
        protoWriter.a(userAgent.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        UserAgent userAgent = (UserAgent) obj;
        reverseProtoWriter.getClass();
        userAgent.getClass();
        String str = userAgent.m;
        String str2 = userAgent.n;
        String str3 = userAgent.p;
        String str4 = userAgent.q;
        String str5 = userAgent.r;
        String str6 = userAgent.s;
        String str7 = userAgent.t;
        reverseProtoWriter.d(userAgent.a());
        String str8 = userAgent.u;
        boolean a = Intrinsics.a(str8, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 304, str8);
        }
        if (!Intrinsics.a(str7, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 302, str7);
        }
        if (!Intrinsics.a(str6, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 301, str6);
        }
        if (!Intrinsics.a(str5, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 300, str5);
        }
        if (!Intrinsics.a(str4, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 201, str4);
        }
        if (!Intrinsics.a(str3, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 200, str3);
        }
        DeviceKind deviceKind = userAgent.o;
        if (deviceKind != DeviceKind.m) {
            DeviceKind.l.g(reverseProtoWriter, 102, deviceKind);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 101, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 100, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        UserAgent userAgent = (UserAgent) obj;
        userAgent.getClass();
        String str = userAgent.u;
        String str2 = userAgent.t;
        String str3 = userAgent.s;
        String str4 = userAgent.r;
        String str5 = userAgent.q;
        String str6 = userAgent.p;
        String str7 = userAgent.n;
        int e = userAgent.a().e();
        String str8 = userAgent.m;
        boolean a = Intrinsics.a(str8, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(100, str8);
        }
        if (!Intrinsics.a(str7, "")) {
            e += protoAdapterKt$commonString$1.i(101, str7);
        }
        DeviceKind deviceKind = userAgent.o;
        if (deviceKind != DeviceKind.m) {
            e += DeviceKind.l.i(102, deviceKind);
        }
        if (!Intrinsics.a(str6, "")) {
            e += protoAdapterKt$commonString$1.i(200, str6);
        }
        if (!Intrinsics.a(str5, "")) {
            e += protoAdapterKt$commonString$1.i(201, str5);
        }
        if (!Intrinsics.a(str4, "")) {
            e += protoAdapterKt$commonString$1.i(300, str4);
        }
        if (!Intrinsics.a(str3, "")) {
            e += protoAdapterKt$commonString$1.i(301, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            e += protoAdapterKt$commonString$1.i(302, str2);
        }
        if (!Intrinsics.a(str, "")) {
            return protoAdapterKt$commonString$1.i(304, str) + e;
        }
        return e;
    }
}
