package io.sentry;

import io.sentry.util.JsonSerializationUtils;
import io.sentry.vendor.gson.stream.JsonWriter;
import java.net.InetAddress;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonObjectSerializer {
    public final JsonReflectionObjectSerializer a;

    public JsonObjectSerializer(int i) {
        this.a = new JsonReflectionObjectSerializer(i);
    }

    public final void a(JsonObjectWriter jsonObjectWriter, ILogger iLogger, Object obj) {
        JsonWriter jsonWriter = jsonObjectWriter.a;
        if (obj == null) {
            jsonWriter.q();
            return;
        }
        if (obj instanceof Character) {
            jsonObjectWriter.j(Character.toString(((Character) obj).charValue()));
            return;
        }
        if (obj instanceof String) {
            jsonObjectWriter.j((String) obj);
            return;
        }
        if (obj instanceof Boolean) {
            jsonObjectWriter.k(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof Number) {
            jsonObjectWriter.i((Number) obj);
            return;
        }
        if (obj instanceof Date) {
            try {
                jsonObjectWriter.j(DateUtils.f((Date) obj));
                return;
            } catch (Exception e) {
                iLogger.b(SentryLevel.ERROR, "Error when serializing Date", e);
                jsonWriter.q();
                return;
            }
        }
        if (obj instanceof TimeZone) {
            try {
                jsonObjectWriter.j(((TimeZone) obj).getID());
                return;
            } catch (Exception e2) {
                iLogger.b(SentryLevel.ERROR, "Error when serializing TimeZone", e2);
                jsonWriter.q();
                return;
            }
        }
        if (obj instanceof JsonSerializable) {
            ((JsonSerializable) obj).serialize(jsonObjectWriter, iLogger);
            return;
        }
        if (obj instanceof Collection) {
            b(jsonObjectWriter, iLogger, (Collection) obj);
            return;
        }
        int i = 0;
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            ArrayList arrayList = new ArrayList(zArr.length);
            int length = zArr.length;
            while (i < length) {
                arrayList.add(Boolean.valueOf(zArr[i]));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            ArrayList arrayList2 = new ArrayList(bArr.length);
            int length2 = bArr.length;
            while (i < length2) {
                arrayList2.add(Byte.valueOf(bArr[i]));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList2);
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            ArrayList arrayList3 = new ArrayList(sArr.length);
            int length3 = sArr.length;
            while (i < length3) {
                arrayList3.add(Short.valueOf(sArr[i]));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList3);
            return;
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            ArrayList arrayList4 = new ArrayList(cArr.length);
            int length4 = cArr.length;
            while (i < length4) {
                arrayList4.add(Character.valueOf(cArr[i]));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList4);
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            ArrayList arrayList5 = new ArrayList(iArr.length);
            int length5 = iArr.length;
            while (i < length5) {
                arrayList5.add(Integer.valueOf(iArr[i]));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList5);
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            ArrayList arrayList6 = new ArrayList(jArr.length);
            int length6 = jArr.length;
            while (i < length6) {
                arrayList6.add(Long.valueOf(jArr[i]));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList6);
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            ArrayList arrayList7 = new ArrayList(fArr.length);
            int length7 = fArr.length;
            while (i < length7) {
                arrayList7.add(Float.valueOf(fArr[i]));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList7);
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            ArrayList arrayList8 = new ArrayList(dArr.length);
            int length8 = dArr.length;
            while (i < length8) {
                arrayList8.add(Double.valueOf(dArr[i]));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList8);
            return;
        }
        if (obj.getClass().isArray()) {
            b(jsonObjectWriter, iLogger, Arrays.asList((Object[]) obj));
            return;
        }
        if (obj instanceof Map) {
            c(jsonObjectWriter, iLogger, (Map) obj);
            return;
        }
        if (obj instanceof Locale) {
            jsonObjectWriter.j(obj.toString());
            return;
        }
        if (obj instanceof AtomicIntegerArray) {
            AtomicIntegerArray atomicIntegerArray = (AtomicIntegerArray) obj;
            Charset charset = JsonSerializationUtils.a;
            int length9 = atomicIntegerArray.length();
            ArrayList arrayList9 = new ArrayList(length9);
            while (i < length9) {
                arrayList9.add(Integer.valueOf(atomicIntegerArray.get(i)));
                i++;
            }
            b(jsonObjectWriter, iLogger, arrayList9);
            return;
        }
        if (obj instanceof AtomicBoolean) {
            jsonObjectWriter.k(((AtomicBoolean) obj).get());
            return;
        }
        if (obj instanceof URI) {
            jsonObjectWriter.j(obj.toString());
            return;
        }
        if (obj instanceof InetAddress) {
            jsonObjectWriter.j(obj.toString());
            return;
        }
        if (obj instanceof UUID) {
            jsonObjectWriter.j(obj.toString());
            return;
        }
        if (obj instanceof Currency) {
            jsonObjectWriter.j(obj.toString());
            return;
        }
        if (obj instanceof Calendar) {
            c(jsonObjectWriter, iLogger, JsonSerializationUtils.a((Calendar) obj));
            return;
        }
        if (obj.getClass().isEnum()) {
            jsonObjectWriter.j(obj.toString());
            return;
        }
        try {
            a(jsonObjectWriter, iLogger, this.a.b(iLogger, obj));
        } catch (Exception e3) {
            iLogger.b(SentryLevel.ERROR, "Failed serializing unknown object.", e3);
            jsonObjectWriter.j("[OBJECT]");
        }
    }

    public final void b(JsonObjectWriter jsonObjectWriter, ILogger iLogger, Collection collection) {
        JsonWriter jsonWriter = jsonObjectWriter.a;
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
        iArr2[i2] = 1;
        jsonWriter.j.write(91);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            a(jsonObjectWriter, iLogger, it.next());
        }
        jsonWriter.h(1, 2, ']');
    }

    public final void c(JsonObjectWriter jsonObjectWriter, ILogger iLogger, Map map) {
        jsonObjectWriter.a();
        for (Object obj : map.keySet()) {
            if (obj instanceof String) {
                jsonObjectWriter.c((String) obj);
                a(jsonObjectWriter, iLogger, map.get(obj));
            }
        }
        jsonObjectWriter.b();
    }
}
