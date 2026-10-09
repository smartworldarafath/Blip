package io.sentry;

import defpackage.q;
import io.sentry.clientreport.ClientReport;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.profiling.SentryProfile;
import io.sentry.util.FileUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.Base64;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryEnvelopeItem {
    public static final Charset d = Charset.forName("UTF-8");
    public final SentryEnvelopeItemHeader a;
    public final Callable b;
    public byte[] c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class CachedItem {
        public byte[] a;
        public final Callable b;

        public CachedItem(Callable callable) {
            this.b = callable;
        }

        public final byte[] a() {
            if (this.a == null) {
                this.a = (byte[]) this.b.call();
            }
            byte[] bArr = this.a;
            if (bArr != null) {
                return bArr;
            }
            return new byte[0];
        }
    }

    public SentryEnvelopeItem(SentryEnvelopeItemHeader sentryEnvelopeItemHeader, byte[] bArr) {
        this.a = sentryEnvelopeItemHeader;
        this.c = bArr;
        this.b = null;
    }

    public static void a(long j, long j2, String str) {
        if (j <= j2) {
        } else {
            throw new Exception(String.format("Dropping attachment with filename '%s', because the size of the passed bytes with %d bytes is bigger than the maximum allowed attachment size of %d bytes.", str, Long.valueOf(j), Long.valueOf(j2)));
        }
    }

    public static SentryEnvelopeItem b(ISerializer iSerializer, ClientReport clientReport) {
        Objects.b(iSerializer, "ISerializer is required.");
        CachedItem cachedItem = new CachedItem(new i(iSerializer, clientReport, 2));
        return new SentryEnvelopeItem(new SentryEnvelopeItemHeader(SentryItemType.resolve(clientReport), new j(9, cachedItem), "application/json", null, null), new j(10, cachedItem));
    }

    public static SentryEnvelopeItem c(final ProfileChunk profileChunk, final ISerializer iSerializer, final IProfileConverter iProfileConverter) {
        String str;
        final File file = profileChunk.t;
        CachedItem cachedItem = new CachedItem(new Callable() { // from class: io.sentry.m
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ISerializer iSerializer2 = iSerializer;
                Charset charset = SentryEnvelopeItem.d;
                File file2 = file;
                ProfileChunk profileChunk2 = profileChunk;
                if (file2 != null) {
                    if (file2.exists()) {
                        if ("java".equals(profileChunk2.o)) {
                            NoOpProfileConverter noOpProfileConverter = NoOpProfileConverter.a;
                            IProfileConverter iProfileConverter2 = iProfileConverter;
                            if (noOpProfileConverter != iProfileConverter2) {
                                try {
                                    file2.getAbsolutePath();
                                    ((NoOpProfileConverter) iProfileConverter2).getClass();
                                    profileChunk2.v = new SentryProfile();
                                } catch (Exception e) {
                                    throw new Exception("Profile conversion failed", e);
                                }
                            } else {
                                throw new Exception("No ProfileConverter available, dropping chunk.");
                            }
                        } else {
                            try {
                                String str2 = new String(Base64.a(FileUtils.b(52428800L, file2.getPath())), "US-ASCII");
                                if (!str2.isEmpty()) {
                                    profileChunk2.u = str2;
                                } else {
                                    throw new Exception("Profiling trace file is empty");
                                }
                            } catch (UnsupportedEncodingException e2) {
                                throw new AssertionError(e2);
                            }
                        }
                    } else {
                        throw new Exception(q.i("Dropping profile chunk, because the file '", file2.getName(), "' doesn't exists"));
                    }
                }
                try {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, SentryEnvelopeItem.d));
                            try {
                                iSerializer2.a(profileChunk2, bufferedWriter);
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                bufferedWriter.close();
                                byteArrayOutputStream.close();
                                return byteArray;
                            } finally {
                            }
                        } catch (Throwable th) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e3) {
                        throw new Exception("Failed to serialize profile chunk\n" + e3.getMessage());
                    }
                } finally {
                    if (file2 != null) {
                        file2.delete();
                    }
                }
            }
        });
        SentryItemType sentryItemType = SentryItemType.ProfileChunk;
        j jVar = new j(14, cachedItem);
        if (file != null) {
            str = file.getName();
        } else {
            str = null;
        }
        return new SentryEnvelopeItem(new SentryEnvelopeItemHeader(sentryItemType, jVar, "application-json", str, (String) null, profileChunk.o, (Integer) null), new j(15, cachedItem));
    }

    public static SentryEnvelopeItem d(ISerializer iSerializer, Session session) {
        Objects.b(iSerializer, "ISerializer is required.");
        Objects.b(session, "Session is required.");
        CachedItem cachedItem = new CachedItem(new i(iSerializer, session, 3));
        return new SentryEnvelopeItem(new SentryEnvelopeItemHeader(SentryItemType.Session, new j(16, cachedItem), "application/json", null, null), new j(17, cachedItem));
    }

    public static byte[] j(LinkedHashMap linkedHashMap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write((byte) (linkedHashMap.size() | 128));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                byte[] bytes = ((String) entry.getKey()).getBytes(d);
                int length = bytes.length;
                byteArrayOutputStream.write(-39);
                byteArrayOutputStream.write((byte) length);
                byteArrayOutputStream.write(bytes);
                byte[] bArr = (byte[]) entry.getValue();
                int length2 = bArr.length;
                byteArrayOutputStream.write(-58);
                byteArrayOutputStream.write(ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(length2).array());
                byteArrayOutputStream.write(bArr);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final ClientReport e(ISerializer iSerializer) {
        SentryEnvelopeItemHeader sentryEnvelopeItemHeader = this.a;
        if (sentryEnvelopeItemHeader != null && sentryEnvelopeItemHeader.n == SentryItemType.ClientReport) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(f()), d));
            try {
                ClientReport clientReport = (ClientReport) iSerializer.d(bufferedReader, ClientReport.class);
                bufferedReader.close();
                return clientReport;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }

    public final byte[] f() {
        Callable callable;
        if (this.c == null && (callable = this.b) != null) {
            this.c = (byte[]) callable.call();
        }
        return this.c;
    }

    public final SentryLogEvents g(ISerializer iSerializer) {
        SentryEnvelopeItemHeader sentryEnvelopeItemHeader = this.a;
        if (sentryEnvelopeItemHeader != null && sentryEnvelopeItemHeader.n == SentryItemType.Log) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(f()), d));
            try {
                SentryLogEvents sentryLogEvents = (SentryLogEvents) iSerializer.d(bufferedReader, SentryLogEvents.class);
                bufferedReader.close();
                return sentryLogEvents;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }

    public final SentryMetricsEvents h(ISerializer iSerializer) {
        SentryEnvelopeItemHeader sentryEnvelopeItemHeader = this.a;
        if (sentryEnvelopeItemHeader != null && sentryEnvelopeItemHeader.n == SentryItemType.TraceMetric) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(f()), d));
            try {
                SentryMetricsEvents sentryMetricsEvents = (SentryMetricsEvents) iSerializer.d(bufferedReader, SentryMetricsEvents.class);
                bufferedReader.close();
                return sentryMetricsEvents;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }

    public final SentryTransaction i(ISerializer iSerializer) {
        SentryEnvelopeItemHeader sentryEnvelopeItemHeader = this.a;
        if (sentryEnvelopeItemHeader != null && sentryEnvelopeItemHeader.n == SentryItemType.Transaction) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(f()), d));
            try {
                SentryTransaction sentryTransaction = (SentryTransaction) iSerializer.d(bufferedReader, SentryTransaction.class);
                bufferedReader.close();
                return sentryTransaction;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }

    public SentryEnvelopeItem(SentryEnvelopeItemHeader sentryEnvelopeItemHeader, Callable callable) {
        this.a = sentryEnvelopeItemHeader;
        this.b = callable;
        this.c = null;
    }
}
