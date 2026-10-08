package net.blip.shared;

import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentPicker$Options {
    public final String a;
    public final ContentPicker$ContentType b;
    public final boolean c;
    public final String d;

    public ContentPicker$Options(ContentPicker$ContentType contentPicker$ContentType, String str, int i) {
        String str2;
        boolean z;
        if ((i & 1) != 0) {
            str2 = null;
        } else {
            str2 = "Choose your avatar image";
        }
        if ((i & 4) != 0) {
            z = false;
        } else {
            z = true;
        }
        str = (i & 8) != 0 ? null : str;
        this.a = str2;
        this.b = contentPicker$ContentType;
        this.c = z;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentPicker$Options)) {
            return false;
        }
        ContentPicker$Options contentPicker$Options = (ContentPicker$Options) obj;
        if (Intrinsics.a(this.a, contentPicker$Options.a) && Intrinsics.a(this.b, contentPicker$Options.b) && this.c == contentPicker$Options.c && Intrinsics.a(this.d, contentPicker$Options.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        String str = this.a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int b = jb.b((this.b.hashCode() + (hashCode * 31)) * 31, 31, this.c);
        String str2 = this.d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return b + i;
    }

    public final String toString() {
        return "Options(title=" + this.a + ", contentType=" + this.b + ", multiple=" + this.c + ", initialDirectory=" + this.d + ")";
    }
}
