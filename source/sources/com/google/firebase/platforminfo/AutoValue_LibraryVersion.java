package com.google.firebase.platforminfo;

import defpackage.q;
import io.sentry.d;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AutoValue_LibraryVersion extends LibraryVersion {
    public final String a;
    public final String b;

    public AutoValue_LibraryVersion(String str, String str2) {
        this.a = str;
        if (str2 != null) {
            this.b = str2;
        } else {
            d.f("Null version");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof LibraryVersion) {
                AutoValue_LibraryVersion autoValue_LibraryVersion = (AutoValue_LibraryVersion) ((LibraryVersion) obj);
                if (this.a.equals(autoValue_LibraryVersion.a) && this.b.equals(autoValue_LibraryVersion.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.a);
        sb.append(", version=");
        return q.l(sb, this.b, "}");
    }
}
