package androidx.navigationevent;

import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.OrderedScatterSetKt;
import androidx.navigationevent.NavigationEventTransitionState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavigationEventProcessor {
    public final MutableStateFlow a = StateFlowKt.a(NavigationEventTransitionState.Idle.a);
    public final MutableStateFlow b;
    public final StateFlow c;
    public final ArrayDeque d;
    public final ArrayDeque e;
    public NavigationEventHandler f;
    public int g;
    public NavigationEventInput h;
    public final MutableOrderedScatterSet i;
    public final MutableOrderedScatterSet j;
    public final MutableOrderedScatterSet k;
    public boolean l;
    public boolean m;
    public boolean n;

    public NavigationEventProcessor() {
        MutableStateFlow a = StateFlowKt.a(new NavigationEventHistory());
        this.b = a;
        this.c = FlowKt.b(a);
        this.d = new ArrayDeque();
        this.e = new ArrayDeque();
        this.i = OrderedScatterSetKt.a();
        this.j = OrderedScatterSetKt.a();
        this.k = OrderedScatterSetKt.a();
    }

    public final void a(NavigationEventDispatcher navigationEventDispatcher, NavigationEventInput navigationEventInput, int i) {
        MutableOrderedScatterSet mutableOrderedScatterSet;
        boolean z;
        navigationEventDispatcher.getClass();
        if (navigationEventInput.a == null) {
            if (i != 0) {
                if (i != 1) {
                    mutableOrderedScatterSet = this.i;
                } else {
                    mutableOrderedScatterSet = this.j;
                }
            } else {
                mutableOrderedScatterSet = this.k;
            }
            mutableOrderedScatterSet.h(navigationEventInput);
            navigationEventInput.a = navigationEventDispatcher;
            ((NavigationEventHistory) this.c.getValue()).getClass();
            if (i != 0) {
                if (i != 1) {
                    z = this.n;
                } else {
                    z = this.l;
                }
            } else {
                z = this.m;
            }
            navigationEventInput.b(z);
            return;
        }
        StringBuilder sb = new StringBuilder("Input '");
        sb.append(navigationEventInput);
        NavigationEventDispatcher navigationEventDispatcher2 = navigationEventInput.a;
        sb.append("' is already added to dispatcher ");
        sb.append(navigationEventDispatcher2);
        sb.append('.');
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public final void b() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6 = true;
        ArrayDeque arrayDeque = this.d;
        if (arrayDeque == null || !arrayDeque.isEmpty()) {
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                if (((NavigationEventHandler) it.next()).d) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        ArrayDeque arrayDeque2 = this.e;
        if (arrayDeque2 == null || !arrayDeque2.isEmpty()) {
            Iterator<E> it2 = arrayDeque2.iterator();
            while (it2.hasNext()) {
                if (((NavigationEventHandler) it2.next()).d) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (!z && !z2) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (this.m != z) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (this.l != z2) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (this.n == z3) {
            z6 = false;
        }
        if (z4) {
            MutableOrderedScatterSet mutableOrderedScatterSet = this.k;
            Object[] objArr = mutableOrderedScatterSet.b;
            long[] jArr = mutableOrderedScatterSet.c;
            int i = mutableOrderedScatterSet.e;
            while (i != Integer.MAX_VALUE) {
                int i2 = (int) ((jArr[i] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr[i]).b(z);
                i = i2;
            }
        }
        if (z5) {
            MutableOrderedScatterSet mutableOrderedScatterSet2 = this.j;
            Object[] objArr2 = mutableOrderedScatterSet2.b;
            long[] jArr2 = mutableOrderedScatterSet2.c;
            int i3 = mutableOrderedScatterSet2.e;
            while (i3 != Integer.MAX_VALUE) {
                int i4 = (int) ((jArr2[i3] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr2[i3]).b(z2);
                i3 = i4;
            }
        }
        if (z6) {
            MutableOrderedScatterSet mutableOrderedScatterSet3 = this.i;
            Object[] objArr3 = mutableOrderedScatterSet3.b;
            long[] jArr3 = mutableOrderedScatterSet3.c;
            int i5 = mutableOrderedScatterSet3.e;
            while (i5 != Integer.MAX_VALUE) {
                int i6 = (int) ((jArr3[i5] >> 31) & 2147483647L);
                ((NavigationEventInput) objArr3[i5]).b(z3);
                i5 = i6;
            }
        }
        this.m = z;
        this.l = z2;
        this.n = z3;
        NavigationEventHandler navigationEventHandler = this.f;
        if (navigationEventHandler == null) {
            navigationEventHandler = c(0);
        }
        d(navigationEventHandler);
    }

    public final NavigationEventHandler c(int i) {
        Object obj;
        Object obj2;
        ArrayDeque arrayDeque = this.e;
        ArrayDeque arrayDeque2 = this.d;
        Object obj3 = null;
        if (i != -1) {
            if (i != 0) {
                if (i == 1) {
                    Iterator<E> it = arrayDeque2.iterator();
                    while (it.hasNext()) {
                        ((NavigationEventHandler) it.next()).getClass();
                    }
                    Iterator<E> it2 = arrayDeque.iterator();
                    while (it2.hasNext()) {
                        ((NavigationEventHandler) it2.next()).getClass();
                    }
                    return null;
                }
                throw new IllegalStateException(("Unsupported direction: '" + i + "'.").toString());
            }
            Iterator<E> it3 = arrayDeque2.iterator();
            while (true) {
                if (it3.hasNext()) {
                    obj2 = it3.next();
                    if (((NavigationEventHandler) obj2).d) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            NavigationEventHandler navigationEventHandler = (NavigationEventHandler) obj2;
            if (navigationEventHandler == null) {
                Iterator<E> it4 = arrayDeque.iterator();
                while (true) {
                    if (!it4.hasNext()) {
                        break;
                    }
                    Object next = it4.next();
                    if (((NavigationEventHandler) next).d) {
                        obj3 = next;
                        break;
                    }
                }
                return (NavigationEventHandler) obj3;
            }
            return navigationEventHandler;
        }
        Iterator<E> it5 = arrayDeque2.iterator();
        while (true) {
            if (it5.hasNext()) {
                obj = it5.next();
                if (((NavigationEventHandler) obj).d) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        NavigationEventHandler navigationEventHandler2 = (NavigationEventHandler) obj;
        if (navigationEventHandler2 == null) {
            Iterator<E> it6 = arrayDeque.iterator();
            while (true) {
                if (!it6.hasNext()) {
                    break;
                }
                Object next2 = it6.next();
                if (((NavigationEventHandler) next2).d) {
                    obj3 = next2;
                    break;
                }
            }
            return (NavigationEventHandler) obj3;
        }
        return navigationEventHandler2;
    }

    public final void d(NavigationEventHandler navigationEventHandler) {
        NavigationEventHistory navigationEventHistory;
        NavigationEventHandler navigationEventHandler2 = this.f;
        if (navigationEventHandler2 == null) {
            navigationEventHandler2 = c(0);
        }
        if (Intrinsics.a(navigationEventHandler2, navigationEventHandler)) {
            if (navigationEventHandler2 == null) {
                navigationEventHistory = new NavigationEventHistory();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator<E> it = this.d.iterator();
                while (it.hasNext()) {
                    NavigationEventHandler navigationEventHandler3 = (NavigationEventHandler) it.next();
                    if (navigationEventHandler3.d && !navigationEventHandler3.b.isEmpty()) {
                        arrayList.addAll(navigationEventHandler3.b);
                    }
                }
                Iterator<E> it2 = this.e.iterator();
                while (it2.hasNext()) {
                    NavigationEventHandler navigationEventHandler4 = (NavigationEventHandler) it2.next();
                    if (navigationEventHandler4.d && !navigationEventHandler4.b.isEmpty()) {
                        arrayList.addAll(navigationEventHandler4.b);
                    }
                }
                NavigationEventInfo navigationEventInfo = navigationEventHandler2.a;
                List list = navigationEventHandler2.c;
                navigationEventInfo.getClass();
                list.getClass();
                navigationEventHistory = new NavigationEventHistory(navigationEventInfo, arrayList, list, arrayList.size());
            }
            MutableStateFlow mutableStateFlow = this.b;
            if (!Intrinsics.a((NavigationEventHistory) mutableStateFlow.getValue(), navigationEventHistory)) {
                mutableStateFlow.setValue(navigationEventHistory);
                MutableOrderedScatterSet mutableOrderedScatterSet = this.k;
                Object[] objArr = mutableOrderedScatterSet.b;
                long[] jArr = mutableOrderedScatterSet.c;
                int i = mutableOrderedScatterSet.e;
                while (i != Integer.MAX_VALUE) {
                    int i2 = (int) (2147483647L & (jArr[i] >> 31));
                    ((NavigationEventInput) objArr[i]).getClass();
                    i = i2;
                }
                MutableOrderedScatterSet mutableOrderedScatterSet2 = this.j;
                Object[] objArr2 = mutableOrderedScatterSet2.b;
                long[] jArr2 = mutableOrderedScatterSet2.c;
                int i3 = mutableOrderedScatterSet2.e;
                while (i3 != Integer.MAX_VALUE) {
                    int i4 = (int) ((jArr2[i3] >> 31) & 2147483647L);
                    ((NavigationEventInput) objArr2[i3]).getClass();
                    i3 = i4;
                }
                MutableOrderedScatterSet mutableOrderedScatterSet3 = this.i;
                Object[] objArr3 = mutableOrderedScatterSet3.b;
                long[] jArr3 = mutableOrderedScatterSet3.c;
                int i5 = mutableOrderedScatterSet3.e;
                while (i5 != Integer.MAX_VALUE) {
                    int i6 = (int) ((jArr3[i5] >> 31) & 2147483647L);
                    ((NavigationEventInput) objArr3[i5]).getClass();
                    i5 = i6;
                }
            }
        }
    }
}
