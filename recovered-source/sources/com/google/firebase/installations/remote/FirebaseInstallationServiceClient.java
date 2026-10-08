package com.google.firebase.installations.remote;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.TrafficStats;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.heartbeatinfo.HeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsException;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import defpackage.jb;
import defpackage.k8;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FirebaseInstallationServiceClient {
    public static final Pattern d = Pattern.compile("[0-9]+s");
    public static final Charset e = Charset.forName("UTF-8");
    public final Context a;
    public final Provider b;
    public final RequestLimiter c = new RequestLimiter();

    public FirebaseInstallationServiceClient(Context context, Provider provider) {
        this.a = context;
        this.b = provider;
    }

    public static URL c(String str) {
        try {
            return new URL("https://firebaseinstallations.googleapis.com/v1/".concat(str));
        } catch (MalformedURLException e2) {
            throw new FirebaseInstallationsException(e2.getMessage());
        }
    }

    public static void d(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        String f;
        InputStream errorStream = httpURLConnection.getErrorStream();
        String str4 = null;
        if (errorStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, e));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                }
                str4 = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
            } catch (IOException unused) {
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                bufferedReader.close();
            } catch (IOException unused3) {
            }
        }
        if (!TextUtils.isEmpty(str4)) {
            Log.w("Firebase-Installations", str4);
            if (TextUtils.isEmpty(str)) {
                f = "";
            } else {
                f = jb.f(", ", str);
            }
            Log.w("Firebase-Installations", jb.h("Firebase options used while communicating with Firebase server APIs: ", str2, ", ", str3, f));
        }
    }

    public static long f(String str) {
        Preconditions.a("Invalid Expiration Timestamp.", d.matcher(str).matches());
        if (str != null && str.length() != 0) {
            return Long.parseLong(str.substring(0, str.length() - 1));
        }
        return 0L;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.firebase.installations.remote.AutoValue_TokenResult$Builder] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, com.google.firebase.installations.remote.AutoValue_InstallationResponse$Builder] */
    public static InstallationResponse g(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, e));
        ?? obj = new Object();
        obj.b = 0L;
        obj.d = (byte) (obj.d | 1);
        ?? obj2 = new Object();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("name")) {
                obj2.a = jsonReader.nextString();
            } else if (nextName.equals("fid")) {
                obj2.b = jsonReader.nextString();
            } else if (nextName.equals("refreshToken")) {
                obj2.c = jsonReader.nextString();
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        obj.a = jsonReader.nextString();
                    } else if (nextName2.equals("expiresIn")) {
                        obj.b = f(jsonReader.nextString());
                        obj.d = (byte) (obj.d | 1);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                obj2.d = obj.a();
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return new AutoValue_InstallationResponse(obj2.a, obj2.b, obj2.c, obj2.d, InstallationResponse.ResponseCode.j);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.firebase.installations.remote.AutoValue_TokenResult$Builder] */
    public static TokenResult h(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, e));
        ?? obj = new Object();
        obj.b = 0L;
        obj.d = (byte) (obj.d | 1);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                obj.a = jsonReader.nextString();
            } else if (nextName.equals("expiresIn")) {
                obj.b = f(jsonReader.nextString());
                obj.d = (byte) (obj.d | 1);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        obj.c = TokenResult.ResponseCode.j;
        return obj.a();
    }

    public static void i(HttpURLConnection httpURLConnection, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:19.1.2");
            k(httpURLConnection, jSONObject.toString().getBytes("UTF-8"));
        } catch (JSONException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static void j(HttpURLConnection httpURLConnection) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:19.1.2");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            k(httpURLConnection, jSONObject2.toString().getBytes("UTF-8"));
        } catch (JSONException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static void k(HttpURLConnection httpURLConnection, byte[] bArr) {
        OutputStream outputStream = httpURLConnection.getOutputStream();
        if (outputStream != null) {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
            try {
                gZIPOutputStream.write(bArr);
                try {
                    return;
                } catch (IOException unused) {
                    return;
                }
            } finally {
                try {
                    gZIPOutputStream.close();
                    outputStream.close();
                } catch (IOException unused2) {
                }
            }
        }
        k8.j("Cannot send request to FIS servers. No OutputStream available.");
    }

    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Object, com.google.firebase.installations.remote.AutoValue_InstallationResponse$Builder] */
    public final InstallationResponse a(String str, String str2, String str3, String str4, String str5) {
        int responseCode;
        RequestLimiter requestLimiter = this.c;
        if (requestLimiter.a()) {
            URL c = c("projects/" + str3 + "/installations");
            int i = 0;
            while (true) {
                boolean z = true;
                if (i <= 1) {
                    TrafficStats.setThreadStatsTag(32769);
                    HttpURLConnection e2 = e(c, str);
                    try {
                        try {
                            e2.setRequestMethod("POST");
                            e2.setDoOutput(true);
                            if (str5 != null) {
                                e2.addRequestProperty("x-goog-fis-android-iid-migration-auth", str5);
                            }
                            try {
                                i(e2, str2, str4);
                                responseCode = e2.getResponseCode();
                                requestLimiter.b(responseCode);
                                if (responseCode < 200 || responseCode >= 300) {
                                    z = false;
                                }
                            } catch (IOException | AssertionError unused) {
                            }
                        } catch (IOException | AssertionError unused2) {
                        }
                        if (z) {
                            return g(e2);
                        }
                        d(e2, str4, str, str3);
                        if (responseCode != 429) {
                            if (responseCode < 500 || responseCode >= 600) {
                                break;
                            }
                            i++;
                        } else {
                            throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                        }
                    } finally {
                        e2.disconnect();
                        TrafficStats.clearThreadStatsTag();
                    }
                } else {
                    throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
                }
            }
            Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
            ?? obj = new Object();
            return new AutoValue_InstallationResponse(obj.a, obj.b, obj.c, obj.d, InstallationResponse.ResponseCode.k);
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, com.google.firebase.installations.remote.AutoValue_TokenResult$Builder] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.Object, com.google.firebase.installations.remote.AutoValue_TokenResult$Builder] */
    public final TokenResult b(String str, String str2, String str3, String str4) {
        int responseCode;
        boolean z;
        TokenResult h;
        RequestLimiter requestLimiter = this.c;
        if (requestLimiter.a()) {
            URL c = c("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
            for (int i = 0; i <= 1; i++) {
                TrafficStats.setThreadStatsTag(32771);
                HttpURLConnection e2 = e(c, str);
                try {
                    try {
                        e2.setRequestMethod("POST");
                        e2.addRequestProperty("Authorization", "FIS_v2 " + str4);
                        e2.setDoOutput(true);
                        j(e2);
                        responseCode = e2.getResponseCode();
                        requestLimiter.b(responseCode);
                        if (responseCode >= 200 && responseCode < 300) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } catch (IOException | AssertionError unused) {
                    }
                    if (z) {
                        h = h(e2);
                    } else {
                        d(e2, null, str, str3);
                        if (responseCode != 401 && responseCode != 404) {
                            if (responseCode != 429) {
                                if (responseCode < 500 || responseCode >= 600) {
                                    Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                                    ?? obj = new Object();
                                    obj.b = 0L;
                                    obj.d = (byte) (1 | obj.d);
                                    obj.c = TokenResult.ResponseCode.k;
                                    h = obj.a();
                                }
                            } else {
                                throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                            }
                        } else {
                            ?? obj2 = new Object();
                            obj2.b = 0L;
                            obj2.d = (byte) (1 | obj2.d);
                            obj2.c = TokenResult.ResponseCode.l;
                            h = obj2.a();
                        }
                    }
                    return h;
                } finally {
                    e2.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a9 A[Catch: NameNotFoundException -> 0x00c2, TryCatch #2 {NameNotFoundException -> 0x00c2, blocks: (B:8:0x006a, B:10:0x0082, B:17:0x008c, B:21:0x0099, B:23:0x00a9, B:27:0x00c4, B:29:0x00ce, B:31:0x00e7), top: B:7:0x006a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c4 A[Catch: NameNotFoundException -> 0x00c2, TryCatch #2 {NameNotFoundException -> 0x00c2, blocks: (B:8:0x006a, B:10:0x0082, B:17:0x008c, B:21:0x0099, B:23:0x00a9, B:27:0x00c4, B:29:0x00ce, B:31:0x00e7), top: B:7:0x006a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final HttpURLConnection e(URL url, String str) {
        PackageInfo packageInfo;
        Signature[] signatureArr;
        byte[] bArr;
        MessageDigest messageDigest;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            Context context = this.a;
            httpURLConnection.addRequestProperty("X-Android-Package", context.getPackageName());
            HeartBeatController heartBeatController = (HeartBeatController) this.b.get();
            if (heartBeatController != null) {
                try {
                    httpURLConnection.addRequestProperty("x-firebase-client", (String) Tasks.a(((DefaultHeartBeatController) heartBeatController).b()));
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    Log.w("ContentValues", "Failed to get heartbeats header", e2);
                } catch (ExecutionException e3) {
                    Log.w("ContentValues", "Failed to get heartbeats header", e3);
                }
            }
            String str2 = null;
            try {
                packageInfo = Wrappers.a(context).a.getPackageManager().getPackageInfo(context.getPackageName(), 64);
                signatureArr = packageInfo.signatures;
            } catch (PackageManager.NameNotFoundException e4) {
                Log.e("ContentValues", "No such package: " + context.getPackageName(), e4);
            }
            if (signatureArr != null && signatureArr.length == 1) {
                int i = 0;
                while (true) {
                    if (i < 2) {
                        try {
                            messageDigest = MessageDigest.getInstance("SHA1");
                        } catch (NoSuchAlgorithmException unused) {
                        }
                        if (messageDigest != null) {
                            break;
                        }
                        i++;
                    } else {
                        messageDigest = null;
                        break;
                    }
                }
                if (messageDigest != null) {
                    bArr = messageDigest.digest(packageInfo.signatures[0].toByteArray());
                    if (bArr != null) {
                        Log.e("ContentValues", "Could not get fingerprint hash for package: " + context.getPackageName());
                    } else {
                        int length = bArr.length;
                        StringBuilder sb = new StringBuilder(length + length);
                        for (int i2 = 0; i2 < length; i2++) {
                            char[] cArr = Hex.a;
                            sb.append(cArr[(bArr[i2] & 240) >>> 4]);
                            sb.append(cArr[bArr[i2] & 15]);
                        }
                        str2 = sb.toString();
                    }
                    httpURLConnection.addRequestProperty("X-Android-Cert", str2);
                    httpURLConnection.addRequestProperty("x-goog-api-key", str);
                    return httpURLConnection;
                }
            }
            bArr = null;
            if (bArr != null) {
            }
            httpURLConnection.addRequestProperty("X-Android-Cert", str2);
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused2) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
        }
    }
}
