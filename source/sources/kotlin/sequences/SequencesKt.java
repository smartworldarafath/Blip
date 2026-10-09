package kotlin.sequences;

import defpackage.kb;
import defpackage.ma;
import defpackage.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.text.StringsKt;
import kotlin.text.a;

/* loaded from: classes.dex */
public abstract class SequencesKt extends SequencesKt___SequencesKt {
    public static ConstrainedOnceSequence a(final Iterator it) {
        it.getClass();
        return new ConstrainedOnceSequence(new Sequence<Object>() { // from class: kotlin.sequences.SequencesKt__SequencesKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public final Iterator iterator() {
                return it;
            }
        });
    }

    public static ConstrainedOnceSequence b(n nVar) {
        return new ConstrainedOnceSequence(new GeneratorSequence(nVar, new ma(23, nVar)));
    }

    public static Sequence c(Object obj, Function1 function1) {
        if (obj == null) {
            return EmptySequence.a;
        }
        return new GeneratorSequence(new kb(14, obj), function1);
    }

    public static Sequence d(a aVar, Function1 function1) {
        return new GeneratorSequence(aVar, function1);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.Continuation, kotlin.sequences.SequenceBuilderIterator, java.util.Iterator, java.lang.Object] */
    public static Iterator e(Function2 function2) {
        ?? obj = new Object();
        obj.m = IntrinsicsKt.a(obj, obj, function2);
        return obj;
    }

    public static String f(Sequence sequence, String str) {
        sequence.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i = 0;
        for (Object obj : sequence) {
            i++;
            if (i > 1) {
                sb.append((CharSequence) str);
            }
            StringsKt.h(sb, obj, null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }

    public static Sequence g(final Object... objArr) {
        if (objArr.length == 0) {
            return EmptySequence.a;
        }
        return new Sequence<Object>() { // from class: kotlin.collections.ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public final Iterator iterator() {
                return ArrayIteratorKt.a(objArr);
            }
        };
    }

    public static List h(Sequence sequence) {
        Iterator it = sequence.iterator();
        if (!it.hasNext()) {
            return EmptyList.j;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return CollectionsKt.B(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
