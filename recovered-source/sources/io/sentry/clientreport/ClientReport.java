package io.sentry.clientreport;

import defpackage.jb;
import defpackage.q;
import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ClientReport implements JsonSerializable {
    public final Date j;
    public final ArrayList k;
    public HashMap l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ClientReport> {
        public static IllegalStateException b(String str, ILogger iLogger) {
            String i = q.i("Missing required field \"", str, "\"");
            IllegalStateException illegalStateException = new IllegalStateException(i);
            iLogger.b(SentryLevel.ERROR, i, illegalStateException);
            return illegalStateException;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ArrayList arrayList = new ArrayList();
            objectReader.H0();
            Date date = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                if (!e0.equals("discarded_events")) {
                    if (!e0.equals("timestamp")) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                    } else {
                        date = objectReader.k0(iLogger);
                    }
                } else {
                    arrayList.addAll(objectReader.R0(iLogger, new Object()));
                }
            }
            objectReader.i0();
            if (date != null) {
                if (!arrayList.isEmpty()) {
                    ClientReport clientReport = new ClientReport(date, arrayList);
                    clientReport.l = hashMap;
                    return clientReport;
                }
                throw b("discarded_events", iLogger);
            }
            throw b("timestamp", iLogger);
        }
    }

    public ClientReport(Date date, ArrayList arrayList) {
        this.j = date;
        this.k = arrayList;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.j(DateUtils.f(this.j));
        jsonObjectWriter.c("discarded_events");
        jsonObjectWriter.g(iLogger, this.k);
        HashMap hashMap = this.l;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.l, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
