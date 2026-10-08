package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
import defpackage.u2;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FirebaseOptions {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;

    public FirebaseOptions(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        boolean z;
        int i = Strings.a;
        if (str != null && !str.trim().isEmpty()) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            this.b = str;
            this.a = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = str6;
            this.g = str7;
            this.h = str8;
            return;
        }
        u2.l("ApplicationId must be set.");
        throw null;
    }

    public static FirebaseOptions a(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String a = stringResourceValueReader.a("google_app_id");
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return new FirebaseOptions(a, stringResourceValueReader.a("google_api_key"), stringResourceValueReader.a("firebase_database_url"), stringResourceValueReader.a("ga_trackingId"), stringResourceValueReader.a("gcm_defaultSenderId"), stringResourceValueReader.a("google_storage_bucket"), stringResourceValueReader.a("recaptcha_site_key"), stringResourceValueReader.a("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        if (!Objects.a(this.b, firebaseOptions.b) || !Objects.a(this.a, firebaseOptions.a) || !Objects.a(this.c, firebaseOptions.c) || !Objects.a(this.d, firebaseOptions.d) || !Objects.a(this.e, firebaseOptions.e) || !Objects.a(this.f, firebaseOptions.f) || !Objects.a(this.g, firebaseOptions.g) || !Objects.a(this.h, firebaseOptions.h)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.a, this.c, this.d, this.e, this.f, this.g, this.h});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.b, "applicationId");
        toStringHelper.a(this.a, "apiKey");
        toStringHelper.a(this.c, "databaseUrl");
        toStringHelper.a(this.e, "gcmSenderId");
        toStringHelper.a(this.f, "storageBucket");
        toStringHelper.a(this.g, "recaptchaSiteKey");
        toStringHelper.a(this.h, "projectId");
        return toStringHelper.toString();
    }
}
