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
import io.sentry.util.CollectionUtils;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Mechanism implements JsonSerializable {
    public String j;
    public String k;
    public String l;
    public Boolean m;
    public AbstractMap n;
    public ConcurrentHashMap o;
    public Boolean p;
    public Integer q;
    public Integer r;
    public Boolean s;
    public HashMap t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Mechanism> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, io.sentry.protocol.Mechanism] */
        @Override // io.sentry.JsonDeserializer
        public final Object a(ObjectReader objectReader, ILogger iLogger) {
            ?? obj = new Object();
            objectReader.H0();
            HashMap hashMap = null;
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                char c = 65535;
                switch (e0.hashCode()) {
                    case -1724546052:
                        if (e0.equals("description")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -268203253:
                        if (e0.equals("exception_id")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3076010:
                        if (e0.equals("data")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 3347973:
                        if (e0.equals("meta")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 3575610:
                        if (e0.equals("type")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 692803388:
                        if (e0.equals("handled")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 989128517:
                        if (e0.equals("synthetic")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1032012154:
                        if (e0.equals("is_exception_group")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1297152568:
                        if (e0.equals("help_link")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 2070327504:
                        if (e0.equals("parent_id")) {
                            c = '\t';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.k = objectReader.L();
                        break;
                    case 1:
                        obj.q = objectReader.y();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.o = CollectionUtils.a((Map) objectReader.G0());
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.n = CollectionUtils.a((Map) objectReader.G0());
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.j = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.m = objectReader.n0();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        obj.p = objectReader.n0();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        obj.s = objectReader.n0();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        obj.l = objectReader.L();
                        break;
                    case KeyModifiers.a /* 9 */:
                        obj.r = objectReader.y();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        objectReader.D(iLogger, hashMap, e0);
                        break;
                }
            }
            objectReader.i0();
            obj.t = hashMap;
            return obj;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("type");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("description");
            jsonObjectWriter.j(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("help_link");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("handled");
            jsonObjectWriter.h(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("meta");
            jsonObjectWriter.g(iLogger, this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("data");
            jsonObjectWriter.g(iLogger, this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("synthetic");
            jsonObjectWriter.h(this.p);
        }
        if (this.q != null) {
            jsonObjectWriter.c("exception_id");
            jsonObjectWriter.g(iLogger, this.q);
        }
        if (this.r != null) {
            jsonObjectWriter.c("parent_id");
            jsonObjectWriter.g(iLogger, this.r);
        }
        if (this.s != null) {
            jsonObjectWriter.c("is_exception_group");
            jsonObjectWriter.h(this.s);
        }
        HashMap hashMap = this.t;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.t, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
