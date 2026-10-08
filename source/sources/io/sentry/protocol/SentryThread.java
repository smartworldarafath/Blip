package io.sentry.protocol;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryThread implements JsonSerializable {
    public Long j;
    public Integer k;
    public String l;
    public String m;
    public Boolean n;
    public Boolean o;
    public Boolean p;
    public Boolean q;
    public SentryStackTrace r;
    public Map s;
    public ConcurrentHashMap t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryThread> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v12, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v1, types: [io.sentry.protocol.SentryThread, java.lang.Object] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ?? obj = new Object();
            objectReader.H0();
            ConcurrentHashMap concurrentHashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1339353468:
                        if (e0.equals("daemon")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1165461084:
                        if (e0.equals("priority")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -502917346:
                        if (e0.equals("held_locks")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 3355:
                        if (e0.equals("id")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 3343801:
                        if (e0.equals("main")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 3373707:
                        if (e0.equals("name")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 109757585:
                        if (e0.equals("state")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1025385094:
                        if (e0.equals("crashed")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1126940025:
                        if (e0.equals("current")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 2055832509:
                        if (e0.equals("stacktrace")) {
                            c = '\t';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.p = objectReader.n0();
                        break;
                    case 1:
                        obj.k = objectReader.y();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        HashMap Q = objectReader.Q(iLogger, new Object());
                        if (Q == null) {
                            break;
                        } else {
                            obj.s = new HashMap(Q);
                            break;
                        }
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.j = objectReader.F();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.q = objectReader.n0();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.l = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        obj.m = objectReader.L();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        obj.n = objectReader.n0();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        obj.o = objectReader.n0();
                        break;
                    case KeyModifiers.a /* 9 */:
                        obj.r = (SentryStackTrace) objectReader.z0(iLogger, new Object());
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.t = concurrentHashMap;
            objectReader.i0();
            return obj;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("id");
            jsonObjectWriter.i(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("priority");
            jsonObjectWriter.i(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("name");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("state");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("crashed");
            jsonObjectWriter.h(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("current");
            jsonObjectWriter.h(this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("daemon");
            jsonObjectWriter.h(this.p);
        }
        if (this.q != null) {
            jsonObjectWriter.c("main");
            jsonObjectWriter.h(this.q);
        }
        if (this.r != null) {
            jsonObjectWriter.c("stacktrace");
            jsonObjectWriter.g(iLogger, this.r);
        }
        if (this.s != null) {
            jsonObjectWriter.c("held_locks");
            jsonObjectWriter.g(iLogger, this.s);
        }
        ConcurrentHashMap concurrentHashMap = this.t;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.t, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
