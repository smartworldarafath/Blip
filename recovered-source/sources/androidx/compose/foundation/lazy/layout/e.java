package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ LazyLayoutSemanticsModifierNode k;

    public /* synthetic */ e(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i) {
        this.j = i;
        this.k = lazyLayoutSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode = this.k;
        switch (i) {
            case 0:
                LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) lazyLayoutSemanticsModifierNode.x.a();
                int a = lazyLayoutItemProvider.a();
                int i2 = 0;
                while (true) {
                    if (i2 < a) {
                        if (!lazyLayoutItemProvider.b(i2).equals(obj)) {
                            i2++;
                        }
                    } else {
                        i2 = -1;
                    }
                }
                return Integer.valueOf(i2);
            default:
                int intValue = ((Integer) obj).intValue();
                LazyLayoutItemProvider lazyLayoutItemProvider2 = (LazyLayoutItemProvider) lazyLayoutSemanticsModifierNode.x.a();
                if (intValue < 0 || intValue >= lazyLayoutItemProvider2.a()) {
                    InlineClassHelperKt.a("Can't scroll to index " + intValue + ", it is out of bounds [0, " + lazyLayoutItemProvider2.a() + ")");
                }
                BuildersKt.c(lazyLayoutSemanticsModifierNode.M0(), null, null, new LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2(lazyLayoutSemanticsModifierNode, intValue, null), 3);
                return Boolean.TRUE;
        }
    }
}
