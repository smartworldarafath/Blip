package io.sentry.rrweb;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.rrweb.RRWebEvent;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RRWebVideoEvent extends RRWebEvent implements JsonSerializable {
    public ConcurrentHashMap A;
    public String l;
    public int m;
    public long n;
    public long o;
    public String p;
    public String q;
    public int r;
    public int s;
    public int t;
    public String u;
    public int v;
    public int w;
    public int x;
    public HashMap y;
    public ConcurrentHashMap z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<RRWebVideoEvent> {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:100:0x018c, code lost:
        
            r5 = r10.y();
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0190, code lost:
        
            if (r5 != null) goto L121;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0193, code lost:
        
            r8 = r5.intValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x0197, code lost:
        
            r0.t = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:106:0x019b, code lost:
        
            r5 = r10.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:107:0x019f, code lost:
        
            if (r5 != null) goto L126;
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x01a1, code lost:
        
            r5 = "";
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x01a2, code lost:
        
            r0.q = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x01a6, code lost:
        
            r5 = r10.y();
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x01aa, code lost:
        
            if (r5 != null) goto L130;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x01ad, code lost:
        
            r8 = r5.intValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x01b1, code lost:
        
            r0.r = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x01b5, code lost:
        
            r0.m = r10.nextInt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x01bd, code lost:
        
            r0.o = r10.nextLong();
         */
        /* JADX WARN: Code restructure failed: missing block: B:124:0x011d, code lost:
        
            if (r4 != null) goto L84;
         */
        /* JADX WARN: Code restructure failed: missing block: B:125:0x011f, code lost:
        
            r4 = new java.util.concurrent.ConcurrentHashMap();
         */
        /* JADX WARN: Code restructure failed: missing block: B:126:0x0124, code lost:
        
            r10.D(r11, r4, r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x011a, code lost:
        
            switch(r9) {
                case 0: goto L166;
                case 1: goto L165;
                case 2: goto L164;
                case 3: goto L163;
                case 4: goto L162;
                case 5: goto L161;
                case 6: goto L160;
                case 7: goto L159;
                case 8: goto L158;
                case 9: goto L157;
                case 10: goto L156;
                case 11: goto L155;
                default: goto L168;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0129, code lost:
        
            r5 = r10.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x012d, code lost:
        
            if (r5 != null) goto L88;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x012f, code lost:
        
            r5 = "";
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0130, code lost:
        
            r0.u = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0134, code lost:
        
            r5 = r10.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0138, code lost:
        
            if (r5 != null) goto L92;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x013a, code lost:
        
            r5 = "";
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x013b, code lost:
        
            r0.p = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x013f, code lost:
        
            r5 = r10.y();
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0143, code lost:
        
            if (r5 != null) goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0146, code lost:
        
            r8 = r5.intValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x014a, code lost:
        
            r0.v = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x014e, code lost:
        
            r5 = r10.y();
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0152, code lost:
        
            if (r5 != null) goto L101;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0155, code lost:
        
            r8 = r5.intValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0159, code lost:
        
            r0.s = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x015d, code lost:
        
            r5 = r10.F();
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0161, code lost:
        
            if (r5 != null) goto L106;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0163, code lost:
        
            r7 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x016a, code lost:
        
            r0.n = r7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0166, code lost:
        
            r7 = r5.longValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x016e, code lost:
        
            r5 = r10.y();
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0172, code lost:
        
            if (r5 != null) goto L111;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x0175, code lost:
        
            r8 = r5.intValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x0179, code lost:
        
            r0.w = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x017d, code lost:
        
            r5 = r10.y();
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0181, code lost:
        
            if (r5 != null) goto L116;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0184, code lost:
        
            r8 = r5.intValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0188, code lost:
        
            r0.x = r8;
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0079  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static RRWebVideoEvent b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            RRWebVideoEvent rRWebVideoEvent = new RRWebVideoEvent();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("data")) {
                    if (!RRWebEvent.Deserializer.a(rRWebVideoEvent, e0, objectReader, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    }
                } else {
                    objectReader.H0();
                    ConcurrentHashMap concurrentHashMap = null;
                    while (objectReader.peek() == JsonToken.NAME) {
                        String e02 = objectReader.e0();
                        e02.getClass();
                        String str = "";
                        if (!e02.equals("payload")) {
                            if (!e02.equals("tag")) {
                                if (concurrentHashMap == null) {
                                    concurrentHashMap = new ConcurrentHashMap();
                                }
                                objectReader.D(iLogger, concurrentHashMap, e02);
                            } else {
                                String L = objectReader.L();
                                if (L != null) {
                                    str = L;
                                }
                                rRWebVideoEvent.l = str;
                            }
                        } else {
                            objectReader.H0();
                            ConcurrentHashMap concurrentHashMap2 = null;
                            while (objectReader.peek() == JsonToken.NAME) {
                                String e03 = objectReader.e0();
                                e03.getClass();
                                int i = 0;
                                char c = 65535;
                                switch (e03.hashCode()) {
                                    case -1992012396:
                                        if (e03.equals("duration")) {
                                            c = 0;
                                            break;
                                        }
                                        break;
                                    case -1627805778:
                                        if (e03.equals("segmentId")) {
                                            c = 1;
                                            break;
                                        }
                                        break;
                                    case -1221029593:
                                        if (e03.equals("height")) {
                                            c = 2;
                                            break;
                                        }
                                        break;
                                    case -410956671:
                                        if (e03.equals("container")) {
                                            c = 3;
                                            break;
                                        }
                                        break;
                                    case -296512606:
                                        if (e03.equals("frameCount")) {
                                            c = 4;
                                            break;
                                        }
                                        break;
                                    case 115029:
                                        if (e03.equals("top")) {
                                            c = 5;
                                            break;
                                        }
                                        break;
                                    case 3317767:
                                        if (e03.equals("left")) {
                                            c = 6;
                                            break;
                                        }
                                        break;
                                    case 3530753:
                                        if (e03.equals("size")) {
                                            c = 7;
                                            break;
                                        }
                                        break;
                                    case 113126854:
                                        if (e03.equals("width")) {
                                            c = '\b';
                                            break;
                                        }
                                        break;
                                    case 545057773:
                                        if (e03.equals("frameRate")) {
                                            c = '\t';
                                            break;
                                        }
                                        break;
                                    case 1711222099:
                                        if (e03.equals("encoding")) {
                                            c = '\n';
                                            break;
                                        }
                                        break;
                                    case 2135109831:
                                        if (e03.equals("frameRateType")) {
                                            c = 11;
                                            break;
                                        }
                                        break;
                                }
                                while (objectReader.peek() == JsonToken.NAME) {
                                }
                            }
                            rRWebVideoEvent.z = concurrentHashMap2;
                            objectReader.i0();
                        }
                    }
                    rRWebVideoEvent.A = concurrentHashMap;
                    objectReader.i0();
                }
            }
            rRWebVideoEvent.y = hashMap;
            objectReader.i0();
            return rRWebVideoEvent;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public RRWebVideoEvent() {
        super(RRWebEventType.Custom);
        this.p = "h264";
        this.q = "mp4";
        this.u = "constant";
        this.l = "video";
    }

    @Override // io.sentry.rrweb.RRWebEvent
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RRWebVideoEvent.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        RRWebVideoEvent rRWebVideoEvent = (RRWebVideoEvent) obj;
        if (this.m == rRWebVideoEvent.m && this.n == rRWebVideoEvent.n && this.o == rRWebVideoEvent.o && this.r == rRWebVideoEvent.r && this.s == rRWebVideoEvent.s && this.t == rRWebVideoEvent.t && this.v == rRWebVideoEvent.v && this.w == rRWebVideoEvent.w && this.x == rRWebVideoEvent.x && Objects.a(this.l, rRWebVideoEvent.l) && Objects.a(this.p, rRWebVideoEvent.p) && Objects.a(this.q, rRWebVideoEvent.q) && Objects.a(this.u, rRWebVideoEvent.u)) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.rrweb.RRWebEvent
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(super.hashCode()), this.l, Integer.valueOf(this.m), Long.valueOf(this.n), Long.valueOf(this.o), this.p, this.q, Integer.valueOf(this.r), Integer.valueOf(this.s), Integer.valueOf(this.t), this.u, Integer.valueOf(this.v), Integer.valueOf(this.w), Integer.valueOf(this.x)});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        RRWebEvent.Serializer.a(this, jsonObjectWriter, iLogger);
        jsonObjectWriter.c("data");
        jsonObjectWriter.a();
        jsonObjectWriter.c("tag");
        jsonObjectWriter.j(this.l);
        jsonObjectWriter.c("payload");
        jsonObjectWriter.a();
        jsonObjectWriter.c("segmentId");
        jsonObjectWriter.f(this.m);
        jsonObjectWriter.c("size");
        jsonObjectWriter.f(this.n);
        jsonObjectWriter.c("duration");
        jsonObjectWriter.f(this.o);
        jsonObjectWriter.c("encoding");
        jsonObjectWriter.j(this.p);
        jsonObjectWriter.c("container");
        jsonObjectWriter.j(this.q);
        jsonObjectWriter.c("height");
        jsonObjectWriter.f(this.r);
        jsonObjectWriter.c("width");
        jsonObjectWriter.f(this.s);
        jsonObjectWriter.c("frameCount");
        jsonObjectWriter.f(this.t);
        jsonObjectWriter.c("frameRate");
        jsonObjectWriter.f(this.v);
        jsonObjectWriter.c("frameRateType");
        jsonObjectWriter.j(this.u);
        jsonObjectWriter.c("left");
        jsonObjectWriter.f(this.w);
        jsonObjectWriter.c("top");
        jsonObjectWriter.f(this.x);
        ConcurrentHashMap concurrentHashMap = this.z;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.z, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
        ConcurrentHashMap concurrentHashMap2 = this.A;
        if (concurrentHashMap2 != null) {
            for (String str2 : concurrentHashMap2.keySet()) {
                jb.o(this.A, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
        HashMap hashMap = this.y;
        if (hashMap != null) {
            for (String str3 : hashMap.keySet()) {
                jb.n(this.y, str3, jsonObjectWriter, str3, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
