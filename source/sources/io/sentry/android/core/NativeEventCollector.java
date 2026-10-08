package io.sentry.android.core;

import io.sentry.JsonObjectReader;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.vendor.gson.stream.JsonReader;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NativeEventCollector {
    public final SentryAndroidOptions a;
    public final ArrayList b = new ArrayList();
    public boolean c = false;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ItemHeaderInfo {
        public final String a;
        public final int b;

        public ItemHeaderInfo(String str, int i) {
            this.a = str;
            this.b = i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NativeEnvelopeMetadata {
        public final File a;
        public final long b;

        public NativeEnvelopeMetadata(File file, long j) {
            this.a = file;
            this.b = j;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NativeEventData {
        public final SentryEvent a;
        public final File b;
        public final SentryEnvelope c;

        public NativeEventData(SentryEvent sentryEvent, File file, SentryEnvelope sentryEnvelope) {
            this.a = sentryEvent;
            this.b = file;
            this.c = sentryEnvelope;
        }
    }

    public NativeEventCollector(SentryAndroidOptions sentryAndroidOptions) {
        this.a = sentryAndroidOptions;
    }

    public static void c(BufferedInputStream bufferedInputStream, long j) {
        while (j > 0) {
            long skip = bufferedInputStream.skip(j);
            if (skip == 0) {
                if (bufferedInputStream.read() != -1) {
                    j--;
                } else {
                    throw new EOFException("Unexpected end of stream while skipping bytes");
                }
            } else {
                j -= skip;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x001b A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final NativeEnvelopeMetadata a(BufferedInputStream bufferedInputStream, int i, File file) {
        SentryAndroidOptions sentryAndroidOptions = this.a;
        NativeEnvelopeMetadata nativeEnvelopeMetadata = null;
        try {
            BoundedInputStream boundedInputStream = new BoundedInputStream(bufferedInputStream, i);
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(boundedInputStream, StandardCharsets.UTF_8);
                try {
                    JsonObjectReader jsonObjectReader = new JsonObjectReader(inputStreamReader);
                    JsonReader jsonReader = jsonObjectReader.j;
                    jsonObjectReader.H0();
                    String str = null;
                    Date date = null;
                    while (jsonReader.peek() == JsonToken.NAME) {
                        String e0 = jsonReader.e0();
                        int hashCode = e0.hashCode();
                        if (hashCode != 55126294) {
                            if (hashCode == 1874684019 && e0.equals("platform")) {
                                str = jsonObjectReader.L();
                                if (str == null && date != null) {
                                    break;
                                }
                            }
                            jsonObjectReader.x();
                            if (str == null) {
                            }
                        } else {
                            if (e0.equals("timestamp")) {
                                date = jsonObjectReader.k0(sentryAndroidOptions.getLogger());
                                if (str == null) {
                                }
                            }
                            jsonObjectReader.x();
                            if (str == null) {
                            }
                        }
                    }
                    if ("native".equals(str) && date != null) {
                        nativeEnvelopeMetadata = new NativeEnvelopeMetadata(file, date.getTime());
                    }
                    inputStreamReader.close();
                    boundedInputStream.close();
                    return nativeEnvelopeMetadata;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    boundedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            sentryAndroidOptions.getLogger().a(SentryLevel.DEBUG, th3, "Error parsing event JSON from: %s", file.getName());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0059 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x001d A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ItemHeaderInfo b(String str) {
        try {
            Charset charset = StandardCharsets.UTF_8;
            InputStreamReader inputStreamReader = new InputStreamReader(new ByteArrayInputStream(str.getBytes(charset)), charset);
            try {
                JsonObjectReader jsonObjectReader = new JsonObjectReader(inputStreamReader);
                JsonReader jsonReader = jsonObjectReader.j;
                jsonObjectReader.H0();
                int i = -1;
                String str2 = null;
                while (jsonReader.peek() == JsonToken.NAME) {
                    String e0 = jsonReader.e0();
                    int hashCode = e0.hashCode();
                    if (hashCode != -1106363674) {
                        if (hashCode == 3575610 && e0.equals("type")) {
                            str2 = jsonObjectReader.L();
                            if (str2 == null && i >= 0) {
                                break;
                            }
                        }
                        jsonObjectReader.x();
                        if (str2 == null) {
                        }
                    } else {
                        if (e0.equals("length")) {
                            i = jsonObjectReader.nextInt();
                            if (str2 == null) {
                            }
                        }
                        jsonObjectReader.x();
                        if (str2 == null) {
                        }
                    }
                }
                if (i >= 0) {
                    ItemHeaderInfo itemHeaderInfo = new ItemHeaderInfo(str2, i);
                    inputStreamReader.close();
                    return itemHeaderInfo;
                }
                inputStreamReader.close();
                return null;
            } finally {
            }
        } catch (Throwable th) {
            this.a.getLogger().a(SentryLevel.DEBUG, th, "Error parsing item header", new Object[0]);
            return null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BoundedInputStream extends InputStream {
        public final BufferedInputStream j;
        public long k;

        public BoundedInputStream(BufferedInputStream bufferedInputStream, int i) {
            this.j = bufferedInputStream;
            this.k = i;
        }

        @Override // java.io.InputStream
        public final int available() {
            return Math.min(this.j.available(), (int) this.k);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            NativeEventCollector.c(this.j, this.k);
            this.k = 0L;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            long j = this.k;
            if (j <= 0) {
                return -1;
            }
            int read = this.j.read(bArr, i, Math.min(i2, (int) j));
            if (read > 0) {
                this.k -= read;
            }
            return read;
        }

        @Override // java.io.InputStream
        public final long skip(long j) {
            long skip = this.j.skip(Math.min(j, this.k));
            this.k -= skip;
            return skip;
        }

        @Override // java.io.InputStream
        public final int read() {
            if (this.k <= 0) {
                return -1;
            }
            int read = this.j.read();
            if (read != -1) {
                this.k--;
            }
            return read;
        }
    }
}
