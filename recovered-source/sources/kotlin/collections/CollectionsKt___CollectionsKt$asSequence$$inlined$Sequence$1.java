package kotlin.collections;

import java.util.Iterator;
import kotlin.sequences.Sequence;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 implements Sequence<Object> {
    public final /* synthetic */ Iterable a;

    public CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(Iterable iterable) {
        this.a = iterable;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return this.a.iterator();
    }
}
