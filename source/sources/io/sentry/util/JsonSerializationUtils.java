package io.sentry.util;

import java.io.Writer;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JsonSerializationUtils {
    public static final Charset a = Charset.forName("UTF-8");

    public static HashMap a(Calendar calendar) {
        HashMap hashMap = new HashMap();
        hashMap.put("year", Integer.valueOf(calendar.get(1)));
        hashMap.put("month", Integer.valueOf(calendar.get(2)));
        hashMap.put("dayOfMonth", Integer.valueOf(calendar.get(5)));
        hashMap.put("hourOfDay", Integer.valueOf(calendar.get(11)));
        hashMap.put("minute", Integer.valueOf(calendar.get(12)));
        hashMap.put("second", Integer.valueOf(calendar.get(13)));
        return hashMap;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ByteCountingWriter extends Writer {
        public long j = 0;

        public static int a(char c) {
            if (c <= 127) {
                return 1;
            }
            if (c <= 2047 || Character.isSurrogate(c)) {
                return 2;
            }
            return 3;
        }

        @Override // java.io.Writer
        public final void write(String str, int i, int i2) {
            for (int i3 = i; i3 < i + i2; i3++) {
                this.j += a(str.charAt(i3));
            }
        }

        @Override // java.io.Writer
        public final void write(int i) {
            this.j += a((char) i);
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            for (int i3 = i; i3 < i + i2; i3++) {
                this.j += a(cArr[i3]);
            }
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }
    }
}
