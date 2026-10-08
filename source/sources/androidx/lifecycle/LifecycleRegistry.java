package androidx.lifecycle;

import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.collection.MutableScatterMap;
import androidx.lifecycle.FastSafeIterableMap;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import defpackage.fe;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class LifecycleRegistry extends Lifecycle {
    public final boolean b;
    public FastSafeIterableMap c;
    public final WeakReference d;
    public int e;
    public boolean f;
    public boolean g;
    public final ArrayList h;
    public Lifecycle.State i;
    public final MutableStateFlow j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ObserverWithState {
        public Lifecycle.State a;
        public LifecycleEventObserver b;

        public final void a(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State a = event.a();
            Lifecycle.State state = this.a;
            if (a.compareTo(state) < 0) {
                state = a;
            }
            this.a = state;
            this.b.h(lifecycleOwner, event);
            this.a = a;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        this.a = new AtomicReference();
        this.b = z;
        this.c = new FastSafeIterableMap();
        this.d = new WeakReference(lifecycleOwner);
        this.h = new ArrayList();
        Lifecycle.State state = Lifecycle.State.k;
        this.i = state;
        this.j = StateFlowKt.a(state);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.lifecycle.LifecycleRegistry$ObserverWithState] */
    @Override // androidx.lifecycle.Lifecycle
    public final void a(LifecycleObserver lifecycleObserver) {
        LifecycleEventObserver reflectiveGenericLifecycleObserver;
        ObserverWithState observerWithState;
        LifecycleOwner lifecycleOwner;
        Lifecycle.Event event;
        lifecycleObserver.getClass();
        d("addObserver");
        Lifecycle.State state = this.i;
        Lifecycle.State state2 = Lifecycle.State.j;
        if (state != state2) {
            state2 = Lifecycle.State.k;
        }
        ?? obj = new Object();
        obj.a = state2;
        HashMap hashMap = Lifecycling.a;
        boolean z = lifecycleObserver instanceof LifecycleEventObserver;
        boolean z2 = lifecycleObserver instanceof DefaultLifecycleObserver;
        boolean z3 = false;
        if (z && z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) lifecycleObserver, (LifecycleEventObserver) lifecycleObserver);
        } else if (z2) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) lifecycleObserver, null);
        } else if (z) {
            reflectiveGenericLifecycleObserver = (LifecycleEventObserver) lifecycleObserver;
        } else {
            Class<?> cls = lifecycleObserver.getClass();
            if (Lifecycling.b(cls) == 2) {
                Object obj2 = Lifecycling.b.get(cls);
                obj2.getClass();
                List list = (List) obj2;
                if (list.size() != 1) {
                    int size = list.size();
                    GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[size];
                    if (size <= 0) {
                        reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
                    } else {
                        Lifecycling.a((Constructor) list.get(0), lifecycleObserver);
                        throw null;
                    }
                } else {
                    Lifecycling.a((Constructor) list.get(0), lifecycleObserver);
                    throw null;
                }
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(lifecycleObserver);
            }
        }
        obj.b = reflectiveGenericLifecycleObserver;
        FastSafeIterableMap fastSafeIterableMap = this.c;
        fastSafeIterableMap.getClass();
        MutableScatterMap mutableScatterMap = fastSafeIterableMap.a;
        FastSafeIterableMap.Entry entry = (FastSafeIterableMap.Entry) mutableScatterMap.e(lifecycleObserver);
        if (entry != null) {
            observerWithState = entry.k;
        } else {
            FastSafeIterableMap.Entry entry2 = new FastSafeIterableMap.Entry(lifecycleObserver, obj);
            mutableScatterMap.o(lifecycleObserver, entry2);
            FastSafeIterableMap.Entry entry3 = fastSafeIterableMap.c;
            if (entry3 == null) {
                fastSafeIterableMap.b = entry2;
                fastSafeIterableMap.c = entry2;
            } else {
                entry3.l = entry2;
                entry2.m = entry3;
                fastSafeIterableMap.c = entry2;
            }
            observerWithState = null;
        }
        if (observerWithState != null || (lifecycleOwner = (LifecycleOwner) this.d.a.get()) == null) {
            return;
        }
        if (this.e != 0 || this.f) {
            z3 = true;
        }
        Lifecycle.State c = c(lifecycleObserver);
        this.e++;
        while (obj.a.compareTo(c) < 0) {
            FastSafeIterableMap fastSafeIterableMap2 = this.c;
            fastSafeIterableMap2.getClass();
            if (!fastSafeIterableMap2.a.c(lifecycleObserver)) {
                break;
            }
            Lifecycle.State state3 = obj.a;
            ArrayList arrayList = this.h;
            arrayList.add(state3);
            Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
            Lifecycle.State state4 = obj.a;
            companion.getClass();
            state4.getClass();
            int ordinal = state4.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        event = null;
                    } else {
                        event = Lifecycle.Event.ON_RESUME;
                    }
                } else {
                    event = Lifecycle.Event.ON_START;
                }
            } else {
                event = Lifecycle.Event.ON_CREATE;
            }
            if (event != null) {
                obj.a(lifecycleOwner, event);
                CollectionsKt.M(arrayList);
                c = c(lifecycleObserver);
            } else {
                k8.p(obj.a, "no event up from ");
                return;
            }
        }
        if (!z3) {
            g();
        }
        this.e--;
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void b(LifecycleObserver lifecycleObserver) {
        lifecycleObserver.getClass();
        d("removeObserver");
        FastSafeIterableMap fastSafeIterableMap = this.c;
        fastSafeIterableMap.getClass();
        FastSafeIterableMap.Entry entry = (FastSafeIterableMap.Entry) fastSafeIterableMap.a.m(lifecycleObserver);
        if (entry == null) {
            return;
        }
        FastSafeIterableMap.Entry entry2 = entry.m;
        FastSafeIterableMap.Entry entry3 = entry.l;
        if (entry2 == null) {
            fastSafeIterableMap.b = entry3;
        } else {
            entry2.l = entry3;
        }
        FastSafeIterableMap.Entry entry4 = entry.l;
        if (entry4 == null) {
            fastSafeIterableMap.c = entry2;
        } else {
            entry4.m = entry2;
        }
        entry.n = true;
    }

    public final Lifecycle.State c(LifecycleObserver lifecycleObserver) {
        FastSafeIterableMap.Entry entry;
        Lifecycle.State state;
        FastSafeIterableMap fastSafeIterableMap = this.c;
        fastSafeIterableMap.getClass();
        lifecycleObserver.getClass();
        FastSafeIterableMap.Entry entry2 = (FastSafeIterableMap.Entry) fastSafeIterableMap.a.e(lifecycleObserver);
        Lifecycle.State state2 = null;
        if (entry2 != null) {
            entry = entry2.m;
        } else {
            entry = null;
        }
        if (entry != null) {
            state = entry.k.a;
        } else {
            state = null;
        }
        ArrayList arrayList = this.h;
        if (!arrayList.isEmpty()) {
            state2 = (Lifecycle.State) arrayList.get(arrayList.size() - 1);
        }
        Lifecycle.State state3 = this.i;
        if (state == null || state.compareTo(state3) >= 0) {
            state = state3;
        }
        if (state2 != null && state2.compareTo(state) < 0) {
            return state2;
        }
        return state;
    }

    public final void d(String str) {
        if (this.b) {
            ArchTaskExecutor.a().a.getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            u2.f(q.i("Method ", str, " must be called on the main thread"));
        }
    }

    public final void e(Lifecycle.Event event) {
        event.getClass();
        d("handleLifecycleEvent");
        f(event.a());
    }

    public final void f(Lifecycle.State state) {
        if (this.i != state) {
            LifecycleOwner lifecycleOwner = (LifecycleOwner) this.d.a.get();
            Lifecycle.State state2 = this.i;
            if (state2 == Lifecycle.State.k && state == Lifecycle.State.j) {
                throw new IllegalStateException(("State must be at least '" + Lifecycle.State.l + "' to be moved to '" + state + "' in component " + lifecycleOwner).toString());
            }
            Lifecycle.State state3 = Lifecycle.State.j;
            if (state2 == state3 && state2 != state) {
                throw new IllegalStateException(("State is '" + state3 + "' and cannot be moved to `" + state + "` in component " + lifecycleOwner).toString());
            }
            this.i = state;
            if (!this.f && this.e == 0) {
                this.f = true;
                g();
                this.f = false;
                if (this.i == state3) {
                    this.c = new FastSafeIterableMap();
                    return;
                }
                return;
            }
            this.g = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        r7.g = false;
        r7.j.setValue(r7.i);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g() {
        Object obj = this.d.a.get();
        if (obj != null) {
            final LifecycleOwner lifecycleOwner = (LifecycleOwner) obj;
            while (true) {
                FastSafeIterableMap fastSafeIterableMap = this.c;
                final int i = 0;
                if (fastSafeIterableMap.a.e == 0) {
                    break;
                }
                FastSafeIterableMap.Entry entry = fastSafeIterableMap.b;
                if (entry != null) {
                    Lifecycle.State state = entry.k.a;
                    FastSafeIterableMap.Entry entry2 = fastSafeIterableMap.c;
                    if (entry2 != null) {
                        Lifecycle.State state2 = entry2.k.a;
                        if (state == state2 && this.i == state2) {
                            break;
                        }
                        this.g = false;
                        Lifecycle.State state3 = this.i;
                        if (entry != null) {
                            if (state3.compareTo(state) < 0) {
                                FastSafeIterableMap fastSafeIterableMap2 = this.c;
                                Function1 function1 = new Function1(this) { // from class: oa
                                    public final /* synthetic */ LifecycleRegistry k;

                                    {
                                        this.k = this;
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj2) {
                                        Lifecycle.Event event;
                                        Lifecycle.Event event2;
                                        int i2 = i;
                                        Unit unit = Unit.a;
                                        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
                                        LifecycleRegistry lifecycleRegistry = this.k;
                                        Map.Entry entry3 = (Map.Entry) obj2;
                                        switch (i2) {
                                            case 0:
                                                entry3.getClass();
                                                LifecycleObserver lifecycleObserver = (LifecycleObserver) entry3.getKey();
                                                LifecycleRegistry.ObserverWithState observerWithState = (LifecycleRegistry.ObserverWithState) entry3.getValue();
                                                while (true) {
                                                    Lifecycle.State state4 = observerWithState.a;
                                                    Lifecycle.State state5 = lifecycleRegistry.i;
                                                    ArrayList arrayList = lifecycleRegistry.h;
                                                    if (state4.compareTo(state5) > 0 && !lifecycleRegistry.g) {
                                                        FastSafeIterableMap fastSafeIterableMap3 = lifecycleRegistry.c;
                                                        fastSafeIterableMap3.getClass();
                                                        lifecycleObserver.getClass();
                                                        if (fastSafeIterableMap3.a.c(lifecycleObserver)) {
                                                            Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
                                                            Lifecycle.State state6 = observerWithState.a;
                                                            companion.getClass();
                                                            state6.getClass();
                                                            int ordinal = state6.ordinal();
                                                            if (ordinal != 2) {
                                                                if (ordinal != 3) {
                                                                    if (ordinal != 4) {
                                                                        event = null;
                                                                    } else {
                                                                        event = Lifecycle.Event.ON_PAUSE;
                                                                    }
                                                                } else {
                                                                    event = Lifecycle.Event.ON_STOP;
                                                                }
                                                            } else {
                                                                event = Lifecycle.Event.ON_DESTROY;
                                                            }
                                                            if (event != null) {
                                                                arrayList.add(event.a());
                                                                observerWithState.a(lifecycleOwner2, event);
                                                                CollectionsKt.M(arrayList);
                                                            } else {
                                                                k8.s(observerWithState.a, "no event down from ");
                                                                return null;
                                                            }
                                                        } else {
                                                            return unit;
                                                        }
                                                    } else {
                                                        return unit;
                                                    }
                                                }
                                                break;
                                            default:
                                                entry3.getClass();
                                                LifecycleObserver lifecycleObserver2 = (LifecycleObserver) entry3.getKey();
                                                LifecycleRegistry.ObserverWithState observerWithState2 = (LifecycleRegistry.ObserverWithState) entry3.getValue();
                                                while (true) {
                                                    Lifecycle.State state7 = observerWithState2.a;
                                                    Lifecycle.State state8 = lifecycleRegistry.i;
                                                    ArrayList arrayList2 = lifecycleRegistry.h;
                                                    if (state7.compareTo(state8) < 0 && !lifecycleRegistry.g) {
                                                        FastSafeIterableMap fastSafeIterableMap4 = lifecycleRegistry.c;
                                                        fastSafeIterableMap4.getClass();
                                                        lifecycleObserver2.getClass();
                                                        if (fastSafeIterableMap4.a.c(lifecycleObserver2)) {
                                                            arrayList2.add(observerWithState2.a);
                                                            Lifecycle.Event.Companion companion2 = Lifecycle.Event.Companion;
                                                            Lifecycle.State state9 = observerWithState2.a;
                                                            companion2.getClass();
                                                            state9.getClass();
                                                            int ordinal2 = state9.ordinal();
                                                            if (ordinal2 != 1) {
                                                                if (ordinal2 != 2) {
                                                                    if (ordinal2 != 3) {
                                                                        event2 = null;
                                                                    } else {
                                                                        event2 = Lifecycle.Event.ON_RESUME;
                                                                    }
                                                                } else {
                                                                    event2 = Lifecycle.Event.ON_START;
                                                                }
                                                            } else {
                                                                event2 = Lifecycle.Event.ON_CREATE;
                                                            }
                                                            if (event2 != null) {
                                                                observerWithState2.a(lifecycleOwner2, event2);
                                                                CollectionsKt.M(arrayList2);
                                                            } else {
                                                                k8.s(observerWithState2.a, "no event up from ");
                                                                return null;
                                                            }
                                                        } else {
                                                            return unit;
                                                        }
                                                    } else {
                                                        return unit;
                                                    }
                                                }
                                                break;
                                        }
                                    }
                                };
                                fastSafeIterableMap2.getClass();
                                for (FastSafeIterableMap.Entry entry3 = fastSafeIterableMap2.c; entry3 != null; entry3 = entry3.m) {
                                    if (!entry3.n) {
                                        function1.b(entry3);
                                    }
                                }
                            }
                            FastSafeIterableMap.Entry entry4 = this.c.c;
                            if (!this.g && entry4 != null && this.i.compareTo(entry4.k.a) > 0) {
                                FastSafeIterableMap fastSafeIterableMap3 = this.c;
                                final int i2 = 1;
                                Function1 function12 = new Function1(this) { // from class: oa
                                    public final /* synthetic */ LifecycleRegistry k;

                                    {
                                        this.k = this;
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj2) {
                                        Lifecycle.Event event;
                                        Lifecycle.Event event2;
                                        int i22 = i2;
                                        Unit unit = Unit.a;
                                        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
                                        LifecycleRegistry lifecycleRegistry = this.k;
                                        Map.Entry entry32 = (Map.Entry) obj2;
                                        switch (i22) {
                                            case 0:
                                                entry32.getClass();
                                                LifecycleObserver lifecycleObserver = (LifecycleObserver) entry32.getKey();
                                                LifecycleRegistry.ObserverWithState observerWithState = (LifecycleRegistry.ObserverWithState) entry32.getValue();
                                                while (true) {
                                                    Lifecycle.State state4 = observerWithState.a;
                                                    Lifecycle.State state5 = lifecycleRegistry.i;
                                                    ArrayList arrayList = lifecycleRegistry.h;
                                                    if (state4.compareTo(state5) > 0 && !lifecycleRegistry.g) {
                                                        FastSafeIterableMap fastSafeIterableMap32 = lifecycleRegistry.c;
                                                        fastSafeIterableMap32.getClass();
                                                        lifecycleObserver.getClass();
                                                        if (fastSafeIterableMap32.a.c(lifecycleObserver)) {
                                                            Lifecycle.Event.Companion companion = Lifecycle.Event.Companion;
                                                            Lifecycle.State state6 = observerWithState.a;
                                                            companion.getClass();
                                                            state6.getClass();
                                                            int ordinal = state6.ordinal();
                                                            if (ordinal != 2) {
                                                                if (ordinal != 3) {
                                                                    if (ordinal != 4) {
                                                                        event = null;
                                                                    } else {
                                                                        event = Lifecycle.Event.ON_PAUSE;
                                                                    }
                                                                } else {
                                                                    event = Lifecycle.Event.ON_STOP;
                                                                }
                                                            } else {
                                                                event = Lifecycle.Event.ON_DESTROY;
                                                            }
                                                            if (event != null) {
                                                                arrayList.add(event.a());
                                                                observerWithState.a(lifecycleOwner2, event);
                                                                CollectionsKt.M(arrayList);
                                                            } else {
                                                                k8.s(observerWithState.a, "no event down from ");
                                                                return null;
                                                            }
                                                        } else {
                                                            return unit;
                                                        }
                                                    } else {
                                                        return unit;
                                                    }
                                                }
                                                break;
                                            default:
                                                entry32.getClass();
                                                LifecycleObserver lifecycleObserver2 = (LifecycleObserver) entry32.getKey();
                                                LifecycleRegistry.ObserverWithState observerWithState2 = (LifecycleRegistry.ObserverWithState) entry32.getValue();
                                                while (true) {
                                                    Lifecycle.State state7 = observerWithState2.a;
                                                    Lifecycle.State state8 = lifecycleRegistry.i;
                                                    ArrayList arrayList2 = lifecycleRegistry.h;
                                                    if (state7.compareTo(state8) < 0 && !lifecycleRegistry.g) {
                                                        FastSafeIterableMap fastSafeIterableMap4 = lifecycleRegistry.c;
                                                        fastSafeIterableMap4.getClass();
                                                        lifecycleObserver2.getClass();
                                                        if (fastSafeIterableMap4.a.c(lifecycleObserver2)) {
                                                            arrayList2.add(observerWithState2.a);
                                                            Lifecycle.Event.Companion companion2 = Lifecycle.Event.Companion;
                                                            Lifecycle.State state9 = observerWithState2.a;
                                                            companion2.getClass();
                                                            state9.getClass();
                                                            int ordinal2 = state9.ordinal();
                                                            if (ordinal2 != 1) {
                                                                if (ordinal2 != 2) {
                                                                    if (ordinal2 != 3) {
                                                                        event2 = null;
                                                                    } else {
                                                                        event2 = Lifecycle.Event.ON_RESUME;
                                                                    }
                                                                } else {
                                                                    event2 = Lifecycle.Event.ON_START;
                                                                }
                                                            } else {
                                                                event2 = Lifecycle.Event.ON_CREATE;
                                                            }
                                                            if (event2 != null) {
                                                                observerWithState2.a(lifecycleOwner2, event2);
                                                                CollectionsKt.M(arrayList2);
                                                            } else {
                                                                k8.s(observerWithState2.a, "no event up from ");
                                                                return null;
                                                            }
                                                        } else {
                                                            return unit;
                                                        }
                                                    } else {
                                                        return unit;
                                                    }
                                                }
                                                break;
                                        }
                                    }
                                };
                                fastSafeIterableMap3.getClass();
                                for (FastSafeIterableMap.Entry entry5 = fastSafeIterableMap3.b; entry5 != null; entry5 = entry5.l) {
                                    if (!entry5.n) {
                                        function12.b(entry5);
                                    }
                                }
                            }
                        } else {
                            fe.o("Collection is empty.");
                            return;
                        }
                    } else {
                        fe.o("Collection is empty.");
                        return;
                    }
                } else {
                    fe.o("Collection is empty.");
                    return;
                }
            }
        } else {
            u2.l("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
    }
}
