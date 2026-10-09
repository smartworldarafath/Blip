package io.sentry.rrweb;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.rrweb.RRWebEvent;
import io.sentry.rrweb.RRWebIncrementalSnapshotEvent;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RRWebInteractionEvent extends RRWebIncrementalSnapshotEvent implements JsonSerializable {
    public InteractionType m;
    public int n;
    public float o;
    public float p;
    public int q;
    public int r;
    public HashMap s;
    public HashMap t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<RRWebInteractionEvent> {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x008f, code lost:
        
            switch(r6) {
                case 0: goto L71;
                case 1: goto L70;
                case 2: goto L69;
                case 3: goto L68;
                case 4: goto L67;
                case 5: goto L66;
                default: goto L75;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00b9, code lost:
        
            r0.r = r7.nextInt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00c1, code lost:
        
            r0.q = r7.nextInt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00c9, code lost:
        
            r0.m = (io.sentry.rrweb.RRWebInteractionEvent.InteractionType) r7.z0(r8, new java.lang.Object());
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00d8, code lost:
        
            r0.n = r7.nextInt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00e0, code lost:
        
            r0.p = r7.nextFloat();
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00e8, code lost:
        
            r0.o = r7.nextFloat();
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0098, code lost:
        
            if (r4.equals("source") == false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00ad, code lost:
        
            if (r3 != null) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00af, code lost:
        
            r3 = new java.util.HashMap();
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00b4, code lost:
        
            r7.D(r8, r3, r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x009a, code lost:
        
            r4 = (io.sentry.rrweb.RRWebIncrementalSnapshotEvent.IncrementalSource) r7.z0(r8, new java.lang.Object());
            io.sentry.util.Objects.b(r4, "");
            r0.l = r4;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x003e  */
        /* JADX WARN: Type inference failed for: r4v12, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v6, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static RRWebInteractionEvent b(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            RRWebInteractionEvent rRWebInteractionEvent = new RRWebInteractionEvent();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("data")) {
                    if (!RRWebEvent.Deserializer.a(rRWebInteractionEvent, e0, objectReader, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    }
                } else {
                    objectReader.H0();
                    HashMap hashMap2 = null;
                    while (objectReader.peek() == JsonToken.NAME) {
                        String e02 = objectReader.e0();
                        e02.getClass();
                        char c = 65535;
                        switch (e02.hashCode()) {
                            case 120:
                                if (e02.equals("x")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 121:
                                if (e02.equals("y")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 3355:
                                if (e02.equals("id")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case 3575610:
                                if (e02.equals("type")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 768858903:
                                if (e02.equals("pointerType")) {
                                    c = 4;
                                    break;
                                }
                                break;
                            case 1565043768:
                                if (e02.equals("pointerId")) {
                                    c = 5;
                                    break;
                                }
                                break;
                        }
                        while (objectReader.peek() == JsonToken.NAME) {
                        }
                    }
                    rRWebInteractionEvent.t = hashMap2;
                    objectReader.i0();
                }
            }
            rRWebInteractionEvent.s = hashMap;
            objectReader.i0();
            return rRWebInteractionEvent;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum InteractionType implements JsonSerializable {
        MouseUp,
        MouseDown,
        Click,
        ContextMenu,
        DblClick,
        Focus,
        Blur,
        TouchStart,
        TouchMove_Departed,
        TouchEnd,
        TouchCancel;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Deserializer implements JsonDeserializer<InteractionType> {
            @Override // io.sentry.JsonDeserializer
            public final Object a(ObjectReader objectReader, ILogger iLogger) {
                return InteractionType.values()[objectReader.nextInt()];
            }
        }

        @Override // io.sentry.JsonSerializable
        public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
            ((JsonObjectWriter) objectWriter).f(ordinal());
        }
    }

    public RRWebInteractionEvent() {
        super(RRWebIncrementalSnapshotEvent.IncrementalSource.MouseInteraction);
        this.q = 2;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        RRWebEvent.Serializer.a(this, jsonObjectWriter, iLogger);
        jsonObjectWriter.c("data");
        jsonObjectWriter.a();
        jsonObjectWriter.c("source");
        jsonObjectWriter.g(iLogger, this.l);
        jsonObjectWriter.c("type");
        jsonObjectWriter.g(iLogger, this.m);
        jsonObjectWriter.c("id");
        jsonObjectWriter.f(this.n);
        jsonObjectWriter.c("x");
        jsonObjectWriter.e(this.o);
        jsonObjectWriter.c("y");
        jsonObjectWriter.e(this.p);
        jsonObjectWriter.c("pointerType");
        jsonObjectWriter.f(this.q);
        jsonObjectWriter.c("pointerId");
        jsonObjectWriter.f(this.r);
        HashMap hashMap = this.t;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.t, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
        HashMap hashMap2 = this.s;
        if (hashMap2 != null) {
            for (String str2 : hashMap2.keySet()) {
                jb.n(this.s, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
