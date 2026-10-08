package com.google.firebase.installations.local;

import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import defpackage.fe;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_PersistedInstallationEntry extends PersistedInstallationEntry {
    public final String b;
    public final PersistedInstallation.RegistrationStatus c;
    public final String d;
    public final String e;
    public final long f;
    public final long g;
    public final String h;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends PersistedInstallationEntry.Builder {
        public String a;
        public PersistedInstallation.RegistrationStatus b;
        public String c;
        public String d;
        public long e;
        public long f;
        public String g;
        public byte h;

        public final PersistedInstallationEntry a() {
            if (this.h == 3 && this.b != null) {
                return new AutoValue_PersistedInstallationEntry(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
            }
            StringBuilder sb = new StringBuilder();
            if (this.b == null) {
                sb.append(" registrationStatus");
            }
            if ((this.h & 1) == 0) {
                sb.append(" expiresInSecs");
            }
            if ((this.h & 2) == 0) {
                sb.append(" tokenCreationEpochInSecs");
            }
            fe.n(sb, "Missing required properties:");
            return null;
        }
    }

    public AutoValue_PersistedInstallationEntry(String str, PersistedInstallation.RegistrationStatus registrationStatus, String str2, String str3, long j, long j2, String str4) {
        this.b = str;
        this.c = registrationStatus;
        this.d = str2;
        this.e = str3;
        this.f = j;
        this.g = j2;
        this.h = str4;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final String a() {
        return this.d;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final long b() {
        return this.f;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final String c() {
        return this.b;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final String d() {
        return this.e;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final long e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PersistedInstallationEntry) {
            PersistedInstallationEntry persistedInstallationEntry = (PersistedInstallationEntry) obj;
            String str = this.b;
            if (str != null ? str.equals(((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).b) : ((AutoValue_PersistedInstallationEntry) persistedInstallationEntry).b == null) {
                AutoValue_PersistedInstallationEntry autoValue_PersistedInstallationEntry = (AutoValue_PersistedInstallationEntry) persistedInstallationEntry;
                if (this.c.equals(autoValue_PersistedInstallationEntry.c)) {
                    String str2 = autoValue_PersistedInstallationEntry.d;
                    String str3 = this.d;
                    if (str3 != null ? str3.equals(str2) : str2 == null) {
                        String str4 = autoValue_PersistedInstallationEntry.e;
                        String str5 = this.e;
                        if (str5 != null ? str5.equals(str4) : str4 == null) {
                            if (this.f == autoValue_PersistedInstallationEntry.f && this.g == autoValue_PersistedInstallationEntry.g) {
                                String str6 = autoValue_PersistedInstallationEntry.h;
                                String str7 = this.h;
                                if (str7 != null ? str7.equals(str6) : str6 == null) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i = 0;
        String str = this.b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode4 = (((hashCode ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003;
        String str2 = this.d;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i2 = (hashCode4 ^ hashCode2) * 1000003;
        String str3 = this.e;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i3 = (i2 ^ hashCode3) * 1000003;
        long j = this.f;
        int i4 = (i3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.g;
        int i5 = (i4 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.h;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return i5 ^ i;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.firebase.installations.local.PersistedInstallationEntry$Builder, java.lang.Object, com.google.firebase.installations.local.AutoValue_PersistedInstallationEntry$Builder] */
    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final PersistedInstallationEntry.Builder k() {
        ?? obj = new Object();
        obj.a = this.b;
        obj.b = this.c;
        obj.c = this.d;
        obj.d = this.e;
        obj.e = this.f;
        obj.f = this.g;
        obj.g = this.h;
        obj.h = (byte) 3;
        return obj;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.b);
        sb.append(", registrationStatus=");
        sb.append(this.c);
        sb.append(", authToken=");
        sb.append(this.d);
        sb.append(", refreshToken=");
        sb.append(this.e);
        sb.append(", expiresInSecs=");
        sb.append(this.f);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.g);
        sb.append(", fisError=");
        return q.l(sb, this.h, "}");
    }
}
