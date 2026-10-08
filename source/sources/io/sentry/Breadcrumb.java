package io.sentry;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.u2;
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Breadcrumb implements JsonSerializable, Comparable<Breadcrumb> {
    public final Long j;
    public Date k;
    public final Long l;
    public String m;
    public String n;
    public ConcurrentHashMap o;
    public String p;
    public String q;
    public SentryLevel r;
    public ConcurrentHashMap s;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Breadcrumb> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0027. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            objectReader.H0();
            Date b = DateUtils.b();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            SentryLevel sentryLevel = null;
            ConcurrentHashMap concurrentHashMap2 = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1008619738:
                        if (e0.equals("origin")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 3076010:
                        if (e0.equals("data")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (e0.equals("type")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 50511102:
                        if (e0.equals("category")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 55126294:
                        if (e0.equals("timestamp")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 102865796:
                        if (e0.equals("level")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 954925063:
                        if (e0.equals("message")) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        str4 = objectReader.L();
                        break;
                    case 1:
                        ConcurrentHashMap a = CollectionUtils.a((Map) objectReader.G0());
                        if (a == null) {
                            break;
                        } else {
                            concurrentHashMap = a;
                            break;
                        }
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        str2 = objectReader.L();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        str3 = objectReader.L();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        Date k0 = objectReader.k0(iLogger);
                        if (k0 == null) {
                            break;
                        } else {
                            b = k0;
                            break;
                        }
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        try {
                            sentryLevel = SentryLevel.valueOf(objectReader.r().toUpperCase(Locale.ROOT));
                            break;
                        } catch (Exception e) {
                            iLogger.a(SentryLevel.ERROR, e, "Error when deserializing SentryLevel", new Object[0]);
                            break;
                        }
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        str = objectReader.L();
                        break;
                    default:
                        if (concurrentHashMap2 == null) {
                            concurrentHashMap2 = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap2, e0);
                        break;
                }
            }
            Breadcrumb breadcrumb = new Breadcrumb(b);
            breadcrumb.m = str;
            breadcrumb.n = str2;
            breadcrumb.o = concurrentHashMap;
            breadcrumb.p = str3;
            breadcrumb.q = str4;
            breadcrumb.r = sentryLevel;
            breadcrumb.s = concurrentHashMap2;
            objectReader.i0();
            return breadcrumb;
        }
    }

    public Breadcrumb(Breadcrumb breadcrumb) {
        this.o = new ConcurrentHashMap();
        this.l = Long.valueOf(System.nanoTime());
        this.k = breadcrumb.k;
        this.j = breadcrumb.j;
        this.m = breadcrumb.m;
        this.n = breadcrumb.n;
        this.p = breadcrumb.p;
        this.q = breadcrumb.q;
        ConcurrentHashMap a = CollectionUtils.a(breadcrumb.o);
        if (a != null) {
            this.o = a;
        }
        this.s = CollectionUtils.a(breadcrumb.s);
        this.r = breadcrumb.r;
    }

    public static boolean a(Breadcrumb breadcrumb, Breadcrumb breadcrumb2) {
        if (breadcrumb.b().getTime() == breadcrumb2.b().getTime() && Objects.a(breadcrumb.m, breadcrumb2.m) && Objects.a(breadcrumb.n, breadcrumb2.n) && Objects.a(breadcrumb.p, breadcrumb2.p) && Objects.a(breadcrumb.q, breadcrumb2.q) && breadcrumb.r == breadcrumb2.r) {
            return true;
        }
        return false;
    }

    public final Date b() {
        Date date = this.k;
        if (date != null) {
            return (Date) date.clone();
        }
        Long l = this.j;
        if (l != null) {
            Date c = DateUtils.c(l.longValue());
            this.k = c;
            return c;
        }
        u2.l("No timestamp set for breadcrumb");
        return null;
    }

    public final void c(Object obj, String str) {
        if (str == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.o;
        if (obj == null) {
            concurrentHashMap.remove(str);
        } else {
            concurrentHashMap.put(str, obj);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Breadcrumb breadcrumb) {
        return this.l.compareTo(breadcrumb.l);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && Breadcrumb.class == obj.getClass()) {
                Breadcrumb breadcrumb = (Breadcrumb) obj;
                if ("http".equals(this.n)) {
                    if (a(this, breadcrumb) && Objects.a(this.o.get("status_code"), breadcrumb.o.get("status_code")) && Objects.a(this.o.get("url"), breadcrumb.o.get("url")) && Objects.a(this.o.get("method"), breadcrumb.o.get("method")) && Objects.a(this.o.get("http.fragment"), breadcrumb.o.get("http.fragment")) && Objects.a(this.o.get("http.query"), breadcrumb.o.get("http.query"))) {
                        return true;
                    }
                    return false;
                }
                return a(this, breadcrumb);
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        if ("http".equals(this.n)) {
            return Arrays.hashCode(new Object[]{Long.valueOf(b().getTime()), this.m, this.n, this.p, this.q, this.r, this.o.get("status_code"), this.o.get("url"), this.o.get("method"), this.o.get("http.fragment"), this.o.get("http.query")});
        }
        return Arrays.hashCode(new Object[]{Long.valueOf(b().getTime()), this.m, this.n, this.p, this.q, this.r});
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        jsonObjectWriter.c("timestamp");
        jsonObjectWriter.g(iLogger, b());
        if (this.m != null) {
            jsonObjectWriter.c("message");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("type");
            jsonObjectWriter.j(this.n);
        }
        jsonObjectWriter.c("data");
        jsonObjectWriter.g(iLogger, this.o);
        if (this.p != null) {
            jsonObjectWriter.c("category");
            jsonObjectWriter.j(this.p);
        }
        if (this.q != null) {
            jsonObjectWriter.c("origin");
            jsonObjectWriter.j(this.q);
        }
        if (this.r != null) {
            jsonObjectWriter.c("level");
            jsonObjectWriter.g(iLogger, this.r);
        }
        ConcurrentHashMap concurrentHashMap = this.s;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.s, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }

    public Breadcrumb(long j) {
        this.o = new ConcurrentHashMap();
        this.l = Long.valueOf(System.nanoTime());
        this.j = Long.valueOf(j);
        this.k = null;
    }

    public Breadcrumb(Date date) {
        this.o = new ConcurrentHashMap();
        this.l = Long.valueOf(System.nanoTime());
        this.k = date;
        this.j = null;
    }

    public Breadcrumb() {
        this(System.currentTimeMillis());
    }
}
