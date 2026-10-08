package io.sentry.protocol;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryOptions;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DebugMeta implements JsonSerializable {
    public SdkInfo j;
    public List k;
    public HashMap l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<DebugMeta> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v5, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v1, types: [io.sentry.protocol.DebugMeta, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ?? obj = new Object();
            objectReader.H0();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("images")) {
                    if (!e0.equals("sdk_info")) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    } else {
                        obj.j = (SdkInfo) objectReader.z0(iLogger, new Object());
                    }
                } else {
                    obj.k = objectReader.R0(iLogger, new Object());
                }
            }
            objectReader.i0();
            obj.l = hashMap;
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static DebugMeta a(DebugMeta debugMeta, SentryOptions sentryOptions) {
        ArrayList arrayList = new ArrayList();
        if (sentryOptions.getProguardUuid() != null) {
            DebugImage debugImage = new DebugImage();
            debugImage.setType(DebugImage.PROGUARD);
            debugImage.setUuid(sentryOptions.getProguardUuid());
            arrayList.add(debugImage);
        }
        for (String str : sentryOptions.getBundleIds()) {
            DebugImage debugImage2 = new DebugImage();
            debugImage2.setType(DebugImage.JVM);
            debugImage2.setDebugId(str);
            arrayList.add(debugImage2);
        }
        DebugMeta debugMeta2 = debugMeta;
        if (!arrayList.isEmpty()) {
            if (debugMeta == null) {
                debugMeta2 = new Object();
            }
            List list = debugMeta2.k;
            if (list == null) {
                debugMeta2.k = new ArrayList(arrayList);
                return debugMeta2;
            }
            list.addAll(arrayList);
            return debugMeta2;
        }
        return null;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("sdk_info");
            jsonObjectWriter.g(iLogger, this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("images");
            jsonObjectWriter.g(iLogger, this.k);
        }
        HashMap hashMap = this.l;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.l, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
