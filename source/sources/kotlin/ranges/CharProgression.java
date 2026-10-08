package kotlin.ranges;

import java.util.Iterator;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CharProgression implements Iterable<Character>, KMappedMarker {
    public final char j;
    public final char k;
    public final int l = 1;

    public CharProgression(char c, char c2) {
        this.j = c;
        this.k = (char) ProgressionUtilKt.a(c, c2, 1);
    }

    @Override // java.lang.Iterable
    public final Iterator<Character> iterator() {
        return new CharProgressionIterator(this.j, this.k, this.l);
    }
}
