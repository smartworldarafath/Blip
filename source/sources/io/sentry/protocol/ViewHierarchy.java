package io.sentry.protocol;

import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewHierarchy implements JsonSerializable {
    public final String j;
    public final List k;
    public HashMap l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ViewHierarchy> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            String str = null;
            ArrayList arrayList = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("rendering_system")) {
                    if (!e0.equals("windows")) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    } else {
                        arrayList = objectReader.R0(iLogger, new Object());
                    }
                } else {
                    str = objectReader.L();
                }
            }
            objectReader.i0();
            ViewHierarchy viewHierarchy = new ViewHierarchy(str, arrayList);
            viewHierarchy.l = hashMap;
            return viewHierarchy;
        }
    }

    public ViewHierarchy(String str, List list) {
        this.j = str;
        this.k = list;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        String str = this.j;
        if (str != null) {
            jsonObjectWriter.c("rendering_system");
            jsonObjectWriter.j(str);
        }
        List list = this.k;
        if (list != null) {
            jsonObjectWriter.c("windows");
            jsonObjectWriter.g(iLogger, list);
        }
        HashMap hashMap = this.l;
        if (hashMap != null) {
            for (String str2 : hashMap.keySet()) {
                jb.n(this.l, str2, jsonObjectWriter, str2, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
