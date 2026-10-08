package kotlin.io;

import defpackage.k8;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LinesSequence$iterator$1 implements Iterator<String>, KMappedMarker {
    public String j;
    public boolean k;
    public final /* synthetic */ LinesSequence l;

    public LinesSequence$iterator$1(LinesSequence linesSequence) {
        this.l = linesSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.j == null && !this.k) {
            String readLine = this.l.a.readLine();
            this.j = readLine;
            if (readLine == null) {
                this.k = true;
            }
        }
        if (this.j != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final String next() {
        if (hasNext()) {
            String str = this.j;
            this.j = null;
            str.getClass();
            return str;
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
