package io.sentry.clientreport;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.q;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DiscardedEvent implements JsonSerializable {
    public final String j;
    public final String k;
    public final Long l;
    public HashMap m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<DiscardedEvent> {
        public static IllegalStateException b(String str, ILogger iLogger) {
            String i = q.i("Missing required field \"", str, "\"");
            IllegalStateException illegalStateException = new IllegalStateException(i);
            iLogger.b(SentryLevel.ERROR, i, illegalStateException);
            return illegalStateException;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x004d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0052 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0042 A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            String str = null;
            String str2 = null;
            Long l = null;
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1285004149:
                        if (e0.equals("quantity")) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                l = objectReader.F();
                                break;
                            case 1:
                                str = objectReader.L();
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                str2 = objectReader.L();
                                break;
                            default:
                                if (hashMap == null) {
                                    hashMap = new HashMap();
                                }
                                objectReader.D(iLogger, hashMap, e0);
                                break;
                        }
                    case -934964668:
                        if (e0.equals("reason")) {
                            c = 1;
                        }
                        switch (c) {
                        }
                        break;
                    case 50511102:
                        if (e0.equals("category")) {
                            c = 2;
                        }
                        switch (c) {
                        }
                        break;
                    default:
                        switch (c) {
                        }
                        break;
                }
            }
            objectReader.i0();
            if (str != null) {
                if (str2 != null) {
                    if (l != null) {
                        DiscardedEvent discardedEvent = new DiscardedEvent(str, str2, l);
                        discardedEvent.m = hashMap;
                        return discardedEvent;
                    }
                    throw b("quantity", iLogger);
                }
                throw b("category", iLogger);
            }
            throw b("reason", iLogger);
        }
    }

    public DiscardedEvent(String str, String str2, Long l) {
        this.j = str;
        this.k = str2;
        this.l = l;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("reason");
        jsonObjectWriter.j(this.j);
        jsonObjectWriter.c("category");
        jsonObjectWriter.j(this.k);
        jsonObjectWriter.c("quantity");
        jsonObjectWriter.i(this.l);
        HashMap hashMap = this.m;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.m, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }

    public final String toString() {
        return "DiscardedEvent{reason='" + this.j + "', category='" + this.k + "', quantity=" + this.l + '}';
    }
}
