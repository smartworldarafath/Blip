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
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewHierarchyNode implements JsonSerializable {
    public String j;
    public String k;
    public String l;
    public String m;
    public Double n;
    public Double o;
    public Double p;
    public Double q;
    public String r;
    public Double s;
    public List t;
    public HashMap u;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<ViewHierarchyNode> {
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.protocol.ViewHierarchyNode, java.lang.Object] */
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
                    case -1784982718:
                        if (e0.equals("rendering_system")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1618432855:
                        if (e0.equals("identifier")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1221029593:
                        if (e0.equals("height")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 120:
                        if (e0.equals("x")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 121:
                        if (e0.equals("y")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 114586:
                        if (e0.equals("tag")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 3575610:
                        if (e0.equals("type")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 92909918:
                        if (e0.equals("alpha")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 113126854:
                        if (e0.equals("width")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1659526655:
                        if (e0.equals("children")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1941332754:
                        if (e0.equals("visibility")) {
                            c = '\n';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        obj.j = objectReader.L();
                        break;
                    case 1:
                        obj.l = objectReader.L();
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        obj.o = objectReader.c0();
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        obj.p = objectReader.c0();
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obj.q = objectReader.c0();
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        obj.m = objectReader.L();
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        obj.k = objectReader.L();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        obj.s = objectReader.c0();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        obj.n = objectReader.c0();
                        break;
                    case KeyModifiers.a /* 9 */:
                        obj.t = objectReader.R0(iLogger, this);
                        break;
                    case KeyModifiers.b /* 10 */:
                        obj.r = objectReader.L();
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
            obj.u = hashMap;
            return obj;
        }
    }

    @Override // io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        if (this.j != null) {
            jsonObjectWriter.c("rendering_system");
            jsonObjectWriter.j(this.j);
        }
        if (this.k != null) {
            jsonObjectWriter.c("type");
            jsonObjectWriter.j(this.k);
        }
        if (this.l != null) {
            jsonObjectWriter.c("identifier");
            jsonObjectWriter.j(this.l);
        }
        if (this.m != null) {
            jsonObjectWriter.c("tag");
            jsonObjectWriter.j(this.m);
        }
        if (this.n != null) {
            jsonObjectWriter.c("width");
            jsonObjectWriter.i(this.n);
        }
        if (this.o != null) {
            jsonObjectWriter.c("height");
            jsonObjectWriter.i(this.o);
        }
        if (this.p != null) {
            jsonObjectWriter.c("x");
            jsonObjectWriter.i(this.p);
        }
        if (this.q != null) {
            jsonObjectWriter.c("y");
            jsonObjectWriter.i(this.q);
        }
        if (this.r != null) {
            jsonObjectWriter.c("visibility");
            jsonObjectWriter.j(this.r);
        }
        if (this.s != null) {
            jsonObjectWriter.c("alpha");
            jsonObjectWriter.i(this.s);
        }
        List list = this.t;
        if (list != null && !list.isEmpty()) {
            jsonObjectWriter.c("children");
            jsonObjectWriter.g(iLogger, this.t);
        }
        HashMap hashMap = this.u;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                jb.n(this.u, str, jsonObjectWriter, str, iLogger);
            }
        }
        jsonObjectWriter.b();
    }
}
