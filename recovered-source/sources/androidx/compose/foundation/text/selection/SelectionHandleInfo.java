package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.ui.geometry.Offset;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectionHandleInfo {
    public final Handle a;
    public final long b;
    public final SelectionHandleAnchor c;
    public final boolean d;

    public SelectionHandleInfo(Handle handle, long j, SelectionHandleAnchor selectionHandleAnchor, boolean z) {
        this.a = handle;
        this.b = j;
        this.c = selectionHandleAnchor;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SelectionHandleInfo) {
                SelectionHandleInfo selectionHandleInfo = (SelectionHandleInfo) obj;
                if (this.a != selectionHandleInfo.a || !Offset.c(this.b, selectionHandleInfo.b) || this.c != selectionHandleInfo.c || this.d != selectionHandleInfo.d) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + ((this.c.hashCode() + jb.a(this.a.hashCode() * 31, 31, this.b)) * 31);
    }

    public final String toString() {
        return "SelectionHandleInfo(handle=" + this.a + ", position=" + Offset.h(this.b) + ", anchor=" + this.c + ", visible=" + this.d + ")";
    }
}
