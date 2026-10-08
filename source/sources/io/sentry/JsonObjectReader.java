package io.sentry;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.JsonObjectDeserializer;
import io.sentry.vendor.gson.stream.JsonReader;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.Reader;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.TimeZone;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonObjectReader implements ObjectReader {
    public final JsonReader j;
    public final ArrayDeque k = new ArrayDeque();
    public int l = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RecoveryState {
        public final int a;
        public final JsonToken b;
        public boolean c;

        public RecoveryState(int i, JsonToken jsonToken) {
            this.a = i;
            this.b = jsonToken;
        }
    }

    public JsonObjectReader(Reader reader) {
        this.j = new JsonReader(reader);
    }

    @Override // io.sentry.ObjectReader
    public final void D(ILogger iLogger, AbstractMap abstractMap, String str) {
        RecoveryState recoveryState;
        RecoveryState recoveryState2 = null;
        try {
            try {
                recoveryState = new RecoveryState(this.l, this.j.peek());
                this.k.addLast(recoveryState);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            abstractMap.put(str, G0());
            a(recoveryState);
        } catch (Exception e2) {
            e = e2;
            recoveryState2 = recoveryState;
            iLogger.a(SentryLevel.ERROR, e, "Error deserializing unknown key: %s", str);
            if (recoveryState2 != null) {
                try {
                    v(recoveryState2);
                } catch (Exception e3) {
                    iLogger.b(SentryLevel.ERROR, "Stream unrecoverable after unknown key deserialization failure.", e3);
                }
            }
            a(recoveryState2);
        } catch (Throwable th2) {
            th = th2;
            recoveryState2 = recoveryState;
            a(recoveryState2);
            throw th;
        }
    }

    @Override // io.sentry.ObjectReader
    public final Long F() {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // io.sentry.ObjectReader
    public final Object G0() {
        JsonObjectDeserializer jsonObjectDeserializer = new JsonObjectDeserializer();
        boolean z = false;
        while (!z) {
            int[] iArr = JsonObjectDeserializer.AnonymousClass1.a;
            JsonReader jsonReader = this.j;
            int i = iArr[jsonReader.peek().ordinal()];
            ArrayList arrayList = jsonObjectDeserializer.a;
            switch (i) {
                case 1:
                    T0();
                    arrayList.add(new JsonObjectDeserializer.TokenArray());
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    Q0();
                    z = jsonObjectDeserializer.b();
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    H0();
                    arrayList.add(new JsonObjectDeserializer.TokenMap());
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    i0();
                    z = jsonObjectDeserializer.b();
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    arrayList.add(new JsonObjectDeserializer.TokenName(jsonReader.e0()));
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    z = jsonObjectDeserializer.c(new c(this, 0));
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    z = jsonObjectDeserializer.c(new c(jsonObjectDeserializer, this));
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    z = jsonObjectDeserializer.c(new c(this, 2));
                    break;
                case KeyModifiers.a /* 9 */:
                    q();
                    z = jsonObjectDeserializer.c(new d(0));
                    break;
                case KeyModifiers.b /* 10 */:
                    z = true;
                    break;
            }
        }
        JsonObjectDeserializer.Token a = jsonObjectDeserializer.a();
        if (a != null) {
            return a.getValue();
        }
        return null;
    }

    @Override // io.sentry.ObjectReader
    public final void H0() {
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        if (i == 1) {
            jsonReader.O(3);
            jsonReader.q = 0;
            h();
            this.l++;
            return;
        }
        StringBuilder sb = new StringBuilder("Expected BEGIN_OBJECT but was ");
        sb.append(jsonReader.peek());
        d.h(sb, jsonReader.v());
    }

    @Override // io.sentry.ObjectReader
    public final TimeZone K(ILogger iLogger) {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        try {
            return TimeZone.getTimeZone(r());
        } catch (Exception e) {
            iLogger.b(SentryLevel.ERROR, "Error when deserializing TimeZone", e);
            return null;
        }
    }

    @Override // io.sentry.ObjectReader
    public final String L() {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        return r();
    }

    @Override // io.sentry.ObjectReader
    public final void M(boolean z) {
        this.j.k = z;
    }

    @Override // io.sentry.ObjectReader
    public final HashMap Q(ILogger iLogger, JsonDeserializer jsonDeserializer) {
        boolean z;
        JsonReader jsonReader = this.j;
        if (jsonReader.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        H0();
        HashMap hashMap = new HashMap();
        if (jsonReader.hasNext()) {
            while (true) {
                String e0 = jsonReader.e0();
                RecoveryState recoveryState = new RecoveryState(this.l, jsonReader.peek());
                this.k.addLast(recoveryState);
                try {
                    try {
                        hashMap.put(e0, jsonDeserializer.a(this, iLogger));
                    } catch (Exception e) {
                        iLogger.b(SentryLevel.WARNING, "Failed to deserialize object in map.", e);
                        try {
                            v(recoveryState);
                            z = true;
                        } catch (Exception e2) {
                            iLogger.b(SentryLevel.ERROR, "Stream unrecoverable, aborting map deserialization.", e2);
                            z = false;
                        }
                        if (!z) {
                            a(recoveryState);
                            break;
                        }
                    }
                    a(recoveryState);
                    if (jsonReader.peek() != JsonToken.BEGIN_OBJECT && jsonReader.peek() != JsonToken.NAME) {
                        break;
                    }
                } catch (Throwable th) {
                    a(recoveryState);
                    throw th;
                }
            }
        }
        i0();
        return hashMap;
    }

    @Override // io.sentry.ObjectReader
    public final void Q0() {
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        if (i == 4) {
            int i2 = jsonReader.v;
            jsonReader.v = i2 - 1;
            int[] iArr = jsonReader.x;
            int i3 = i2 - 2;
            iArr[i3] = iArr[i3] + 1;
            jsonReader.q = 0;
            this.l--;
            return;
        }
        StringBuilder sb = new StringBuilder("Expected END_ARRAY but was ");
        sb.append(jsonReader.peek());
        d.h(sb, jsonReader.v());
    }

    @Override // io.sentry.ObjectReader
    public final ArrayList R0(ILogger iLogger, JsonDeserializer jsonDeserializer) {
        boolean z;
        JsonReader jsonReader = this.j;
        if (jsonReader.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        T0();
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (!jsonReader.hasNext()) {
                break;
            }
            RecoveryState recoveryState = new RecoveryState(this.l, jsonReader.peek());
            this.k.addLast(recoveryState);
            try {
                try {
                    arrayList.add(jsonDeserializer.a(this, iLogger));
                } catch (Exception e) {
                    iLogger.b(SentryLevel.WARNING, "Failed to deserialize object in list.", e);
                    try {
                        v(recoveryState);
                        z = true;
                    } catch (Exception e2) {
                        iLogger.b(SentryLevel.ERROR, "Stream unrecoverable, aborting list deserialization.", e2);
                        z = false;
                    }
                    if (!z) {
                        a(recoveryState);
                        break;
                    }
                }
                a(recoveryState);
            } catch (Throwable th) {
                a(recoveryState);
                throw th;
            }
        }
        Q0();
        return arrayList;
    }

    @Override // io.sentry.ObjectReader
    public final void T0() {
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        if (i == 3) {
            jsonReader.O(1);
            jsonReader.x[jsonReader.v - 1] = 0;
            jsonReader.q = 0;
            h();
            this.l++;
            return;
        }
        StringBuilder sb = new StringBuilder("Expected BEGIN_ARRAY but was ");
        sb.append(jsonReader.peek());
        d.h(sb, jsonReader.v());
    }

    public final void a(RecoveryState recoveryState) {
        if (recoveryState == null) {
            return;
        }
        ArrayDeque arrayDeque = this.k;
        if (!arrayDeque.isEmpty() && arrayDeque.peekLast() == recoveryState) {
            arrayDeque.removeLast();
        } else {
            arrayDeque.remove(recoveryState);
        }
    }

    @Override // io.sentry.ObjectReader
    public final Double c0() {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // io.sentry.ObjectReader
    public final String e0() {
        return this.j.e0();
    }

    public final void h() {
        RecoveryState recoveryState = (RecoveryState) this.k.peekLast();
        if (recoveryState != null) {
            recoveryState.c = true;
        }
    }

    @Override // io.sentry.ObjectReader
    public final boolean hasNext() {
        return this.j.hasNext();
    }

    @Override // io.sentry.ObjectReader
    public final void i0() {
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        if (i == 2) {
            int i2 = jsonReader.v;
            int i3 = i2 - 1;
            jsonReader.v = i3;
            jsonReader.w[i3] = null;
            int[] iArr = jsonReader.x;
            int i4 = i2 - 2;
            iArr[i4] = iArr[i4] + 1;
            jsonReader.q = 0;
            this.l--;
            return;
        }
        StringBuilder sb = new StringBuilder("Expected END_OBJECT but was ");
        sb.append(jsonReader.peek());
        d.h(sb, jsonReader.v());
    }

    @Override // io.sentry.ObjectReader
    public final Date k0(ILogger iLogger) {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        String r = r();
        if (r == null) {
            return null;
        }
        try {
            try {
                return DateUtils.d(r);
            } catch (Exception e) {
                iLogger.b(SentryLevel.ERROR, "Error when deserializing millis timestamp format.", e);
                return null;
            }
        } catch (Exception unused) {
            return DateUtils.e(r);
        }
    }

    public final boolean n() {
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        boolean z = false;
        if (i == 5) {
            jsonReader.q = 0;
            int[] iArr = jsonReader.x;
            int i2 = jsonReader.v - 1;
            iArr[i2] = iArr[i2] + 1;
            z = true;
        } else if (i == 6) {
            jsonReader.q = 0;
            int[] iArr2 = jsonReader.x;
            int i3 = jsonReader.v - 1;
            iArr2[i3] = iArr2[i3] + 1;
        } else {
            StringBuilder sb = new StringBuilder("Expected a boolean but was ");
            sb.append(jsonReader.peek());
            d.h(sb, jsonReader.v());
            return false;
        }
        h();
        return z;
    }

    @Override // io.sentry.ObjectReader
    public final Boolean n0() {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        return Boolean.valueOf(n());
    }

    @Override // io.sentry.ObjectReader
    public final double nextDouble() {
        double nextDouble = this.j.nextDouble();
        h();
        return nextDouble;
    }

    @Override // io.sentry.ObjectReader
    public final float nextFloat() {
        double nextDouble = this.j.nextDouble();
        h();
        return (float) nextDouble;
    }

    @Override // io.sentry.ObjectReader
    public final int nextInt() {
        char c;
        int parseInt;
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        if (i == 15) {
            long j = jsonReader.r;
            parseInt = (int) j;
            if (j == parseInt) {
                jsonReader.q = 0;
                int[] iArr = jsonReader.x;
                int i2 = jsonReader.v - 1;
                iArr[i2] = iArr[i2] + 1;
            } else {
                throw new NumberFormatException("Expected an int but was " + jsonReader.r + jsonReader.v());
            }
        } else {
            if (i == 16) {
                jsonReader.t = new String(jsonReader.l, jsonReader.m, jsonReader.s);
                jsonReader.m += jsonReader.s;
            } else {
                if (i != 8 && i != 9 && i != 10) {
                    StringBuilder sb = new StringBuilder("Expected an int but was ");
                    sb.append(jsonReader.peek());
                    d.h(sb, jsonReader.v());
                    return 0;
                }
                if (i == 10) {
                    jsonReader.t = jsonReader.E();
                } else {
                    if (i == 8) {
                        c = '\'';
                    } else {
                        c = '\"';
                    }
                    jsonReader.t = jsonReader.A(c);
                }
                try {
                    parseInt = Integer.parseInt(jsonReader.t);
                    jsonReader.q = 0;
                    int[] iArr2 = jsonReader.x;
                    int i3 = jsonReader.v - 1;
                    iArr2[i3] = iArr2[i3] + 1;
                } catch (NumberFormatException unused) {
                }
            }
            jsonReader.q = 11;
            double parseDouble = Double.parseDouble(jsonReader.t);
            parseInt = (int) parseDouble;
            if (parseInt == parseDouble) {
                jsonReader.t = null;
                jsonReader.q = 0;
                int[] iArr3 = jsonReader.x;
                int i4 = jsonReader.v - 1;
                iArr3[i4] = iArr3[i4] + 1;
            } else {
                throw new NumberFormatException("Expected an int but was " + jsonReader.t + jsonReader.v());
            }
        }
        h();
        return parseInt;
    }

    @Override // io.sentry.ObjectReader
    public final long nextLong() {
        char c;
        long j;
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        if (i == 15) {
            jsonReader.q = 0;
            int[] iArr = jsonReader.x;
            int i2 = jsonReader.v - 1;
            iArr[i2] = iArr[i2] + 1;
            j = jsonReader.r;
        } else {
            if (i == 16) {
                jsonReader.t = new String(jsonReader.l, jsonReader.m, jsonReader.s);
                jsonReader.m += jsonReader.s;
            } else {
                if (i != 8 && i != 9 && i != 10) {
                    StringBuilder sb = new StringBuilder("Expected a long but was ");
                    sb.append(jsonReader.peek());
                    d.h(sb, jsonReader.v());
                    return 0L;
                }
                if (i == 10) {
                    jsonReader.t = jsonReader.E();
                } else {
                    if (i == 8) {
                        c = '\'';
                    } else {
                        c = '\"';
                    }
                    jsonReader.t = jsonReader.A(c);
                }
                try {
                    long parseLong = Long.parseLong(jsonReader.t);
                    jsonReader.q = 0;
                    int[] iArr2 = jsonReader.x;
                    int i3 = jsonReader.v - 1;
                    iArr2[i3] = iArr2[i3] + 1;
                    j = parseLong;
                } catch (NumberFormatException unused) {
                }
            }
            jsonReader.q = 11;
            double parseDouble = Double.parseDouble(jsonReader.t);
            long j2 = (long) parseDouble;
            if (j2 == parseDouble) {
                jsonReader.t = null;
                jsonReader.q = 0;
                int[] iArr3 = jsonReader.x;
                int i4 = jsonReader.v - 1;
                iArr3[i4] = iArr3[i4] + 1;
                j = j2;
            } else {
                throw new NumberFormatException("Expected a long but was " + jsonReader.t + jsonReader.v());
            }
        }
        h();
        return j;
    }

    @Override // io.sentry.ObjectReader
    public final JsonToken peek() {
        return this.j.peek();
    }

    public final void q() {
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        if (i == 7) {
            jsonReader.q = 0;
            int[] iArr = jsonReader.x;
            int i2 = jsonReader.v - 1;
            iArr[i2] = iArr[i2] + 1;
            h();
            return;
        }
        StringBuilder sb = new StringBuilder("Expected null but was ");
        sb.append(jsonReader.peek());
        d.h(sb, jsonReader.v());
    }

    @Override // io.sentry.ObjectReader
    public final String r() {
        String str;
        JsonReader jsonReader = this.j;
        int i = jsonReader.q;
        if (i == 0) {
            i = jsonReader.h();
        }
        if (i == 10) {
            str = jsonReader.E();
        } else if (i == 8) {
            str = jsonReader.A('\'');
        } else if (i == 9) {
            str = jsonReader.A('\"');
        } else if (i == 11) {
            str = jsonReader.t;
            jsonReader.t = null;
        } else if (i == 15) {
            str = Long.toString(jsonReader.r);
        } else if (i == 16) {
            str = new String(jsonReader.l, jsonReader.m, jsonReader.s);
            jsonReader.m += jsonReader.s;
        } else {
            StringBuilder sb = new StringBuilder("Expected a string but was ");
            sb.append(jsonReader.peek());
            d.h(sb, jsonReader.v());
            return null;
        }
        jsonReader.q = 0;
        int[] iArr = jsonReader.x;
        int i2 = jsonReader.v - 1;
        iArr[i2] = iArr[i2] + 1;
        h();
        return str;
    }

    public final void v(RecoveryState recoveryState) {
        JsonReader jsonReader;
        while (true) {
            int i = this.l;
            int i2 = recoveryState.a;
            jsonReader = this.j;
            if (i <= i2) {
                break;
            }
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.END_OBJECT) {
                i0();
            } else if (peek == JsonToken.END_ARRAY) {
                Q0();
            } else {
                x();
            }
        }
        if (!recoveryState.c && jsonReader.peek() == recoveryState.b) {
            x();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:65:0x009d. Please report as an issue. */
    @Override // io.sentry.ObjectReader
    public final void x() {
        JsonReader jsonReader;
        int i = 0;
        do {
            jsonReader = this.j;
            int i2 = jsonReader.q;
            if (i2 == 0) {
                i2 = jsonReader.h();
            }
            if (i2 == 3) {
                jsonReader.O(1);
            } else if (i2 == 1) {
                jsonReader.O(3);
            } else {
                if (i2 == 4) {
                    jsonReader.v--;
                } else if (i2 == 2) {
                    jsonReader.v--;
                } else {
                    if (i2 != 14 && i2 != 10) {
                        if (i2 != 8 && i2 != 12) {
                            if (i2 != 9 && i2 != 13) {
                                if (i2 == 16) {
                                    jsonReader.m += jsonReader.s;
                                }
                            } else {
                                jsonReader.R('\"');
                            }
                        } else {
                            jsonReader.R('\'');
                        }
                    } else {
                        do {
                            int i3 = 0;
                            while (true) {
                                int i4 = jsonReader.m + i3;
                                if (i4 < jsonReader.n) {
                                    char c = jsonReader.l[i4];
                                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                                        if (c != '#') {
                                            if (c != ',') {
                                                if (c != '/' && c != '=') {
                                                    if (c != '{' && c != '}' && c != ':') {
                                                        if (c != ';') {
                                                            switch (c) {
                                                                case '[':
                                                                case ']':
                                                                    break;
                                                                case '\\':
                                                                    break;
                                                                default:
                                                                    i3++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    jsonReader.m = i4;
                                }
                            }
                            jsonReader.a();
                            jsonReader.m += i3;
                        } while (jsonReader.n(1));
                    }
                    jsonReader.q = 0;
                }
                i--;
                jsonReader.q = 0;
            }
            i++;
            jsonReader.q = 0;
        } while (i != 0);
        int[] iArr = jsonReader.x;
        int i5 = jsonReader.v - 1;
        iArr[i5] = iArr[i5] + 1;
        jsonReader.w[i5] = "null";
        h();
    }

    @Override // io.sentry.ObjectReader
    public final Integer y() {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // io.sentry.ObjectReader
    public final Float y0() {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        return Float.valueOf(nextFloat());
    }

    @Override // io.sentry.ObjectReader
    public final Object z0(ILogger iLogger, JsonDeserializer jsonDeserializer) {
        if (this.j.peek() == JsonToken.NULL) {
            q();
            return null;
        }
        return jsonDeserializer.a(this, iLogger);
    }
}
