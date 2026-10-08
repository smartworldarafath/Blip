package androidx.compose.ui.contentcapture;

import androidx.compose.ui.platform.coreshims.ViewStructureCompat;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentCaptureEvent {
    public final int a;
    public final long b;
    public final ContentCaptureEventType c;
    public final ViewStructureCompat d;

    public ContentCaptureEvent(int i, long j, ContentCaptureEventType contentCaptureEventType, ViewStructureCompat viewStructureCompat) {
        this.a = i;
        this.b = j;
        this.c = contentCaptureEventType;
        this.d = viewStructureCompat;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ContentCaptureEvent) {
                ContentCaptureEvent contentCaptureEvent = (ContentCaptureEvent) obj;
                if (this.a != contentCaptureEvent.a || this.b != contentCaptureEvent.b || this.c != contentCaptureEvent.c || !Intrinsics.a(this.d, contentCaptureEvent.d)) {
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
        int hashCode2 = (this.c.hashCode() + jb.a(Integer.hashCode(this.a) * 31, 31, this.b)) * 31;
        ViewStructureCompat viewStructureCompat = this.d;
        if (viewStructureCompat == null) {
            hashCode = 0;
        } else {
            hashCode = viewStructureCompat.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "ContentCaptureEvent(id=" + this.a + ", timestamp=" + this.b + ", type=" + this.c + ", structureCompat=" + this.d + ")";
    }
}
