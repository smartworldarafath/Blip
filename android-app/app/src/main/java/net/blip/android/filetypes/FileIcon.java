package net.blip.android.filetypes;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileIcon {
    public final Drawable a;
    public final Thumbnail b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public FileIcon(Drawable drawable, Thumbnail thumbnail) {
        drawable.getClass();
        thumbnail.getClass();
        this.a = drawable;
        this.b = thumbnail;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FileIcon)) {
            return false;
        }
        FileIcon fileIcon = (FileIcon) obj;
        if (Intrinsics.a(this.a, fileIcon.a) && Intrinsics.a(this.b, fileIcon.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "FileIcon(generic=" + this.a + ", thumbnail=" + this.b + ")";
    }
}
