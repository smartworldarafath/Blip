package com.google.firebase.installations.local;

import com.google.auto.value.AutoValue;
import com.google.firebase.installations.local.AutoValue_PersistedInstallationEntry;
import com.google.firebase.installations.local.PersistedInstallation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class PersistedInstallationEntry {
    public static final /* synthetic */ int a = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.firebase.installations.local.AutoValue_PersistedInstallationEntry$Builder] */
    static {
        ?? obj = new Object();
        obj.f = 0L;
        byte b = (byte) (obj.h | 2);
        obj.b = PersistedInstallation.RegistrationStatus.j;
        obj.e = 0L;
        obj.h = (byte) (b | 1);
        obj.a();
    }

    public abstract String a();

    public abstract long b();

    public abstract String c();

    public abstract String d();

    public abstract long e();

    public final boolean f() {
        if (((AutoValue_PersistedInstallationEntry) this).c == PersistedInstallation.RegistrationStatus.n) {
            return true;
        }
        return false;
    }

    public final boolean g() {
        PersistedInstallation.RegistrationStatus registrationStatus = PersistedInstallation.RegistrationStatus.k;
        PersistedInstallation.RegistrationStatus registrationStatus2 = ((AutoValue_PersistedInstallationEntry) this).c;
        if (registrationStatus2 != registrationStatus && registrationStatus2 != PersistedInstallation.RegistrationStatus.j) {
            return false;
        }
        return true;
    }

    public final boolean h() {
        if (((AutoValue_PersistedInstallationEntry) this).c == PersistedInstallation.RegistrationStatus.m) {
            return true;
        }
        return false;
    }

    public final boolean i() {
        if (((AutoValue_PersistedInstallationEntry) this).c == PersistedInstallation.RegistrationStatus.l) {
            return true;
        }
        return false;
    }

    public final boolean j() {
        if (((AutoValue_PersistedInstallationEntry) this).c == PersistedInstallation.RegistrationStatus.j) {
            return true;
        }
        return false;
    }

    public abstract Builder k();

    public final PersistedInstallationEntry l(long j, long j2, String str) {
        AutoValue_PersistedInstallationEntry.Builder builder = (AutoValue_PersistedInstallationEntry.Builder) k();
        builder.c = str;
        builder.e = j;
        byte b = (byte) (builder.h | 1);
        builder.f = j2;
        builder.h = (byte) (b | 2);
        return builder.a();
    }

    public final PersistedInstallationEntry m() {
        AutoValue_PersistedInstallationEntry.Builder builder = (AutoValue_PersistedInstallationEntry.Builder) k();
        builder.g = "BAD CONFIG";
        builder.b = PersistedInstallation.RegistrationStatus.n;
        return builder.a();
    }

    public final PersistedInstallationEntry n() {
        AutoValue_PersistedInstallationEntry.Builder builder = (AutoValue_PersistedInstallationEntry.Builder) k();
        builder.b = PersistedInstallation.RegistrationStatus.k;
        return builder.a();
    }

    public final PersistedInstallationEntry o(String str, String str2, long j, String str3, long j2) {
        AutoValue_PersistedInstallationEntry.Builder builder = (AutoValue_PersistedInstallationEntry.Builder) k();
        builder.a = str;
        builder.b = PersistedInstallation.RegistrationStatus.m;
        builder.c = str3;
        builder.d = str2;
        builder.e = j2;
        byte b = (byte) (builder.h | 1);
        builder.f = j;
        builder.h = (byte) (b | 2);
        return builder.a();
    }

    public final PersistedInstallationEntry p(String str) {
        AutoValue_PersistedInstallationEntry.Builder builder = (AutoValue_PersistedInstallationEntry.Builder) k();
        builder.a = str;
        builder.b = PersistedInstallation.RegistrationStatus.l;
        return builder.a();
    }
}
