package androidx.compose.runtime.saveable;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListSaverKt {
    public static final SaverKt$Saver$1 a(final Function2 function2, Function1 function1) {
        Function2 function22 = new Function2() { // from class: androidx.compose.runtime.saveable.a
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                SaveableStateRegistry saveableStateRegistry;
                SaverScope saverScope = (SaverScope) obj;
                List list = (List) Function2.this.n(saverScope, obj2);
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Object obj3 = list.get(i);
                    if (obj3 != null && (saveableStateRegistry = ((SaveableHolder) saverScope).k) != null && !saveableStateRegistry.b(obj3)) {
                        throw new IllegalArgumentException(("item at index " + i + " can't be saved: " + obj3).toString());
                    }
                }
                if (!list.isEmpty()) {
                    return new ArrayList(list);
                }
                return null;
            }
        };
        TypeIntrinsics.c(1, function1);
        return new SaverKt$Saver$1(function22, function1);
    }
}
