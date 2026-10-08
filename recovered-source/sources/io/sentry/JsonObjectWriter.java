package io.sentry;

import defpackage.u2;
import io.sentry.vendor.gson.stream.JsonWriter;
import java.io.Writer;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonObjectWriter implements ObjectWriter {
    public final JsonWriter a;
    public final JsonObjectSerializer b;

    public JsonObjectWriter(Writer writer, int i) {
        this.a = new JsonWriter(writer);
        this.b = new JsonObjectSerializer(i);
    }

    public final JsonObjectWriter a() {
        JsonWriter jsonWriter = this.a;
        jsonWriter.A();
        jsonWriter.a();
        int i = jsonWriter.l;
        int[] iArr = jsonWriter.k;
        if (i == iArr.length) {
            jsonWriter.k = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = jsonWriter.k;
        int i2 = jsonWriter.l;
        jsonWriter.l = i2 + 1;
        iArr2[i2] = 3;
        jsonWriter.j.write(123);
        return this;
    }

    public final JsonObjectWriter b() {
        this.a.h(3, 5, '}');
        return this;
    }

    public final JsonObjectWriter c(String str) {
        JsonWriter jsonWriter = this.a;
        if (str != null) {
            if (jsonWriter.p == null) {
                if (jsonWriter.l != 0) {
                    jsonWriter.p = str;
                    return this;
                }
                u2.l("JsonWriter is closed.");
                return null;
            }
            d.d();
            return null;
        }
        jsonWriter.getClass();
        d.f("name == null");
        return null;
    }

    public final void d(String str) {
        JsonWriter jsonWriter = this.a;
        jsonWriter.getClass();
        if (str != null && str.length() != 0) {
            jsonWriter.m = str;
            jsonWriter.n = ": ";
        } else {
            jsonWriter.m = null;
            jsonWriter.n = ":";
        }
    }

    public final JsonObjectWriter e(double d) {
        JsonWriter jsonWriter = this.a;
        jsonWriter.A();
        if (!jsonWriter.o && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        jsonWriter.a();
        jsonWriter.j.append((CharSequence) Double.toString(d));
        return this;
    }

    public final JsonObjectWriter f(long j) {
        JsonWriter jsonWriter = this.a;
        jsonWriter.A();
        jsonWriter.a();
        jsonWriter.j.write(Long.toString(j));
        return this;
    }

    public final JsonObjectWriter g(ILogger iLogger, Object obj) {
        this.b.a(this, iLogger, obj);
        return this;
    }

    public final JsonObjectWriter h(Boolean bool) {
        String str;
        JsonWriter jsonWriter = this.a;
        if (bool == null) {
            jsonWriter.q();
            return this;
        }
        jsonWriter.A();
        jsonWriter.a();
        Writer writer = jsonWriter.j;
        if (bool.booleanValue()) {
            str = "true";
        } else {
            str = "false";
        }
        writer.write(str);
        return this;
    }

    public final JsonObjectWriter i(Number number) {
        JsonWriter jsonWriter = this.a;
        if (number == null) {
            jsonWriter.q();
            return this;
        }
        jsonWriter.A();
        String obj = number.toString();
        if (!jsonWriter.o && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            d.e(number, "Numeric values must be finite, but was ");
            return null;
        }
        jsonWriter.a();
        jsonWriter.j.append((CharSequence) obj);
        return this;
    }

    public final JsonObjectWriter j(String str) {
        JsonWriter jsonWriter = this.a;
        if (str == null) {
            jsonWriter.q();
            return this;
        }
        jsonWriter.A();
        jsonWriter.a();
        jsonWriter.w(str);
        return this;
    }

    public final JsonObjectWriter k(boolean z) {
        String str;
        JsonWriter jsonWriter = this.a;
        jsonWriter.A();
        jsonWriter.a();
        Writer writer = jsonWriter.j;
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        writer.write(str);
        return this;
    }
}
