package kotlin.io;

import java.io.BufferedReader;
import java.util.Iterator;
import kotlin.sequences.Sequence;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LinesSequence implements Sequence<String> {
    public final BufferedReader a;

    public LinesSequence(BufferedReader bufferedReader) {
        this.a = bufferedReader;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new LinesSequence$iterator$1(this);
    }
}
