package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.q;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.StringUtils;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Session implements JsonSerializable {
    public final Date j;
    public Date k;
    public final AtomicInteger l;
    public final String m;
    public final String n;
    public Boolean o;
    public State p;
    public Long q;
    public Double r;
    public final String s;
    public String t;
    public final String u;
    public final String v;
    public String w;
    public final AutoClosableReentrantLock x = new ReentrantLock();
    public ConcurrentHashMap y;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Session> {
        public static IllegalStateException b(String str, ILogger iLogger) {
            String i = q.i("Missing required field \"", str, "\"");
            IllegalStateException illegalStateException = new IllegalStateException(i);
            iLogger.b(SentryLevel.ERROR, i, illegalStateException);
            return illegalStateException;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:7:0x00c7. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            char c;
            boolean z;
            objectReader.H0();
            Integer num = null;
            ConcurrentHashMap concurrentHashMap = null;
            State state = null;
            Date date = null;
            Date date2 = null;
            String str = null;
            String str2 = null;
            Boolean bool = null;
            Long l = null;
            Double d = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            while (true) {
                Integer num2 = num;
                ConcurrentHashMap concurrentHashMap2 = concurrentHashMap;
                State state2 = state;
                Date date3 = date;
                Date date4 = date2;
                if (objectReader.peek() == JsonToken.NAME) {
                    String e0 = objectReader.e0();
                    e0.getClass();
                    switch (e0.hashCode()) {
                        case -1992012396:
                            if (e0.equals("duration")) {
                                c = 0;
                                break;
                            }
                            break;
                        case -1897185151:
                            if (e0.equals("started")) {
                                c = 1;
                                break;
                            }
                            break;
                        case -1294635157:
                            if (e0.equals("errors")) {
                                c = 2;
                                break;
                            }
                            break;
                        case -892481550:
                            if (e0.equals("status")) {
                                c = 3;
                                break;
                            }
                            break;
                        case 99455:
                            if (e0.equals("did")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 113759:
                            if (e0.equals("seq")) {
                                c = 5;
                                break;
                            }
                            break;
                        case 113870:
                            if (e0.equals("sid")) {
                                c = 6;
                                break;
                            }
                            break;
                        case 3237136:
                            if (e0.equals("init")) {
                                c = 7;
                                break;
                            }
                            break;
                        case 55126294:
                            if (e0.equals("timestamp")) {
                                c = '\b';
                                break;
                            }
                            break;
                        case 93152418:
                            if (e0.equals("attrs")) {
                                c = '\t';
                                break;
                            }
                            break;
                        case 213717026:
                            if (e0.equals("abnormal_mechanism")) {
                                c = '\n';
                                break;
                            }
                            break;
                    }
                    c = 65535;
                    switch (c) {
                        case 0:
                            d = objectReader.c0();
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date = date3;
                            date2 = date4;
                            num = num2;
                            break;
                        case 1:
                            date = objectReader.k0(iLogger);
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date2 = date4;
                            num = num2;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            num = objectReader.y();
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date = date3;
                            date2 = date4;
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            String a = StringUtils.a(objectReader.L());
                            if (a == null) {
                                num = num2;
                                concurrentHashMap = concurrentHashMap2;
                                state = state2;
                                date = date3;
                                date2 = date4;
                                break;
                            } else {
                                state = State.valueOf(a);
                                concurrentHashMap = concurrentHashMap2;
                                date = date3;
                                date2 = date4;
                                num = num2;
                                break;
                            }
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            str = objectReader.L();
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date = date3;
                            date2 = date4;
                            num = num2;
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            l = objectReader.F();
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date = date3;
                            date2 = date4;
                            num = num2;
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            String L = objectReader.L();
                            if (L != null && (L.length() == 36 || L.length() == 32)) {
                                str2 = L;
                                concurrentHashMap = concurrentHashMap2;
                                state = state2;
                                date = date3;
                                date2 = date4;
                                num = num2;
                                break;
                            } else {
                                iLogger.c(SentryLevel.ERROR, "%s sid is not valid.", L);
                                num = num2;
                                concurrentHashMap = concurrentHashMap2;
                                state = state2;
                                date = date3;
                                date2 = date4;
                                break;
                            }
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            bool = objectReader.n0();
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date = date3;
                            date2 = date4;
                            num = num2;
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            date2 = objectReader.k0(iLogger);
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date = date3;
                            num = num2;
                            break;
                        case KeyModifiers.a /* 9 */:
                            objectReader.H0();
                            while (objectReader.peek() == JsonToken.NAME) {
                                String e02 = objectReader.e0();
                                e02.getClass();
                                switch (e02.hashCode()) {
                                    case -85904877:
                                        if (e02.equals("environment")) {
                                            z = false;
                                            break;
                                        }
                                        break;
                                    case 1090594823:
                                        if (e02.equals("release")) {
                                            z = true;
                                            break;
                                        }
                                        break;
                                    case 1480014044:
                                        if (e02.equals("ip_address")) {
                                            z = 2;
                                            break;
                                        }
                                        break;
                                    case 1917799825:
                                        if (e02.equals("user_agent")) {
                                            z = 3;
                                            break;
                                        }
                                        break;
                                }
                                z = -1;
                                switch (z) {
                                    case false:
                                        str5 = objectReader.L();
                                        break;
                                    case true:
                                        str6 = objectReader.L();
                                        break;
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                        str3 = objectReader.L();
                                        break;
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                        str4 = objectReader.L();
                                        break;
                                    default:
                                        objectReader.x();
                                        break;
                                }
                            }
                            objectReader.i0();
                            num = num2;
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date = date3;
                            date2 = date4;
                            break;
                        case KeyModifiers.b /* 10 */:
                            str7 = objectReader.L();
                            concurrentHashMap = concurrentHashMap2;
                            state = state2;
                            date = date3;
                            date2 = date4;
                            num = num2;
                            break;
                        default:
                            if (concurrentHashMap2 == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            } else {
                                concurrentHashMap = concurrentHashMap2;
                            }
                            objectReader.D(iLogger, concurrentHashMap, e0);
                            num = num2;
                            state = state2;
                            date = date3;
                            date2 = date4;
                            break;
                    }
                } else {
                    if (state2 != null) {
                        if (date3 != null) {
                            if (num2 != null) {
                                if (str6 != null) {
                                    Session session = new Session(state2, date3, date4, num2.intValue(), str, str2, bool, l, d, str3, str4, str5, str6, str7);
                                    session.y = concurrentHashMap2;
                                    objectReader.i0();
                                    return session;
                                }
                                throw b("release", iLogger);
                            }
                            throw b("errors", iLogger);
                        }
                        throw b("started", iLogger);
                    }
                    throw b("status", iLogger);
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum State {
        Ok,
        Exited,
        Crashed,
        Abnormal
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public Session(State state, Date date, Date date2, int i, String str, String str2, Boolean bool, Long l, Double d, String str3, String str4, String str5, String str6, String str7) {
        this.p = state;
        this.j = date;
        this.k = date2;
        this.l = new AtomicInteger(i);
        this.m = str;
        this.n = str2;
        this.o = bool;
        this.q = l;
        this.r = d;
        this.s = str3;
        this.t = str4;
        this.u = str5;
        this.v = str6;
        this.w = str7;
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Session clone() {
        return new Session(this.p, this.j, this.k, this.l.get(), this.m, this.n, this.o, this.q, this.r, this.s, this.t, this.u, this.v, this.w);
    }

    public final void b(Date date) {
        ISentryLifecycleToken a = this.x.a();
        try {
            this.o = null;
            if (this.p == State.Ok) {
                this.p = State.Exited;
            }
            if (date != null) {
                this.k = date;
            } else {
                this.k = DateUtils.b();
            }
            if (this.k != null) {
                this.r = Double.valueOf(Math.abs(r6.getTime() - this.j.getTime()) / 1000.0d);
                long time = this.k.getTime();
                if (time < 0) {
                    time = Math.abs(time);
                }
                this.q = Long.valueOf(time);
            }
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final Date c() {
        Date date = this.j;
        if (date == null) {
            return null;
        }
        return (Date) date.clone();
    }

    public final boolean d(State state, String str, boolean z, String str2) {
        boolean z2;
        ISentryLifecycleToken a = this.x.a();
        boolean z3 = true;
        if (state != null) {
            try {
                this.p = state;
                z2 = true;
            } catch (Throwable th) {
                try {
                    a.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } else {
            z2 = false;
        }
        if (str != null) {
            this.t = str;
            z2 = true;
        }
        if (z) {
            this.l.addAndGet(1);
            z2 = true;
        }
        if (str2 != null) {
            this.w = str2;
        } else {
            z3 = z2;
        }
        if (z3) {
            this.o = null;
            Date b = DateUtils.b();
            this.k = b;
            if (b != null) {
                long time = b.getTime();
                if (time < 0) {
                    time = Math.abs(time);
                }
                this.q = Long.valueOf(time);
            }
        }
        a.close();
        return z3;
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        String str = this.n;
        if (str != null) {
            jsonObjectWriter.c("sid");
            jsonObjectWriter.j(str);
        }
        String str2 = this.m;
        if (str2 != null) {
            jsonObjectWriter.c("did");
            jsonObjectWriter.j(str2);
        }
        if (this.o != null) {
            jsonObjectWriter.c("init");
            jsonObjectWriter.h(this.o);
        }
        jsonObjectWriter.c("started");
        jsonObjectWriter.g(iLogger, this.j);
        jsonObjectWriter.c("status");
        jsonObjectWriter.g(iLogger, this.p.name().toLowerCase(Locale.ROOT));
        if (this.q != null) {
            jsonObjectWriter.c("seq");
            jsonObjectWriter.i(this.q);
        }
        jsonObjectWriter.c("errors");
        jsonObjectWriter.f(this.l.intValue());
        if (this.r != null) {
            jsonObjectWriter.c("duration");
            jsonObjectWriter.i(this.r);
        }
        if (this.k != null) {
            jsonObjectWriter.c("timestamp");
            jsonObjectWriter.g(iLogger, this.k);
        }
        if (this.w != null) {
            jsonObjectWriter.c("abnormal_mechanism");
            jsonObjectWriter.g(iLogger, this.w);
        }
        jsonObjectWriter.c("attrs");
        jsonObjectWriter.a();
        jsonObjectWriter.c("release");
        jsonObjectWriter.g(iLogger, this.v);
        String str3 = this.u;
        if (str3 != null) {
            jsonObjectWriter.c("environment");
            jsonObjectWriter.g(iLogger, str3);
        }
        String str4 = this.s;
        if (str4 != null) {
            jsonObjectWriter.c("ip_address");
            jsonObjectWriter.g(iLogger, str4);
        }
        if (this.t != null) {
            jsonObjectWriter.c("user_agent");
            jsonObjectWriter.g(iLogger, this.t);
        }
        jsonObjectWriter.b();
        ConcurrentHashMap concurrentHashMap = this.y;
        if (concurrentHashMap != null) {
            for (String str5 : concurrentHashMap.keySet()) {
                jb.o(this.y, str5, jsonObjectWriter, str5, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
