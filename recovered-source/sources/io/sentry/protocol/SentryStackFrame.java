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
import io.sentry.SentryLockReason;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryStackFrame implements JsonSerializable {
    public String A;
    public String B;
    public ConcurrentHashMap C;
    public String D;
    public SentryLockReason E;
    public List j;
    public List k;
    public Map l;
    public String m;
    public String n;
    public String o;
    public Integer p;
    public Integer q;
    public String r;
    public String s;
    public Boolean t;
    public String u;
    public Boolean v;
    public String w;
    public String x;
    public String y;
    public String z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<SentryStackFrame> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v14, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v1, types: [io.sentry.protocol.SentryStackFrame, java.lang.Object] */
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
                    case -1641491184:
                        if (e0.equals("post_context")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1443345323:
                        if (e0.equals("image_addr")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1184392185:
                        if (e0.equals("in_app")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1113875953:
                        if (e0.equals("raw_function")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1102671691:
                        if (e0.equals("lineno")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1068784020:
                        if (e0.equals("module")) {
                            c = 5;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (e0.equals("native")) {
                            c = 6;
                            break;
                        }
                        break;
                    case -887523944:
                        if (e0.equals("symbol")) {
                            c = 7;
                            break;
                        }
                        break;
                    case -807062458:
                        if (e0.equals("package")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case -734768633:
                        if (e0.equals("filename")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case -330260936:
                        if (e0.equals("symbol_addr")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 3327275:
                        if (e0.equals("lock")) {
                            c = 11;
                            break;
                        }
                        break;
                    case 3612204:
                        if (e0.equals("vars")) {
                            c = '\f';
                            break;
                        }
                        break;
                    case 94842689:
                        if (e0.equals("colno")) {
                            c = '\r';
                            break;
                        }
                        break;
                    case 410194178:
                        if (e0.equals("instruction_addr")) {
                            c = 14;
                            break;
                        }
                        break;
                    case 822688787:
                        if (e0.equals("pre_context")) {
                            c = 15;
                            break;
                        }
                        break;
                    case 868820273:
                        if (e0.equals("addr_mode")) {
                            c = 16;
                            break;
                        }
                        break;
                    case 1116694660:
                        if (e0.equals("context_line")) {
                            c = 17;
                            break;
                        }
                        break;
                    case 1380938712:
                        if (e0.equals("function")) {
                            c = 18;
                            break;
                        }
                        break;
                    case 1713445842:
                        if (e0.equals("abs_path")) {
                            c = 19;
                            break;
                        }
                        break;
                    case 1874684019:
                        if (e0.equals("platform")) {
                            c = 20;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.k = (List) objectReader.G0();
                        break;
                    case 1:
                        obj.x = objectReader.L();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.t = objectReader.n0();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.D = objectReader.L();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.p = objectReader.y();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.o = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        obj.v = objectReader.n0();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        obj.B = objectReader.L();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        obj.u = objectReader.L();
                        break;
                    case KeyModifiers.a /* 9 */:
                        obj.m = objectReader.L();
                        break;
                    case KeyModifiers.b /* 10 */:
                        obj.y = objectReader.L();
                        break;
                    case 11:
                        obj.E = (SentryLockReason) objectReader.z0(iLogger, new Object());
                        break;
                    case KeyModifiers.c /* 12 */:
                        obj.l = (Map) objectReader.G0();
                        break;
                    case '\r':
                        obj.q = objectReader.y();
                        break;
                    case 14:
                        obj.z = objectReader.L();
                        break;
                    case 15:
                        obj.j = (List) objectReader.G0();
                        break;
                    case 16:
                        obj.A = objectReader.L();
                        break;
                    case 17:
                        obj.s = objectReader.L();
                        break;
                    case 18:
                        obj.n = objectReader.L();
                        break;
                    case 19:
                        obj.r = objectReader.L();
                        break;
                    case 20:
                        obj.w = objectReader.L();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        objectReader.D(iLogger, concurrentHashMap, e0);
                        break;
                }
            }
            obj.C = concurrentHashMap;
            objectReader.i0();
            return obj;
        }
    }

    public final boolean equals(Object obj) {
        if (obj != null && SentryStackFrame.class == obj.getClass()) {
            SentryStackFrame sentryStackFrame = (SentryStackFrame) obj;
            if (Objects.equals(this.j, sentryStackFrame.j) && Objects.equals(this.k, sentryStackFrame.k) && Objects.equals(this.l, sentryStackFrame.l) && Objects.equals(this.m, sentryStackFrame.m) && Objects.equals(this.n, sentryStackFrame.n) && Objects.equals(this.o, sentryStackFrame.o) && Objects.equals(this.p, sentryStackFrame.p) && Objects.equals(this.q, sentryStackFrame.q) && Objects.equals(this.r, sentryStackFrame.r) && Objects.equals(this.s, sentryStackFrame.s) && Objects.equals(this.t, sentryStackFrame.t) && Objects.equals(this.u, sentryStackFrame.u) && Objects.equals(this.v, sentryStackFrame.v) && Objects.equals(this.w, sentryStackFrame.w) && Objects.equals(this.x, sentryStackFrame.x) && Objects.equals(this.y, sentryStackFrame.y) && Objects.equals(this.z, sentryStackFrame.z) && Objects.equals(this.A, sentryStackFrame.A) && Objects.equals(this.B, sentryStackFrame.B) && Objects.equals(this.C, sentryStackFrame.C) && Objects.equals(this.D, sentryStackFrame.D) && Objects.equals(this.E, sentryStackFrame.E)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.j, this.k, this.l, null, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E);
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.m != null) {
            jsonObjectWriter.c("filename");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("function");
            jsonObjectWriter.j(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("module");
            jsonObjectWriter.j(this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("lineno");
            jsonObjectWriter.i(this.p);
        }
        if (this.q != null) {
            jsonObjectWriter.c("colno");
            jsonObjectWriter.i(this.q);
        }
        if (this.r != null) {
            jsonObjectWriter.c("abs_path");
            jsonObjectWriter.j(this.r);
        }
        if (this.s != null) {
            jsonObjectWriter.c("context_line");
            jsonObjectWriter.j(this.s);
        }
        if (this.t != null) {
            jsonObjectWriter.c("in_app");
            jsonObjectWriter.h(this.t);
        }
        if (this.u != null) {
            jsonObjectWriter.c("package");
            jsonObjectWriter.j(this.u);
        }
        if (this.v != null) {
            jsonObjectWriter.c("native");
            jsonObjectWriter.h(this.v);
        }
        if (this.w != null) {
            jsonObjectWriter.c("platform");
            jsonObjectWriter.j(this.w);
        }
        if (this.x != null) {
            jsonObjectWriter.c("image_addr");
            jsonObjectWriter.j(this.x);
        }
        if (this.y != null) {
            jsonObjectWriter.c("symbol_addr");
            jsonObjectWriter.j(this.y);
        }
        if (this.z != null) {
            jsonObjectWriter.c("instruction_addr");
            jsonObjectWriter.j(this.z);
        }
        if (this.A != null) {
            jsonObjectWriter.c("addr_mode");
            jsonObjectWriter.j(this.A);
        }
        if (this.D != null) {
            jsonObjectWriter.c("raw_function");
            jsonObjectWriter.j(this.D);
        }
        if (this.B != null) {
            jsonObjectWriter.c("symbol");
            jsonObjectWriter.j(this.B);
        }
        if (this.E != null) {
            jsonObjectWriter.c("lock");
            jsonObjectWriter.g(iLogger, this.E);
        }
        List list = this.j;
        if (list != null && !list.isEmpty()) {
            jsonObjectWriter.c("pre_context");
            jsonObjectWriter.g(iLogger, this.j);
        }
        List list2 = this.k;
        if (list2 != null && !list2.isEmpty()) {
            jsonObjectWriter.c("post_context");
            jsonObjectWriter.g(iLogger, this.k);
        }
        Map map = this.l;
        if (map != null && !map.isEmpty()) {
            jsonObjectWriter.c("vars");
            jsonObjectWriter.g(iLogger, this.l);
        }
        ConcurrentHashMap concurrentHashMap = this.C;
        if (concurrentHashMap != null) {
            for (String str : concurrentHashMap.keySet()) {
                jb.o(this.C, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
