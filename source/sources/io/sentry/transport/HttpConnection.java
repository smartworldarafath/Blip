package io.sentry.transport;

import defpackage.q;
import io.sentry.DataCategory;
import io.sentry.RequestDetails;
import io.sentry.SentryEnvelope;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.transport.TransportResult;
import io.sentry.util.StringUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class HttpConnection {
    public static final Charset e = Charset.forName("UTF-8");
    public final Proxy a;
    public final RequestDetails b;
    public final SentryOptions c;
    public final RateLimiter d;

    public HttpConnection(SentryOptions sentryOptions, RequestDetails requestDetails, RateLimiter rateLimiter) {
        Proxy proxy;
        this.b = requestDetails;
        this.c = sentryOptions;
        this.d = rateLimiter;
        SentryOptions.Proxy proxy2 = sentryOptions.getProxy();
        if (proxy2 != null) {
            String str = proxy2.b;
            String str2 = proxy2.a;
            if (str != null && str2 != null) {
                try {
                    proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(str2, Integer.parseInt(str)));
                } catch (NumberFormatException e2) {
                    this.c.getLogger().a(SentryLevel.ERROR, e2, q.i("Failed to parse Sentry Proxy port: ", str, ". Proxy is ignored"), new Object[0]);
                }
                this.a = proxy;
                if (proxy == null && sentryOptions.getProxy() != null) {
                    String str3 = sentryOptions.getProxy().c;
                    String str4 = sentryOptions.getProxy().d;
                    if (str3 != null && str4 != null) {
                        Authenticator.setDefault(new ProxyAuthenticator(str3, str4));
                        return;
                    }
                    return;
                }
            }
        }
        proxy = null;
        this.a = proxy;
        if (proxy == null) {
        }
    }

    public static void a(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.getInputStream().close();
        } catch (IOException unused) {
        } finally {
            httpURLConnection.disconnect();
        }
    }

    public static String b(HttpURLConnection httpURLConnection) {
        try {
            InputStream errorStream = httpURLConnection.getErrorStream();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, e));
                try {
                    StringBuilder sb = new StringBuilder();
                    boolean z = true;
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (!z) {
                            sb.append("\n");
                        }
                        sb.append(readLine);
                        z = false;
                    }
                    String sb2 = sb.toString();
                    bufferedReader.close();
                    if (errorStream != null) {
                        errorStream.close();
                    }
                    return sb2;
                } finally {
                }
            } finally {
            }
        } catch (IOException unused) {
            return "Failed to obtain error message while analyzing send failure.";
        }
    }

    public final TransportResult c(HttpURLConnection httpURLConnection) {
        SentryOptions sentryOptions = this.c;
        try {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                e(httpURLConnection, responseCode);
                if (responseCode == 200) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Envelope sent successfully.", new Object[0]);
                    return TransportResult.SuccessTransportResult.a;
                }
                if (responseCode == 413) {
                    sentryOptions.getLogger().c(SentryLevel.ERROR, "Envelope was discarded by the server because it was too large. Consider reducing the size of events, breadcrumbs, or attachments. You can use the `SentryOptions.onOversizedEvent` callback to customize how oversized events are handled.", new Object[0]);
                } else {
                    sentryOptions.getLogger().c(SentryLevel.ERROR, "Request failed, API returned %s", Integer.valueOf(responseCode));
                }
                if (sentryOptions.isDebug()) {
                    sentryOptions.getLogger().c(SentryLevel.ERROR, "%s", b(httpURLConnection));
                }
                return new TransportResult.ErrorTransportResult(responseCode);
            } catch (IOException e2) {
                sentryOptions.getLogger().a(SentryLevel.ERROR, e2, "Error reading and logging the response stream", new Object[0]);
                a(httpURLConnection);
                return new TransportResult.ErrorTransportResult(-1);
            }
        } finally {
            a(httpURLConnection);
        }
    }

    public final TransportResult d(SentryEnvelope sentryEnvelope) {
        URLConnection openConnection;
        OutputStream outputStream;
        SentryOptions sentryOptions = this.c;
        sentryOptions.getSocketTagger().b();
        RequestDetails requestDetails = this.b;
        URL url = requestDetails.a;
        Proxy proxy = this.a;
        if (proxy == null) {
            openConnection = url.openConnection();
        } else {
            openConnection = url.openConnection(proxy);
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        for (Map.Entry entry : requestDetails.b.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/x-sentry-envelope");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        httpURLConnection.setRequestProperty("Connection", "close");
        httpURLConnection.setConnectTimeout(sentryOptions.getConnectionTimeoutMillis());
        httpURLConnection.setReadTimeout(sentryOptions.getReadTimeoutMillis());
        SSLSocketFactory sslSocketFactory = sentryOptions.getSslSocketFactory();
        if ((httpURLConnection instanceof HttpsURLConnection) && sslSocketFactory != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sslSocketFactory);
        }
        httpURLConnection.connect();
        try {
            outputStream = httpURLConnection.getOutputStream();
        } catch (Throwable th) {
            try {
                sentryOptions.getLogger().a(SentryLevel.ERROR, th, "An exception occurred while submitting the envelope to the Sentry server.", new Object[0]);
            } finally {
                c(httpURLConnection);
                sentryOptions.getSocketTagger().a();
            }
        }
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                sentryOptions.getSerializer().b(sentryEnvelope, gZIPOutputStream);
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                return c(httpURLConnection);
            } finally {
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a4 A[Catch: IllegalArgumentException -> 0x00a9, TryCatch #2 {IllegalArgumentException -> 0x00a9, blocks: (B:20:0x0075, B:22:0x0079, B:25:0x0080, B:27:0x008f, B:29:0x009c, B:31:0x00a4, B:39:0x00ab), top: B:19:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ab A[Catch: IllegalArgumentException -> 0x00a9, TRY_LEAVE, TryCatch #2 {IllegalArgumentException -> 0x00a9, blocks: (B:20:0x0075, B:22:0x0079, B:25:0x0080, B:27:0x008f, B:29:0x009c, B:31:0x00a4, B:39:0x00ab), top: B:19:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(HttpURLConnection httpURLConnection, int i) {
        long parseDouble;
        double d;
        long parseDouble2;
        DataCategory dataCategory;
        String str;
        String headerField = httpURLConnection.getHeaderField("Retry-After");
        String headerField2 = httpURLConnection.getHeaderField("X-Sentry-Rate-Limits");
        RateLimiter rateLimiter = this.d;
        SentryOptions sentryOptions = rateLimiter.k;
        CurrentDateProvider currentDateProvider = rateLimiter.j;
        double d2 = 1000.0d;
        if (headerField2 != null) {
            int i2 = -1;
            String[] split = headerField2.split(",", -1);
            int length = split.length;
            int i3 = 0;
            int i4 = 0;
            while (i4 < length) {
                String[] split2 = split[i4].replace(" ", "").split(":", i2);
                if (split2.length > 0) {
                    String str2 = split2[i3];
                    if (str2 != null) {
                        try {
                            parseDouble2 = (long) (Double.parseDouble(str2) * d2);
                        } catch (NumberFormatException unused) {
                        }
                        d = d2;
                        if (split2.length <= 1) {
                            String str3 = split2[1];
                            currentDateProvider.getClass();
                            Date date = new Date(parseDouble2 + System.currentTimeMillis());
                            if (str3 != null && !str3.isEmpty()) {
                                String[] split3 = str3.split(";", i2);
                                int length2 = split3.length;
                                int i5 = i3;
                                while (i5 < length2) {
                                    String str4 = split3[i5];
                                    DataCategory dataCategory2 = DataCategory.Unknown;
                                    try {
                                        Charset charset = StringUtils.a;
                                    } catch (IllegalArgumentException e2) {
                                        sentryOptions.getLogger().a(SentryLevel.INFO, e2, "Unknown category: %s", str4);
                                    }
                                    if (str4 != null && !str4.isEmpty()) {
                                        String[] split4 = StringUtils.b.split(str4, i2);
                                        StringBuilder sb = new StringBuilder();
                                        int length3 = split4.length;
                                        for (int i6 = i3; i6 < length3; i6++) {
                                            sb.append(StringUtils.a(split4[i6]));
                                        }
                                        str = sb.toString();
                                        if (str == null) {
                                            dataCategory2 = DataCategory.valueOf(str);
                                        } else {
                                            sentryOptions.getLogger().c(SentryLevel.ERROR, "Couldn't capitalize: %s", str4);
                                        }
                                        dataCategory = dataCategory2;
                                        if (DataCategory.Unknown.equals(dataCategory)) {
                                            rateLimiter.a(dataCategory, date);
                                        }
                                        i5++;
                                        i2 = -1;
                                        i3 = 0;
                                    }
                                    str = str4;
                                    if (str == null) {
                                    }
                                    dataCategory = dataCategory2;
                                    if (DataCategory.Unknown.equals(dataCategory)) {
                                    }
                                    i5++;
                                    i2 = -1;
                                    i3 = 0;
                                }
                            } else {
                                rateLimiter.a(DataCategory.All, date);
                            }
                        }
                    }
                    parseDouble2 = 60000;
                    d = d2;
                    if (split2.length <= 1) {
                    }
                } else {
                    d = d2;
                }
                i4++;
                d2 = d;
                i2 = -1;
                i3 = 0;
            }
            return;
        }
        if (i == 429) {
            if (headerField != null) {
                try {
                    parseDouble = (long) (Double.parseDouble(headerField) * 1000.0d);
                } catch (NumberFormatException unused2) {
                }
                currentDateProvider.getClass();
                rateLimiter.a(DataCategory.All, new Date(System.currentTimeMillis() + parseDouble));
            }
            parseDouble = 60000;
            currentDateProvider.getClass();
            rateLimiter.a(DataCategory.All, new Date(System.currentTimeMillis() + parseDouble));
        }
    }
}
