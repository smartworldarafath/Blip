package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.Map;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ SaveableStateRegistry k;
    public final /* synthetic */ Object l;

    public /* synthetic */ g(SaveableStateRegistry saveableStateRegistry, Object obj, int i) {
        this.j = i;
        this.k = saveableStateRegistry;
        this.l = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        final Object obj2 = this.l;
        SaveableStateRegistry saveableStateRegistry = this.k;
        switch (i) {
            case 0:
                final LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) saveableStateRegistry;
                lazySaveableStateHolder.l.j(obj2);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolder$SaveableStateProvider$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        LazySaveableStateHolder.this.l.l(obj2);
                    }
                };
            default:
                return new LazySaveableStateHolder(saveableStateRegistry, (Map) obj, (SaveableStateHolder) obj2);
        }
    }
}
