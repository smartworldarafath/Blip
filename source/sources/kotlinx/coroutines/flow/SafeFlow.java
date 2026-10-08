package kotlinx.coroutines.flow;

import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SafeFlow<T> extends AbstractFlow<T> {
    public final Function2 j;

    public SafeFlow(Function2 function2) {
        this.j = function2;
    }
}
