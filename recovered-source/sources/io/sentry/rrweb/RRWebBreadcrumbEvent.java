package io.sentry.rrweb;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.rrweb.RRWebEvent;
import io.sentry.vendor.gson.stream.JsonToken;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RRWebBreadcrumbEvent extends RRWebEvent implements JsonSerializable {
    public String l;
    public double m;
    public String n;
    public String o;
    public String p;
    public SentryLevel q;
    public ConcurrentHashMap r;
    public HashMap s;
    public ConcurrentHashMap t;
    public ConcurrentHashMap u;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<RRWebBreadcrumbEvent> {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
        
            switch(r9) {
                case 0: goto L98;
                case 1: goto L97;
                case 2: goto L96;
                case 3: goto L95;
                case 4: goto L75;
                case 5: goto L94;
                default: goto L100;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00dc, code lost:
        
            r0.q = io.sentry.SentryLevel.valueOf(r10.r().toUpperCase(java.util.Locale.ROOT));
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00ed, code lost:
        
            r6 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00ee, code lost:
        
            r11.a(io.sentry.SentryLevel.DEBUG, r6, "Error when deserializing SentryLevel", new java.lang.Object[0]);
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00d5, code lost:
        
            r0.p = r10.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00f9, code lost:
        
            r0.m = r10.nextDouble();
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0101, code lost:
        
            r0.o = r10.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0109, code lost:
        
            r0.n = r10.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0111, code lost:
        
            r6 = io.sentry.util.CollectionUtils.a((java.util.Map) r10.G0());
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x011b, code lost:
        
            if (r6 == null) goto L109;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x011d, code lost:
        
            r0.r = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00ca, code lost:
        
            if (r5 != null) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00cc, code lost:
        
            r5 = new java.util.concurrent.ConcurrentHashMap();
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00d1, code lost:
        
            r10.D(r11, r5, r6);
         */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0077  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static RRWebBreadcrumbEvent b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            RRWebBreadcrumbEvent rRWebBreadcrumbEvent = new RRWebBreadcrumbEvent();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("data")) {
                    if (!RRWebEvent.Deserializer.a(rRWebBreadcrumbEvent, e0, objectReader, iLogger)) {
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
                                rRWebBreadcrumbEvent.l = L;
                            }
                        } else {
                            objectReader.H0();
                            ConcurrentHashMap concurrentHashMap2 = null;
                            while (objectReader.peek() == JsonToken.NAME) {
                                String e03 = objectReader.e0();
                                e03.getClass();
                                char c = 65535;
                                switch (e03.hashCode()) {
                                    case 3076010:
                                        if (e03.equals("data")) {
                                            c = 0;
                                            break;
                                        }
                                        break;
                                    case 3575610:
                                        if (e03.equals("type")) {
                                            c = 1;
                                            break;
                                        }
                                        break;
                                    case 50511102:
                                        if (e03.equals("category")) {
                                            c = 2;
                                            break;
                                        }
                                        break;
                                    case 55126294:
                                        if (e03.equals("timestamp")) {
                                            c = 3;
                                            break;
                                        }
                                        break;
                                    case 102865796:
                                        if (e03.equals("level")) {
                                            c = 4;
                                            break;
                                        }
                                        break;
                                    case 954925063:
                                        if (e03.equals("message")) {
                                            c = 5;
                                            break;
                                        }
                                        break;
                                }
                                while (objectReader.peek() == JsonToken.NAME) {
                                }
                            }
                            rRWebBreadcrumbEvent.t = concurrentHashMap2;
                            objectReader.i0();
                        }
                    }
                    rRWebBreadcrumbEvent.u = concurrentHashMap;
                    objectReader.i0();
                }
            }
            rRWebBreadcrumbEvent.s = hashMap;
            objectReader.i0();
            return rRWebBreadcrumbEvent;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public RRWebBreadcrumbEvent() {
        super(RRWebEventType.Custom);
        this.l = "breadcrumb";
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
        if (this.n != null) {
            jsonObjectWriter.c("type");
            jsonObjectWriter.j(this.n);
        }
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, BigDecimal.valueOf(this.m));
        if (this.o != null) {
            jsonObjectWriter.c("category");
            jsonObjectWriter.j(this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("message");
            jsonObjectWriter.j(this.p);
        }
        if (this.q != null) {
            jsonObjectWriter.c("level");
            jsonObjectWriter.g(iLogger, this.q);
        }
        if (this.r != null) {
            jsonObjectWriter.c("data");
            jsonObjectWriter.g(iLogger, this.r);
        }
        ConcurrentHashMap concurrentHashMap = this.t;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.t, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
        ConcurrentHashMap concurrentHashMap2 = this.u;
        if (concurrentHashMap2 != null) {
            for (String str2 : concurrentHashMap2.keySet()) {
                jb.o(this.u, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
        HashMap hashMap = this.s;
        if (hashMap != null) {
            for (String str3 : hashMap.keySet()) {
                jb.n(this.s, str3, jsonObjectWriter, str3, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
