package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.Request;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.User;
import io.sentry.util.CollectionUtils;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SentryBaseEvent {
    public SentryId j;
    public final Contexts k;
    public SdkVersion l;
    public Request m;
    public AbstractMap n;
    public String o;
    public String p;
    public String q;
    public User r;
    public transient ExceptionMechanismException s;
    public String t;
    public String u;
    public List v;
    public DebugMeta w;
    public AbstractMap x;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v1, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v16, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v22, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v26, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v7, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v9, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        public static boolean a(SentryBaseEvent sentryBaseEvent, String str, ObjectReader objectReader, ILogger iLogger) {
            char c = 65535;
            switch (str.hashCode()) {
                case -1840434063:
                    if (str.equals("debug_meta")) {
                        c = 0;
                        break;
                    }
                    break;
                case -758770169:
                    if (str.equals("server_name")) {
                        c = 1;
                        break;
                    }
                    break;
                case -567312220:
                    if (str.equals("contexts")) {
                        c = 2;
                        break;
                    }
                    break;
                case -85904877:
                    if (str.equals("environment")) {
                        c = 3;
                        break;
                    }
                    break;
                case -51457840:
                    if (str.equals("breadcrumbs")) {
                        c = 4;
                        break;
                    }
                    break;
                case 113722:
                    if (str.equals("sdk")) {
                        c = 5;
                        break;
                    }
                    break;
                case 3083686:
                    if (str.equals("dist")) {
                        c = 6;
                        break;
                    }
                    break;
                case 3552281:
                    if (str.equals("tags")) {
                        c = 7;
                        break;
                    }
                    break;
                case 3599307:
                    if (str.equals("user")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 96965648:
                    if (str.equals("extra")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 278118624:
                    if (str.equals("event_id")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1090594823:
                    if (str.equals("release")) {
                        c = 11;
                        break;
                    }
                    break;
                case 1095692943:
                    if (str.equals("request")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 1874684019:
                    if (str.equals("platform")) {
                        c = '\r';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    sentryBaseEvent.w = (DebugMeta) objectReader.z0(iLogger, new Object());
                    return true;
                case 1:
                    sentryBaseEvent.t = objectReader.L();
                    return true;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    sentryBaseEvent.k.l(Contexts.Deserializer.b(objectReader, iLogger));
                    return true;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    sentryBaseEvent.p = objectReader.L();
                    return true;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    sentryBaseEvent.v = objectReader.R0(iLogger, new Object());
                    return true;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    sentryBaseEvent.l = (SdkVersion) objectReader.z0(iLogger, new Object());
                    return true;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    sentryBaseEvent.u = objectReader.L();
                    return true;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    sentryBaseEvent.n = CollectionUtils.a((Map) objectReader.G0());
                    return true;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    sentryBaseEvent.r = (User) objectReader.z0(iLogger, new Object());
                    return true;
                case KeyModifiers.a /* 9 */:
                    sentryBaseEvent.x = CollectionUtils.a((Map) objectReader.G0());
                    return true;
                case KeyModifiers.b /* 10 */:
                    sentryBaseEvent.j = (SentryId) objectReader.z0(iLogger, new Object());
                    return true;
                case 11:
                    sentryBaseEvent.o = objectReader.L();
                    return true;
                case KeyModifiers.c /* 12 */:
                    sentryBaseEvent.m = (Request) objectReader.z0(iLogger, new Object());
                    return true;
                case '\r':
                    sentryBaseEvent.q = objectReader.L();
                    return true;
                default:
                    return false;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Serializer {
        public static void a(SentryBaseEvent sentryBaseEvent, JsonObjectWriter jsonObjectWriter, ILogger iLogger) {
            if (sentryBaseEvent.j != null) {
                jsonObjectWriter.c("event_id");
                jsonObjectWriter.g(iLogger, sentryBaseEvent.j);
            }
            jsonObjectWriter.c("contexts");
            jsonObjectWriter.g(iLogger, sentryBaseEvent.k);
            if (sentryBaseEvent.l != null) {
                jsonObjectWriter.c("sdk");
                jsonObjectWriter.g(iLogger, sentryBaseEvent.l);
            }
            if (sentryBaseEvent.m != null) {
                jsonObjectWriter.c("request");
                jsonObjectWriter.g(iLogger, sentryBaseEvent.m);
            }
            AbstractMap abstractMap = sentryBaseEvent.n;
            if (abstractMap != null && !abstractMap.isEmpty()) {
                jsonObjectWriter.c("tags");
                jsonObjectWriter.g(iLogger, sentryBaseEvent.n);
            }
            if (sentryBaseEvent.o != null) {
                jsonObjectWriter.c("release");
                jsonObjectWriter.j(sentryBaseEvent.o);
            }
            if (sentryBaseEvent.p != null) {
                jsonObjectWriter.c("environment");
                jsonObjectWriter.j(sentryBaseEvent.p);
            }
            if (sentryBaseEvent.q != null) {
                jsonObjectWriter.c("platform");
                jsonObjectWriter.j(sentryBaseEvent.q);
            }
            if (sentryBaseEvent.r != null) {
                jsonObjectWriter.c("user");
                jsonObjectWriter.g(iLogger, sentryBaseEvent.r);
            }
            if (sentryBaseEvent.t != null) {
                jsonObjectWriter.c("server_name");
                jsonObjectWriter.j(sentryBaseEvent.t);
            }
            if (sentryBaseEvent.u != null) {
                jsonObjectWriter.c("dist");
                jsonObjectWriter.j(sentryBaseEvent.u);
            }
            List list = sentryBaseEvent.v;
            if (list != null && !list.isEmpty()) {
                jsonObjectWriter.c("breadcrumbs");
                jsonObjectWriter.g(iLogger, sentryBaseEvent.v);
            }
            if (sentryBaseEvent.w != null) {
                jsonObjectWriter.c("debug_meta");
                jsonObjectWriter.g(iLogger, sentryBaseEvent.w);
            }
            AbstractMap abstractMap2 = sentryBaseEvent.x;
            if (abstractMap2 != null && !abstractMap2.isEmpty()) {
                jsonObjectWriter.c("extra");
                jsonObjectWriter.g(iLogger, sentryBaseEvent.x);
            }
        }
    }

    public SentryBaseEvent(SentryId sentryId) {
        this.k = new Contexts();
        this.j = sentryId;
    }

    public final Throwable a() {
        ExceptionMechanismException exceptionMechanismException = this.s;
        if (exceptionMechanismException != null) {
            return exceptionMechanismException.k;
        }
        return exceptionMechanismException;
    }

    public final void b(String str, String str2) {
        if (this.n == null) {
            this.n = new HashMap();
        }
        if (str != null) {
            AbstractMap abstractMap = this.n;
            if (str2 == null) {
                if (abstractMap != null) {
                    abstractMap.remove(str);
                    return;
                }
                return;
            }
            abstractMap.put(str, str2);
        }
    }

    public final void c(Map map) {
        HashMap hashMap;
        if (map != null) {
            hashMap = new HashMap(map);
        } else {
            hashMap = null;
        }
        this.n = hashMap;
    }

    public SentryBaseEvent() {
        this(new SentryId());
    }
}
