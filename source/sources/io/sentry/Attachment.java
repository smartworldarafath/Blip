package io.sentry;

import io.sentry.protocol.ViewHierarchy;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Attachment {
    public final byte[] a;
    public final ViewHierarchy b;
    public final io.sentry.android.core.k c;
    public final String d;
    public final String e;
    public final String f;

    public Attachment(ViewHierarchy viewHierarchy) {
        this.a = null;
        this.b = viewHierarchy;
        this.c = null;
        this.d = "view-hierarchy.json";
        this.e = "application/json";
        this.f = "event.view_hierarchy";
    }

    public Attachment(String str, String str2, String str3, byte[] bArr) {
        this.a = bArr;
        this.b = null;
        this.c = null;
        this.d = str;
        this.e = str2;
        this.f = str3;
    }

    public Attachment(io.sentry.android.core.k kVar) {
        this.a = null;
        this.b = null;
        this.c = kVar;
        this.d = "screenshot.png";
        this.e = "image/png";
        this.f = "event.attachment";
    }
}
