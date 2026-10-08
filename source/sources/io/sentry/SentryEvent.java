package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.SentryBaseEvent;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.Message;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryId;
import io.sentry.util.CollectionUtils;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryEvent extends SentryBaseEvent implements JsonSerializable {
    public String A;
    public SentryValues B;
    public SentryValues C;
    public SentryLevel D;
    public String E;
    public List F;
    public ConcurrentHashMap G;
    public AbstractMap H;
    public Date y;
    public Message z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryEvent> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v10, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v7, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v3, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v5, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            SentryEvent sentryEvent = new SentryEvent();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1375934236:
                        if (e0.equals("fingerprint")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1337936983:
                        if (e0.equals("threads")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1097337456:
                        if (e0.equals("logger")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 102865796:
                        if (e0.equals("level")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 954925063:
                        if (e0.equals("message")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1227433863:
                        if (e0.equals("modules")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1481625679:
                        if (e0.equals("exception")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 2141246174:
                        if (e0.equals("transaction")) {
                            c = '\b';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        List list = (List) objectReader.G0();
                        if (list == null) {
                            break;
                        } else {
                            sentryEvent.F = list;
                            break;
                        }
                    case 1:
                        objectReader.H0();
                        objectReader.e0();
                        sentryEvent.B = new SentryValues(objectReader.R0(iLogger, new Object()));
                        objectReader.i0();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        sentryEvent.A = objectReader.L();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        Date k0 = objectReader.k0(iLogger);
                        if (k0 == null) {
                            break;
                        } else {
                            sentryEvent.y = k0;
                            break;
                        }
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        sentryEvent.D = (SentryLevel) objectReader.z0(iLogger, new Object());
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        sentryEvent.z = (Message) objectReader.z0(iLogger, new Object());
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        sentryEvent.H = CollectionUtils.a((Map) objectReader.G0());
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        objectReader.H0();
                        objectReader.e0();
                        sentryEvent.C = new SentryValues(objectReader.R0(iLogger, new Object()));
                        objectReader.i0();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        sentryEvent.E = objectReader.L();
                        break;
                    default:
                        if (!SentryBaseEvent.Deserializer.a(sentryEvent, e0, objectReader, iLogger)) {
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            objectReader.D(iLogger, concurrentHashMap, e0);
                            break;
                        } else {
                            break;
                        }
                }
            }
            sentryEvent.G = concurrentHashMap;
            objectReader.i0();
            return sentryEvent;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SentryEvent() {
        super(r0);
        SentryId sentryId = new SentryId();
        Date b = DateUtils.b();
        this.y = b;
    }

    public final ArrayList d() {
        SentryValues sentryValues = this.C;
        if (sentryValues == null) {
            return null;
        }
        return sentryValues.a;
    }

    public final ArrayList e() {
        SentryValues sentryValues = this.B;
        if (sentryValues != null) {
            return sentryValues.a;
        }
        return null;
    }

    public final SentryException f() {
        Boolean bool;
        SentryValues sentryValues = this.C;
        if (sentryValues != null) {
            Iterator it = sentryValues.a.iterator();
            while (it.hasNext()) {
                SentryException sentryException = (SentryException) it.next();
                Mechanism mechanism = sentryException.o;
                if (mechanism != null && (bool = mechanism.m) != null && !bool.booleanValue()) {
                    return sentryException;
                }
            }
            return null;
        }
        return null;
    }

    public final boolean g() {
        SentryValues sentryValues = this.C;
        if (sentryValues != null && !sentryValues.a.isEmpty()) {
            return true;
        }
        return false;
    }

    public final void h(ArrayList arrayList) {
        this.C = new SentryValues(arrayList);
    }

    public final void i(List list) {
        ArrayList arrayList;
        if (list != null) {
            arrayList = new ArrayList(list);
        } else {
            arrayList = null;
        }
        this.F = arrayList;
    }

    public final void j(List list) {
        this.B = new SentryValues(list);
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, this.y);
        if (this.z != null) {
            jsonObjectWriter.c("message");
            jsonObjectWriter.g(iLogger, this.z);
        }
        if (this.A != null) {
            jsonObjectWriter.c("logger");
            jsonObjectWriter.j(this.A);
        }
        SentryValues sentryValues = this.B;
        if (sentryValues != null && !sentryValues.a.isEmpty()) {
            jsonObjectWriter.c("threads");
            jsonObjectWriter.a();
            jsonObjectWriter.c("values");
            jsonObjectWriter.g(iLogger, this.B.a);
            jsonObjectWriter.b();
        }
        SentryValues sentryValues2 = this.C;
        if (sentryValues2 != null && !sentryValues2.a.isEmpty()) {
            jsonObjectWriter.c("exception");
            jsonObjectWriter.a();
            jsonObjectWriter.c("values");
            jsonObjectWriter.g(iLogger, this.C.a);
            jsonObjectWriter.b();
        }
        if (this.D != null) {
            jsonObjectWriter.c("level");
            jsonObjectWriter.g(iLogger, this.D);
        }
        if (this.E != null) {
            jsonObjectWriter.c("transaction");
            jsonObjectWriter.j(this.E);
        }
        if (this.F != null) {
            jsonObjectWriter.c("fingerprint");
            jsonObjectWriter.g(iLogger, this.F);
        }
        if (this.H != null) {
            jsonObjectWriter.c("modules");
            jsonObjectWriter.g(iLogger, this.H);
        }
        SentryBaseEvent.Serializer.a(this, jsonObjectWriter, iLogger);
        ConcurrentHashMap concurrentHashMap = this.G;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.G, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }

    public SentryEvent(ExceptionMechanismException exceptionMechanismException) {
        this();
        this.s = exceptionMechanismException;
    }
}
