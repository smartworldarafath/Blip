package com.google.firebase.installations.local;

import android.util.Log;
import com.google.firebase.FirebaseApp;
import io.sentry.d;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PersistedInstallation {
    public File a;
    public final FirebaseApp b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RegistrationStatus {
        public static final RegistrationStatus j;
        public static final RegistrationStatus k;
        public static final RegistrationStatus l;
        public static final RegistrationStatus m;
        public static final RegistrationStatus n;
        public static final /* synthetic */ RegistrationStatus[] o;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, com.google.firebase.installations.local.PersistedInstallation$RegistrationStatus] */
        static {
            ?? r0 = new Enum("ATTEMPT_MIGRATION", 0);
            j = r0;
            ?? r1 = new Enum("NOT_GENERATED", 1);
            k = r1;
            ?? r2 = new Enum("UNREGISTERED", 2);
            l = r2;
            ?? r3 = new Enum("REGISTERED", 3);
            m = r3;
            ?? r4 = new Enum("REGISTER_ERROR", 4);
            n = r4;
            o = new RegistrationStatus[]{r0, r1, r2, r3, r4};
        }

        public static RegistrationStatus valueOf(String str) {
            return (RegistrationStatus) Enum.valueOf(RegistrationStatus.class, str);
        }

        public static RegistrationStatus[] values() {
            return (RegistrationStatus[]) o.clone();
        }
    }

    public PersistedInstallation(FirebaseApp firebaseApp) {
        this.b = firebaseApp;
    }

    public final File a() {
        if (this.a == null) {
            synchronized (this) {
                try {
                    if (this.a == null) {
                        String str = "PersistedInstallation." + this.b.c() + ".json";
                        FirebaseApp firebaseApp = this.b;
                        firebaseApp.a();
                        File file = new File(firebaseApp.a.getNoBackupFilesDir(), str);
                        this.a = file;
                        if (file.exists()) {
                            return this.a;
                        }
                        FirebaseApp firebaseApp2 = this.b;
                        firebaseApp2.a();
                        File file2 = new File(firebaseApp2.a.getFilesDir(), str);
                        if (file2.exists() && !file2.renameTo(this.a)) {
                            Log.e("PersistedInstallation", "Unable to move the file from back up to non back up directory", new IOException("Unable to move the file from back up to non back up directory"));
                            return file2;
                        }
                    }
                } finally {
                }
            }
        }
        return this.a;
    }

    public final void b(PersistedInstallationEntry persistedInstallationEntry) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", ((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).b);
            jSONObject.put("Status", ((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).c.ordinal());
            jSONObject.put("AuthToken", ((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).d);
            jSONObject.put("RefreshToken", ((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).e);
            jSONObject.put("TokenCreationEpochInSecs", ((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).g);
            jSONObject.put("ExpiresInSecs", ((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).f);
            jSONObject.put("FisError", ((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).h);
            FirebaseApp firebaseApp = this.b;
            firebaseApp.a();
            File createTempFile = File.createTempFile("PersistedInstallation", "tmp", firebaseApp.a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (!createTempFile.renameTo(a())) {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, com.google.firebase.installations.local.AutoValue_PersistedInstallationEntry$Builder] */
    public final PersistedInstallationEntry c() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(a());
            while (true) {
                try {
                    int read = fileInputStream.read(bArr, 0, 16384);
                    if (read < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String optString = jSONObject.optString("Fid", null);
        int optInt = jSONObject.optInt("Status", 0);
        String optString2 = jSONObject.optString("AuthToken", null);
        String optString3 = jSONObject.optString("RefreshToken", null);
        long optLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String optString4 = jSONObject.optString("FisError", null);
        int i = PersistedInstallationEntry.a;
        ?? obj = new Object();
        obj.f = 0L;
        byte b = (byte) (obj.h | 2);
        obj.b = RegistrationStatus.j;
        obj.e = 0L;
        obj.h = (byte) (b | 1);
        obj.a = optString;
        RegistrationStatus registrationStatus = RegistrationStatus.values()[optInt];
        if (registrationStatus != null) {
            obj.b = registrationStatus;
            obj.c = optString2;
            obj.d = optString3;
            obj.f = optLong;
            byte b2 = (byte) (obj.h | 2);
            obj.e = optLong2;
            obj.h = (byte) (b2 | 1);
            obj.g = optString4;
            return obj.a();
        }
        d.f("Null registrationStatus");
        return null;
    }
}
