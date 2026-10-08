package io.sentry.util;

import defpackage.fe;
import defpackage.k8;
import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.ObjectReader;
import io.sentry.SentryLevel;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MapObjectReader implements ObjectReader {
    public final ArrayDeque j;

    public MapObjectReader(Map map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.j = arrayDeque;
        arrayDeque.addLast(new AbstractMap.SimpleEntry(null, map));
    }

    @Override // io.sentry.ObjectReader
    public final void D(ILogger iLogger, AbstractMap abstractMap, String str) {
        int size = this.j.size();
        try {
            abstractMap.put(str, a());
        } catch (Exception e) {
            iLogger.a(SentryLevel.ERROR, e, "Error deserializing unknown key: %s", str);
            h(size);
        }
    }

    @Override // io.sentry.ObjectReader
    public final Long F() {
        Object a = a();
        if (a instanceof Number) {
            return Long.valueOf(((Number) a).longValue());
        }
        return null;
    }

    @Override // io.sentry.ObjectReader
    public final Object G0() {
        return a();
    }

    @Override // io.sentry.ObjectReader
    public final void H0() {
        ArrayDeque arrayDeque = this.j;
        Map.Entry entry = (Map.Entry) arrayDeque.peekLast();
        if (entry != null) {
            Object value = entry.getValue();
            if (value instanceof Map) {
                arrayDeque.removeLast();
                arrayDeque.addLast(new AbstractMap.SimpleEntry(null, JsonToken.END_OBJECT));
                Iterator it = ((Map) value).entrySet().iterator();
                while (it.hasNext()) {
                    arrayDeque.addLast((Map.Entry) it.next());
                }
                return;
            }
            k8.j("Current token is not an object");
            return;
        }
        k8.j("No more entries");
    }

    @Override // io.sentry.ObjectReader
    public final TimeZone K(ILogger iLogger) {
        String str = (String) a();
        if (str != null) {
            return TimeZone.getTimeZone(str);
        }
        return null;
    }

    @Override // io.sentry.ObjectReader
    public final String L() {
        return (String) a();
    }

    @Override // io.sentry.ObjectReader
    public final HashMap Q(ILogger iLogger, JsonDeserializer jsonDeserializer) {
        if (peek() == JsonToken.NULL) {
            if (a() == null) {
                return null;
            }
            fe.x(peek(), "Expected null but was ");
            return null;
        }
        try {
            H0();
            HashMap hashMap = new HashMap();
            if (peek() == JsonToken.NAME) {
                while (true) {
                    String e0 = e0();
                    int size = this.j.size();
                    try {
                        hashMap.put(e0, jsonDeserializer.a(this, iLogger));
                    } catch (Exception e) {
                        iLogger.b(SentryLevel.WARNING, "Failed to deserialize object in map.", e);
                        h(size);
                    }
                    if (peek() != JsonToken.BEGIN_OBJECT && peek() != JsonToken.NAME) {
                        break;
                    }
                }
            }
            i0();
            return hashMap;
        } catch (Exception e2) {
            throw new IOException(e2);
        }
    }

    @Override // io.sentry.ObjectReader
    public final void Q0() {
        ArrayDeque arrayDeque = this.j;
        if (arrayDeque.size() > 1) {
            arrayDeque.removeLast();
        }
    }

    @Override // io.sentry.ObjectReader
    public final ArrayList R0(ILogger iLogger, JsonDeserializer jsonDeserializer) {
        if (peek() == JsonToken.NULL) {
            if (a() == null) {
                return null;
            }
            fe.x(peek(), "Expected null but was ");
            return null;
        }
        try {
            T0();
            ArrayList arrayList = new ArrayList();
            while (peek() != JsonToken.END_ARRAY) {
                int size = this.j.size();
                try {
                    arrayList.add(jsonDeserializer.a(this, iLogger));
                } catch (Exception e) {
                    iLogger.b(SentryLevel.WARNING, "Failed to deserialize object in list.", e);
                    h(size);
                }
            }
            Q0();
            return arrayList;
        } catch (Exception e2) {
            throw new IOException(e2);
        }
    }

    @Override // io.sentry.ObjectReader
    public final void T0() {
        ArrayDeque arrayDeque = this.j;
        Map.Entry entry = (Map.Entry) arrayDeque.peekLast();
        if (entry != null) {
            Object value = entry.getValue();
            if (value instanceof List) {
                arrayDeque.removeLast();
                arrayDeque.addLast(new AbstractMap.SimpleEntry(null, JsonToken.END_ARRAY));
                List list = (List) value;
                for (int size = list.size() - 1; size >= 0; size--) {
                    arrayDeque.addLast(new AbstractMap.SimpleEntry(null, list.get(size)));
                }
                return;
            }
            k8.j("Current token is not an object");
            return;
        }
        k8.j("No more entries");
    }

    public final Object a() {
        try {
            ArrayDeque arrayDeque = this.j;
            Map.Entry entry = (Map.Entry) arrayDeque.peekLast();
            if (entry == null) {
                return null;
            }
            Object value = entry.getValue();
            arrayDeque.removeLast();
            return value;
        } catch (Exception e) {
            throw new IOException(e);
        }
    }

    @Override // io.sentry.ObjectReader
    public final Double c0() {
        Object a = a();
        if (a instanceof Number) {
            return Double.valueOf(((Number) a).doubleValue());
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.clear();
    }

    @Override // io.sentry.ObjectReader
    public final String e0() {
        Map.Entry entry = (Map.Entry) this.j.peekLast();
        if (entry != null && entry.getKey() != null) {
            return (String) entry.getKey();
        }
        fe.x(peek(), "Expected a name but was ");
        return null;
    }

    public final void h(int i) {
        while (true) {
            ArrayDeque arrayDeque = this.j;
            if (!arrayDeque.isEmpty() && arrayDeque.size() >= i) {
                arrayDeque.removeLast();
            } else {
                return;
            }
        }
    }

    @Override // io.sentry.ObjectReader
    public final boolean hasNext() {
        return !this.j.isEmpty();
    }

    @Override // io.sentry.ObjectReader
    public final void i0() {
        ArrayDeque arrayDeque = this.j;
        if (arrayDeque.size() > 1) {
            arrayDeque.removeLast();
        }
    }

    @Override // io.sentry.ObjectReader
    public final Date k0(ILogger iLogger) {
        String str = (String) a();
        if (str == null) {
            return null;
        }
        try {
            try {
                return DateUtils.d(str);
            } catch (Exception unused) {
                return DateUtils.e(str);
            }
        } catch (Exception e) {
            iLogger.b(SentryLevel.ERROR, "Error when deserializing millis timestamp format.", e);
            return null;
        }
    }

    @Override // io.sentry.ObjectReader
    public final Boolean n0() {
        return (Boolean) a();
    }

    @Override // io.sentry.ObjectReader
    public final double nextDouble() {
        Object a = a();
        if (a instanceof Number) {
            return ((Number) a).doubleValue();
        }
        k8.j("Expected double");
        return 0.0d;
    }

    @Override // io.sentry.ObjectReader
    public final float nextFloat() {
        Object a = a();
        if (a instanceof Number) {
            return ((Number) a).floatValue();
        }
        k8.j("Expected float");
        return 0.0f;
    }

    @Override // io.sentry.ObjectReader
    public final int nextInt() {
        Object a = a();
        if (a instanceof Number) {
            return ((Number) a).intValue();
        }
        k8.j("Expected int");
        return 0;
    }

    @Override // io.sentry.ObjectReader
    public final long nextLong() {
        Object a = a();
        if (a instanceof Number) {
            return ((Number) a).longValue();
        }
        k8.j("Expected long");
        return 0L;
    }

    @Override // io.sentry.ObjectReader
    public final JsonToken peek() {
        ArrayDeque arrayDeque = this.j;
        if (arrayDeque.isEmpty()) {
            return JsonToken.END_DOCUMENT;
        }
        Map.Entry entry = (Map.Entry) arrayDeque.peekLast();
        if (entry == null) {
            return JsonToken.END_DOCUMENT;
        }
        if (entry.getKey() != null) {
            return JsonToken.NAME;
        }
        Object value = entry.getValue();
        if (value instanceof Map) {
            return JsonToken.BEGIN_OBJECT;
        }
        if (value instanceof List) {
            return JsonToken.BEGIN_ARRAY;
        }
        if (value instanceof String) {
            return JsonToken.STRING;
        }
        if (value instanceof Number) {
            return JsonToken.NUMBER;
        }
        if (value instanceof Boolean) {
            return JsonToken.BOOLEAN;
        }
        if (value instanceof JsonToken) {
            return (JsonToken) value;
        }
        return JsonToken.END_DOCUMENT;
    }

    @Override // io.sentry.ObjectReader
    public final String r() {
        String str = (String) a();
        if (str != null) {
            return str;
        }
        k8.j("Expected string");
        return null;
    }

    @Override // io.sentry.ObjectReader
    public final void x() {
        ArrayDeque arrayDeque = this.j;
        if (!arrayDeque.isEmpty()) {
            arrayDeque.removeLast();
        }
    }

    @Override // io.sentry.ObjectReader
    public final Integer y() {
        Object a = a();
        if (a instanceof Number) {
            return Integer.valueOf(((Number) a).intValue());
        }
        return null;
    }

    @Override // io.sentry.ObjectReader
    public final Float y0() {
        Object a = a();
        if (a instanceof Number) {
            return Float.valueOf(((Number) a).floatValue());
        }
        return null;
    }

    @Override // io.sentry.ObjectReader
    public final Object z0(ILogger iLogger, JsonDeserializer jsonDeserializer) {
        ArrayDeque arrayDeque = this.j;
        Map.Entry entry = (Map.Entry) arrayDeque.peekLast();
        if (entry == null) {
            return null;
        }
        Object value = entry.getValue();
        if (iLogger != null) {
            return jsonDeserializer.a(this, iLogger);
        }
        arrayDeque.removeLast();
        return value;
    }

    @Override // io.sentry.ObjectReader
    public final void M(boolean z) {
    }
}
