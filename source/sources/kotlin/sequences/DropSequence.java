package kotlin.sequences;

import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DropSequence<T> implements Sequence<T>, DropTakeSequence<T> {
    public final Sequence a;
    public final int b;

    public DropSequence(Sequence sequence, int i) {
        sequence.getClass();
        this.a = sequence;
        this.b = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence a(int i) {
        int i2 = this.b + i;
        if (i2 < 0) {
            return new DropSequence(this, i);
        }
        return new DropSequence(this.a, i2);
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new DropSequence$iterator$1(this);
    }
}
