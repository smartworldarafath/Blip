package kotlin.text;

import defpackage.k8;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LinesIterator implements Iterator<String>, KMappedMarker {
    public final CharSequence j;
    public int k;
    public int l;
    public int m;
    public int n;

    public LinesIterator(CharSequence charSequence) {
        charSequence.getClass();
        this.j = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i;
        int i2 = this.k;
        if (i2 != 0) {
            if (i2 != 1) {
                return false;
            }
            return true;
        }
        int i3 = 2;
        if (this.n < 0) {
            this.k = 2;
            return false;
        }
        CharSequence charSequence = this.j;
        int length = charSequence.length();
        int length2 = charSequence.length();
        for (int i4 = this.l; i4 < length2; i4++) {
            char charAt = charSequence.charAt(i4);
            if (charAt == '\n' || charAt == '\r') {
                if (charAt != '\r' || (i = i4 + 1) >= charSequence.length() || charSequence.charAt(i) != '\n') {
                    i3 = 1;
                }
                length = i4;
                this.k = 1;
                this.n = i3;
                this.m = length;
                return true;
            }
        }
        i3 = -1;
        this.k = 1;
        this.n = i3;
        this.m = length;
        return true;
    }

    @Override // java.util.Iterator
    public final String next() {
        if (hasNext()) {
            this.k = 0;
            int i = this.m;
            int i2 = this.l;
            this.l = this.n + i;
            return this.j.subSequence(i2, i).toString();
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
