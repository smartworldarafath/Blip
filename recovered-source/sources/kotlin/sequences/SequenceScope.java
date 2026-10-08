package kotlin.sequences;

import androidx.core.view.TreeIterator;
import androidx.core.view.ViewGroupKt$special$$inlined$Sequence$1;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SequenceScope<T> {
    public abstract void a(Object obj, Continuation continuation);

    public final Object b(ViewGroupKt$special$$inlined$Sequence$1 viewGroupKt$special$$inlined$Sequence$1, Continuation continuation) {
        Iterator it = viewGroupKt$special$$inlined$Sequence$1.iterator();
        SequenceBuilderIterator sequenceBuilderIterator = (SequenceBuilderIterator) this;
        if (!((TreeIterator) it).k.hasNext()) {
            return Unit.a;
        }
        sequenceBuilderIterator.l = it;
        sequenceBuilderIterator.j = 2;
        sequenceBuilderIterator.m = continuation;
        return CoroutineSingletons.j;
    }
}
