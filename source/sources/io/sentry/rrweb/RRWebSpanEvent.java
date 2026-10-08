package io.sentry.rrweb;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.rrweb.RRWebEvent;
import io.sentry.vendor.gson.stream.JsonToken;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RRWebSpanEvent extends RRWebEvent implements JsonSerializable {
    public String l;
    public String m;
    public String n;
    public double o;
    public double p;
    public ConcurrentHashMap q;
    public HashMap r;
    public ConcurrentHashMap s;
    public ConcurrentHashMap t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<RRWebSpanEvent> {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00bb, code lost:
        
            switch(r8) {
                case 0: goto L89;
                case 1: goto L88;
                case 2: goto L87;
                case 3: goto L86;
                case 4: goto L85;
                default: goto L91;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00c9, code lost:
        
            r6 = io.sentry.util.CollectionUtils.a((java.util.Map) r9.G0());
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00d3, code lost:
        
            if (r6 == null) goto L93;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00d5, code lost:
        
            r0.q = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00d8, code lost:
        
            r0.m = r9.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00df, code lost:
        
            r0.o = r9.nextDouble();
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00e6, code lost:
        
            r0.p = r9.nextDouble();
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00ed, code lost:
        
            r0.n = r9.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00be, code lost:
        
            if (r5 != null) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00c0, code lost:
        
            r5 = new java.util.concurrent.ConcurrentHashMap();
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00c5, code lost:
        
            r9.D(r10, r5, r6);
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0077  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static RRWebSpanEvent b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            RRWebSpanEvent rRWebSpanEvent = new RRWebSpanEvent();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("data")) {
                    if (!RRWebEvent.Deserializer.a(rRWebSpanEvent, e0, objectReader, iLogger)) {
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
                        if (!e02.equals("payload")) {
                            if (!e02.equals("tag")) {
                                if (concurrentHashMap == null) {
                                    concurrentHashMap = new ConcurrentHashMap();
                                }
                                objectReader.D(iLogger, concurrentHashMap, e02);
                            } else {
                                String L = objectReader.L();
                                if (L == null) {
                                    L = "";
                                }
                                rRWebSpanEvent.l = L;
                            }
                        } else {
                            objectReader.H0();
                            ConcurrentHashMap concurrentHashMap2 = null;
                            while (objectReader.peek() == JsonToken.NAME) {
                                String e03 = objectReader.e0();
                                e03.getClass();
                                char c = 65535;
                                switch (e03.hashCode()) {
                                    case -1724546052:
                                        if (e03.equals("description")) {
                                            c = 0;
                                            break;
                                        }
                                        break;
                                    case -356088197:
                                        if (e03.equals("endTimestamp")) {
                                            c = 1;
                                            break;
                                        }
                                        break;
                                    case -299216172:
                                        if (e03.equals("startTimestamp")) {
                                            c = 2;
                                            break;
                                        }
                                        break;
                                    case 3553:
                                        if (e03.equals("op")) {
                                            c = 3;
                                            break;
                                        }
                                        break;
                                    case 3076010:
                                        if (e03.equals("data")) {
                                            c = 4;
                                            break;
                                        }
                                        break;
                                }
                                while (objectReader.peek() == JsonToken.NAME) {
                                }
                            }
                            rRWebSpanEvent.s = concurrentHashMap2;
                            objectReader.i0();
                        }
                    }
                    rRWebSpanEvent.t = concurrentHashMap;
                    objectReader.i0();
                }
            }
            rRWebSpanEvent.r = hashMap;
            objectReader.i0();
            return rRWebSpanEvent;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public RRWebSpanEvent() {
        super(RRWebEventType.Custom);
        this.l = "performanceSpan";
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
        if (this.m != null) {
            jsonObjectWriter.c("op");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("description");
            jsonObjectWriter.j(this.n);
        }
        jsonObjectWriter.c("startTimestamp");
        jsonObjectWriter.g(iLogger, BigDecimal.valueOf(this.o));
        jsonObjectWriter.c("endTimestamp");
        jsonObjectWriter.g(iLogger, BigDecimal.valueOf(this.p));
        if (this.q != null) {
            jsonObjectWriter.c("data");
            jsonObjectWriter.g(iLogger, this.q);
        }
        ConcurrentHashMap concurrentHashMap = this.s;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.s, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
        ConcurrentHashMap concurrentHashMap2 = this.t;
        if (concurrentHashMap2 != null) {
            for (String str2 : concurrentHashMap2.keySet()) {
                jb.o(this.t, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
        HashMap hashMap = this.r;
        if (hashMap != null) {
            for (String str3 : hashMap.keySet()) {
                jb.n(this.r, str3, jsonObjectWriter, str3, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
