package net.blip.android.ui.util;

import android.net.Uri;
import defpackage.jb;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TransferClipboardLocation {
    public final Uri a;
    public final String b;
    public final String c;
    public final File d;

    public TransferClipboardLocation(Uri uri, String str, String str2, File file) {
        this.a = uri;
        this.b = str;
        this.c = str2;
        this.d = file;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TransferClipboardLocation) {
                TransferClipboardLocation transferClipboardLocation = (TransferClipboardLocation) obj;
                if (!this.a.equals(transferClipboardLocation.a) || !this.b.equals(transferClipboardLocation.b) || !Intrinsics.a(this.c, transferClipboardLocation.c) || !Intrinsics.a(this.d, transferClipboardLocation.d)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int c = jb.c(this.b, this.a.hashCode() * 31, 31);
        int i = 0;
        String str = this.c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (c + hashCode) * 31;
        File file = this.d;
        if (file != null) {
            i = file.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "TransferClipboardLocation(uri=" + this.a + ", mimeType=" + this.b + ", displayName=" + this.c + ", file=" + this.d + ")";
    }
}
