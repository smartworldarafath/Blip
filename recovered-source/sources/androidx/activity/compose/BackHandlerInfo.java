package androidx.activity.compose;

import androidx.navigationevent.NavigationEventInfo;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BackHandlerInfo extends NavigationEventInfo {
    public final Object a;
    public final long b;

    public BackHandlerInfo(long j, Object obj) {
        this.a = obj;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BackHandlerInfo) {
                BackHandlerInfo backHandlerInfo = (BackHandlerInfo) obj;
                if (!this.a.equals(backHandlerInfo.a) || this.b != backHandlerInfo.b) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "BackHandlerInfo(owner=" + this.a + ", compositeKey=" + this.b + ')';
    }
}
