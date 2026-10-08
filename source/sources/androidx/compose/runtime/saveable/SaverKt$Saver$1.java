package androidx.compose.runtime.saveable;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SaverKt$Saver$1 implements Saver<Object, Object> {
    public final /* synthetic */ Function2 a;
    public final /* synthetic */ Function1 b;

    public SaverKt$Saver$1(Function2 function2, Function1 function1) {
        this.a = function2;
        this.b = function1;
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public final Object a(Object obj) {
        return this.b.b(obj);
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public final Object b(SaverScope saverScope, Object obj) {
        return this.a.n(saverScope, obj);
    }
}
