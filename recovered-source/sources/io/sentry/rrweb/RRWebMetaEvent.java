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
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RRWebMetaEvent extends RRWebEvent implements JsonSerializable {
    public String l;
    public int m;
    public int n;
    public HashMap o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<RRWebMetaEvent> {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
        
            switch(r7) {
                case 0: goto L61;
                case 1: goto L60;
                case 2: goto L59;
                default: goto L63;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x007d, code lost:
        
            r4 = r8.y();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0081, code lost:
        
            if (r4 != null) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0084, code lost:
        
            r6 = r4.intValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0088, code lost:
        
            r0.n = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
        
            r4 = r8.L();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
        
            if (r4 != null) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0091, code lost:
        
            r4 = "";
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0093, code lost:
        
            r0.l = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0096, code lost:
        
            r4 = r8.y();
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x009a, code lost:
        
            if (r4 != null) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x009d, code lost:
        
            r6 = r4.intValue();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00a1, code lost:
        
            r0.m = r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0072, code lost:
        
            if (r3 != null) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0074, code lost:
        
            r3 = new java.util.concurrent.ConcurrentHashMap();
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0079, code lost:
        
            r8.D(r9, r3, r4);
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x003e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static RRWebMetaEvent b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            RRWebMetaEvent rRWebMetaEvent = new RRWebMetaEvent();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("data")) {
                    if (!RRWebEvent.Deserializer.a(rRWebMetaEvent, e0, objectReader, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    }
                } else {
                    objectReader.H0();
                    AbstractMap abstractMap = null;
                    while (objectReader.peek() == JsonToken.NAME) {
                        String e02 = objectReader.e0();
                        e02.getClass();
                        int i = 0;
                        char c = 65535;
                        switch (e02.hashCode()) {
                            case -1221029593:
                                if (e02.equals("height")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 3211051:
                                if (e02.equals("href")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 113126854:
                                if (e02.equals("width")) {
                                    c = 2;
                                    break;
                                }
                                break;
                        }
                        while (objectReader.peek() == JsonToken.NAME) {
                        }
                    }
                    objectReader.i0();
                }
            }
            rRWebMetaEvent.o = hashMap;
            objectReader.i0();
            return rRWebMetaEvent;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    public RRWebMetaEvent() {
        super(RRWebEventType.Meta);
        this.l = "";
    }

    @Override // io.sentry.rrweb.RRWebEvent
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RRWebMetaEvent.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        RRWebMetaEvent rRWebMetaEvent = (RRWebMetaEvent) obj;
        if (this.m == rRWebMetaEvent.m && this.n == rRWebMetaEvent.n && Objects.a(this.l, rRWebMetaEvent.l)) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.rrweb.RRWebEvent
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(super.hashCode()), this.l, Integer.valueOf(this.m), Integer.valueOf(this.n)});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        RRWebEvent.Serializer.a(this, jsonObjectWriter, iLogger);
        jsonObjectWriter.c("data");
        jsonObjectWriter.a();
        jsonObjectWriter.c("href");
        jsonObjectWriter.j(this.l);
        jsonObjectWriter.c("height");
        jsonObjectWriter.f(this.m);
        jsonObjectWriter.c("width");
        jsonObjectWriter.f(this.n);
        HashMap hashMap = this.o;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.o, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
        jsonObjectWriter.b();
    }
}
