package androidx.compose.foundation.text.contextmenu.data;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProcessTextKey {
    public final int a;

    public ProcessTextKey(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ProcessTextKey)) {
            return false;
        }
        if (this.a != ((ProcessTextKey) obj).a) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.a;
    }
}
