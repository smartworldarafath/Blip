package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractSharedFlow<S extends AbstractSharedFlowSlot<?>> {
    public AbstractSharedFlowSlot[] j;
    public int k;
    public int l;
    public SubscriptionCountStateFlow m;

    public final AbstractSharedFlowSlot c() {
        AbstractSharedFlowSlot abstractSharedFlowSlot;
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        synchronized (this) {
            try {
                AbstractSharedFlowSlot[] abstractSharedFlowSlotArr = this.j;
                if (abstractSharedFlowSlotArr == null) {
                    abstractSharedFlowSlotArr = f();
                    this.j = abstractSharedFlowSlotArr;
                } else if (this.k >= abstractSharedFlowSlotArr.length) {
                    Object[] copyOf = Arrays.copyOf(abstractSharedFlowSlotArr, abstractSharedFlowSlotArr.length * 2);
                    this.j = (AbstractSharedFlowSlot[]) copyOf;
                    abstractSharedFlowSlotArr = (AbstractSharedFlowSlot[]) copyOf;
                }
                int i = this.l;
                do {
                    abstractSharedFlowSlot = abstractSharedFlowSlotArr[i];
                    if (abstractSharedFlowSlot == null) {
                        abstractSharedFlowSlot = d();
                        abstractSharedFlowSlotArr[i] = abstractSharedFlowSlot;
                    }
                    i++;
                    if (i >= abstractSharedFlowSlotArr.length) {
                        i = 0;
                    }
                } while (!abstractSharedFlowSlot.a(this));
                this.l = i;
                this.k++;
                subscriptionCountStateFlow = this.m;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (subscriptionCountStateFlow != null) {
            subscriptionCountStateFlow.x(1);
        }
        return abstractSharedFlowSlot;
    }

    public abstract AbstractSharedFlowSlot d();

    public abstract AbstractSharedFlowSlot[] f();

    public final void g(AbstractSharedFlowSlot abstractSharedFlowSlot) {
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        int i;
        Continuation[] b;
        synchronized (this) {
            try {
                int i2 = this.k - 1;
                this.k = i2;
                subscriptionCountStateFlow = this.m;
                if (i2 == 0) {
                    this.l = 0;
                }
                abstractSharedFlowSlot.getClass();
                b = abstractSharedFlowSlot.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : b) {
            if (continuation != null) {
                continuation.g(Unit.a);
            }
        }
        if (subscriptionCountStateFlow != null) {
            subscriptionCountStateFlow.x(-1);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [kotlinx.coroutines.flow.internal.SubscriptionCountStateFlow, kotlinx.coroutines.flow.SharedFlowImpl] */
    public final StateFlow i() {
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        synchronized (this) {
            SubscriptionCountStateFlow subscriptionCountStateFlow2 = this.m;
            subscriptionCountStateFlow = subscriptionCountStateFlow2;
            if (subscriptionCountStateFlow2 == null) {
                int i = this.k;
                ?? sharedFlowImpl = new SharedFlowImpl(1, Integer.MAX_VALUE, BufferOverflow.k);
                sharedFlowImpl.h(Integer.valueOf(i));
                this.m = sharedFlowImpl;
                subscriptionCountStateFlow = sharedFlowImpl;
            }
        }
        return subscriptionCountStateFlow;
    }
}
