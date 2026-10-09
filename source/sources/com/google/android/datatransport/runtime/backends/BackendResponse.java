package com.google.android.datatransport.runtime.backends;

import com.google.auto.value.AutoValue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class BackendResponse {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Status {
        public static final Status j;
        public static final Status k;
        public static final Status l;
        public static final Status m;
        public static final /* synthetic */ Status[] n;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.datatransport.runtime.backends.BackendResponse$Status] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.datatransport.runtime.backends.BackendResponse$Status] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.google.android.datatransport.runtime.backends.BackendResponse$Status] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, com.google.android.datatransport.runtime.backends.BackendResponse$Status] */
        static {
            ?? r0 = new Enum("OK", 0);
            j = r0;
            ?? r1 = new Enum("TRANSIENT_ERROR", 1);
            k = r1;
            ?? r2 = new Enum("FATAL_ERROR", 2);
            l = r2;
            ?? r3 = new Enum("INVALID_PAYLOAD", 3);
            m = r3;
            n = new Status[]{r0, r1, r2, r3};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) n.clone();
        }
    }

    public static BackendResponse a() {
        return new AutoValue_BackendResponse(Status.l, -1L);
    }

    public static BackendResponse d() {
        return new AutoValue_BackendResponse(Status.m, -1L);
    }

    public static BackendResponse e(long j) {
        return new AutoValue_BackendResponse(Status.j, j);
    }

    public static BackendResponse f() {
        return new AutoValue_BackendResponse(Status.k, -1L);
    }

    public abstract long b();

    public abstract Status c();
}
