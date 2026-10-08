package com.google.android.datatransport.cct;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.cct.CctTransportBackend;
import com.google.android.datatransport.cct.internal.AndroidClientInfo;
import com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder;
import com.google.android.datatransport.cct.internal.BatchedLogRequest;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.LogEvent;
import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.android.datatransport.cct.internal.LogResponse;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import defpackage.jb;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CctTransportBackend implements TransportBackend {
    public final DataEncoder a;
    public final ConnectivityManager b;
    public final Context c;
    public final URL d;
    public final Clock e;
    public final Clock f;
    public final int g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class HttpRequest {
        public final URL a;
        public final BatchedLogRequest b;
        public final String c;

        public HttpRequest(URL url, BatchedLogRequest batchedLogRequest, String str) {
            this.a = url;
            this.b = batchedLogRequest;
            this.c = str;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class HttpResponse {
        public final int a;
        public final URL b;
        public final long c;

        public HttpResponse(int i, URL url, long j) {
            this.a = i;
            this.b = url;
            this.c = j;
        }
    }

    public CctTransportBackend(Context context, Clock clock, Clock clock2) {
        JsonDataEncoderBuilder jsonDataEncoderBuilder = new JsonDataEncoderBuilder();
        AutoBatchedLogRequestEncoder.a.a(jsonDataEncoderBuilder);
        jsonDataEncoderBuilder.d = true;
        this.a = jsonDataEncoderBuilder.a();
        this.c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = c(CCTDestination.c);
        this.e = clock2;
        this.f = clock;
        this.g = 130000;
    }

    public static URL c(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(jb.f("Invalid url: ", str), e);
        }
    }

    /* JADX WARN: Type inference failed for: r13v7, types: [com.google.android.datatransport.cct.a] */
    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    public final BackendResponse a(BackendRequest backendRequest) {
        int i;
        String str;
        URL c;
        Object a;
        LogEvent.Builder b;
        HashMap hashMap = new HashMap();
        for (EventInternal eventInternal : backendRequest.b()) {
            String i2 = eventInternal.i();
            if (!hashMap.containsKey(i2)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(eventInternal);
                hashMap.put(i2, arrayList);
            } else {
                ((List) hashMap.get(i2)).add(eventInternal);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = hashMap.entrySet().iterator();
        while (true) {
            i = 5;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            EventInternal eventInternal2 = (EventInternal) ((List) entry.getValue()).get(0);
            LogRequest.Builder a2 = LogRequest.a();
            QosTier qosTier = QosTier.j;
            a2.d();
            a2.e(this.f.a());
            a2.f(this.e.a());
            ClientInfo.Builder a3 = ClientInfo.a();
            a3.c();
            AndroidClientInfo.Builder a4 = AndroidClientInfo.a();
            a4.m(Integer.valueOf(eventInternal2.f("sdk-version")));
            a4.j(eventInternal2.b("model"));
            a4.f(eventInternal2.b("hardware"));
            a4.d(eventInternal2.b("device"));
            a4.l(eventInternal2.b("product"));
            a4.k(eventInternal2.b("os-uild"));
            a4.h(eventInternal2.b("manufacturer"));
            a4.e(eventInternal2.b("fingerprint"));
            a4.c(eventInternal2.b("country"));
            a4.g(eventInternal2.b("locale"));
            a4.i(eventInternal2.b("mcc_mnc"));
            a4.b(eventInternal2.b("application_build"));
            a3.b(a4.a());
            a2.b(a3.a());
            try {
                a2.g(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                a2.h((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (EventInternal eventInternal3 : (List) entry.getValue()) {
                EncodedPayload d = eventInternal3.d();
                Encoding encoding = d.a;
                byte[] bArr = d.b;
                if (encoding.equals(new Encoding("proto"))) {
                    b = LogEvent.b(bArr);
                } else if (encoding.equals(new Encoding("json"))) {
                    b = LogEvent.a(new String(bArr, Charset.forName("UTF-8")));
                } else {
                    String concat = "TRuntime.".concat("CctTransportBackend");
                    if (Log.isLoggable(concat, 5)) {
                        Log.w(concat, "Received event of unsupported encoding " + encoding + ". Skipping...");
                    }
                }
                b.c(eventInternal3.e());
                b.d(eventInternal3.j());
                b.f(eventInternal3.g());
                NetworkConnectionInfo.Builder a5 = NetworkConnectionInfo.a();
                a5.c((NetworkConnectionInfo.NetworkType) NetworkConnectionInfo.NetworkType.j.get(eventInternal3.f("net-type")));
                a5.b((NetworkConnectionInfo.MobileSubtype) NetworkConnectionInfo.MobileSubtype.j.get(eventInternal3.f("mobile-subtype")));
                b.e(a5.a());
                if (eventInternal3.c() != null) {
                    b.b(eventInternal3.c());
                }
                arrayList3.add(b.a());
            }
            a2.c(arrayList3);
            arrayList2.add(a2.a());
        }
        BatchedLogRequest a6 = BatchedLogRequest.a(arrayList2);
        if (backendRequest.c() != null) {
            try {
                CCTDestination a7 = CCTDestination.a(backendRequest.c());
                str = a7.b;
                if (str == null) {
                    str = null;
                }
                c = c(a7.a);
            } catch (IllegalArgumentException unused2) {
                return BackendResponse.a();
            }
        } else {
            c = this.d;
            str = null;
        }
        try {
            HttpRequest httpRequest = new HttpRequest(c, a6, str);
            ?? r13 = new Object() { // from class: com.google.android.datatransport.cct.a
                public final Object a(Object obj) {
                    InputStream inputStream;
                    CctTransportBackend.HttpRequest httpRequest2 = (CctTransportBackend.HttpRequest) obj;
                    URL url = httpRequest2.a;
                    String concat2 = "TRuntime.".concat("CctTransportBackend");
                    if (Log.isLoggable(concat2, 4)) {
                        Log.i(concat2, String.format("Making request to: %s", url));
                    }
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    httpURLConnection.setConnectTimeout(30000);
                    CctTransportBackend cctTransportBackend = CctTransportBackend.this;
                    httpURLConnection.setReadTimeout(cctTransportBackend.g);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.9 android/");
                    httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                    httpURLConnection.setRequestProperty("Content-Type", "application/json");
                    httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                    String str2 = httpRequest2.c;
                    if (str2 != null) {
                        httpURLConnection.setRequestProperty("X-Goog-Api-Key", str2);
                    }
                    try {
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        try {
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                            try {
                                cctTransportBackend.a.a(httpRequest2.b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                                gZIPOutputStream.close();
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                                int responseCode = httpURLConnection.getResponseCode();
                                Integer valueOf = Integer.valueOf(responseCode);
                                String concat3 = "TRuntime.".concat("CctTransportBackend");
                                if (Log.isLoggable(concat3, 4)) {
                                    Log.i(concat3, String.format("Status Code: %d", valueOf));
                                }
                                Logging.a("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                                Logging.a("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                                if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
                                    if (responseCode != 200) {
                                        return new CctTransportBackend.HttpResponse(responseCode, null, 0L);
                                    }
                                    InputStream inputStream2 = httpURLConnection.getInputStream();
                                    try {
                                        if ("gzip".equals(httpURLConnection.getHeaderField("Content-Encoding"))) {
                                            inputStream = new GZIPInputStream(inputStream2);
                                        } else {
                                            inputStream = inputStream2;
                                        }
                                        try {
                                            CctTransportBackend.HttpResponse httpResponse = new CctTransportBackend.HttpResponse(responseCode, null, LogResponse.a(new BufferedReader(new InputStreamReader(inputStream))).b());
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                            if (inputStream2 != null) {
                                                inputStream2.close();
                                            }
                                            return httpResponse;
                                        } finally {
                                        }
                                    } catch (Throwable th) {
                                        if (inputStream2 != null) {
                                            try {
                                                inputStream2.close();
                                            } catch (Throwable th2) {
                                                th.addSuppressed(th2);
                                            }
                                        }
                                        throw th;
                                    }
                                }
                                return new CctTransportBackend.HttpResponse(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                            } finally {
                            }
                        } catch (Throwable th3) {
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (Throwable th4) {
                                    th3.addSuppressed(th4);
                                }
                            }
                            throw th3;
                        }
                    } catch (EncodingException e) {
                        e = e;
                        Logging.b("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                        return new CctTransportBackend.HttpResponse(400, null, 0L);
                    } catch (ConnectException e2) {
                        e = e2;
                        Logging.b("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                        return new CctTransportBackend.HttpResponse(500, null, 0L);
                    } catch (UnknownHostException e3) {
                        e = e3;
                        Logging.b("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                        return new CctTransportBackend.HttpResponse(500, null, 0L);
                    } catch (IOException e4) {
                        e = e4;
                        Logging.b("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                        return new CctTransportBackend.HttpResponse(400, null, 0L);
                    }
                }
            };
            do {
                a = r13.a(httpRequest);
                URL url = ((HttpResponse) a).b;
                if (url != null) {
                    Logging.a("CctTransportBackend", "Following redirect to: %s", url);
                    httpRequest = new HttpRequest(url, httpRequest.b, httpRequest.c);
                } else {
                    httpRequest = null;
                }
                if (httpRequest == null) {
                    break;
                }
                i--;
            } while (i >= 1);
            HttpResponse httpResponse = (HttpResponse) a;
            int i3 = httpResponse.a;
            if (i3 == 200) {
                return BackendResponse.e(httpResponse.c);
            }
            if (i3 < 500 && i3 != 404) {
                if (i3 == 400) {
                    return BackendResponse.d();
                }
                return BackendResponse.a();
            }
            return BackendResponse.f();
        } catch (IOException e) {
            Logging.b("CctTransportBackend", "Could not make request to the backend", e);
            return BackendResponse.f();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(1:3)(1:22)|4|(1:6)(7:17|(1:19)(1:20)|8|9|10|11|12)|7|8|9|10|11|12) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00f2, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00f3, code lost:
    
        com.google.android.datatransport.runtime.logging.Logging.b("CctTransportBackend", "Unable to find version code for package", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a5, code lost:
    
        if (((com.google.android.datatransport.cct.internal.NetworkConnectionInfo.MobileSubtype) com.google.android.datatransport.cct.internal.NetworkConnectionInfo.MobileSubtype.j.get(r0)) != null) goto L15;
     */
    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EventInternal b(EventInternal eventInternal) {
        int type;
        int subtype;
        NetworkInfo activeNetworkInfo = this.b.getActiveNetworkInfo();
        EventInternal.Builder k = eventInternal.k();
        ((HashMap) k.c()).put("sdk-version", String.valueOf(Build.VERSION.SDK_INT));
        k.a("model", Build.MODEL);
        k.a("hardware", Build.HARDWARE);
        k.a("device", Build.DEVICE);
        k.a("product", Build.PRODUCT);
        k.a("os-uild", Build.ID);
        k.a("manufacturer", Build.MANUFACTURER);
        k.a("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        ((HashMap) k.c()).put("tz-offset", String.valueOf(TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000));
        int i = -1;
        if (activeNetworkInfo == null) {
            SparseArray sparseArray = NetworkConnectionInfo.NetworkType.j;
            type = -1;
        } else {
            type = activeNetworkInfo.getType();
        }
        ((HashMap) k.c()).put("net-type", String.valueOf(type));
        if (activeNetworkInfo == null) {
            SparseArray sparseArray2 = NetworkConnectionInfo.MobileSubtype.j;
        } else {
            subtype = activeNetworkInfo.getSubtype();
            if (subtype == -1) {
                SparseArray sparseArray3 = NetworkConnectionInfo.MobileSubtype.j;
                subtype = 100;
            }
            ((HashMap) k.c()).put("mobile-subtype", String.valueOf(subtype));
            k.a("country", Locale.getDefault().getCountry());
            k.a("locale", Locale.getDefault().getLanguage());
            Context context = this.c;
            k.a("mcc_mnc", ((TelephonyManager) context.getSystemService("phone")).getSimOperator());
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            k.a("application_build", Integer.toString(i));
            return k.b();
        }
        subtype = 0;
        ((HashMap) k.c()).put("mobile-subtype", String.valueOf(subtype));
        k.a("country", Locale.getDefault().getCountry());
        k.a("locale", Locale.getDefault().getLanguage());
        Context context2 = this.c;
        k.a("mcc_mnc", ((TelephonyManager) context2.getSystemService("phone")).getSimOperator());
        i = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode;
        k.a("application_build", Integer.toString(i));
        return k.b();
    }
}
