package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SubscriptionCountStateFlow extends SharedFlowImpl<Integer> implements StateFlow<Integer> {
    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        Integer valueOf;
        synchronized (this) {
            Object[] objArr = this.q;
            objArr.getClass();
            valueOf = Integer.valueOf(((Number) objArr[((int) ((this.r + ((int) ((p() + this.t) - this.r))) - 1)) & (objArr.length - 1)]).intValue());
        }
        return valueOf;
    }

    public final void x(int i) {
        synchronized (this) {
            Object[] objArr = this.q;
            objArr.getClass();
            h(Integer.valueOf(((Number) objArr[((int) ((this.r + ((int) ((p() + this.t) - this.r))) - 1)) & (objArr.length - 1)]).intValue() + i));
        }
    }
}
