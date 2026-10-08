package androidx.navigation.internal;

import android.os.Bundle;
import android.util.Log;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavOptions;
import androidx.navigation.NavViewModelStoreProvider;
import androidx.navigation.Navigator;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.internal.NavControllerImpl;
import defpackage.g9;
import defpackage.h5;
import defpackage.k8;
import defpackage.la;
import defpackage.o;
import defpackage.pb;
import defpackage.q7;
import defpackage.s2;
import defpackage.u2;
import io.sentry.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.sequences.TakeWhileSequence$iterator$1;
import kotlin.sequences.TransformingSequence;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NavControllerImpl {
    public final SharedFlowImpl A;
    public final NavController a;
    public final g9 b;
    public NavGraph c;
    public Bundle d;
    public Bundle[] e;
    public final ArrayDeque f = new ArrayDeque();
    public final MutableStateFlow g;
    public final StateFlow h;
    public final MutableStateFlow i;
    public final StateFlow j;
    public final LinkedHashMap k;
    public final LinkedHashMap l;
    public final LinkedHashMap m;
    public final LinkedHashMap n;
    public LifecycleOwner o;
    public NavViewModelStoreProvider p;
    public final ArrayList q;
    public Lifecycle.State r;
    public final h5 s;
    public final NavigatorProvider t;
    public final LinkedHashMap u;
    public Function1 v;
    public pb w;
    public final LinkedHashMap x;
    public int y;
    public final ArrayList z;

    public NavControllerImpl(NavController navController, g9 g9Var) {
        this.a = navController;
        this.b = g9Var;
        EmptyList emptyList = EmptyList.j;
        MutableStateFlow a = StateFlowKt.a(emptyList);
        this.g = a;
        this.h = FlowKt.b(a);
        MutableStateFlow a2 = StateFlowKt.a(emptyList);
        this.i = a2;
        this.j = FlowKt.b(a2);
        this.k = new LinkedHashMap();
        this.l = new LinkedHashMap();
        this.m = new LinkedHashMap();
        this.n = new LinkedHashMap();
        this.q = new ArrayList();
        this.r = Lifecycle.State.k;
        this.s = new h5(1, this);
        this.t = new NavigatorProvider();
        this.u = new LinkedHashMap();
        this.x = new LinkedHashMap();
        this.z = new ArrayList();
        this.A = SharedFlowKt.a(0, 2, BufferOverflow.k);
    }

    public static NavDestination d(int i, NavDestination navDestination, NavDestination navDestination2, boolean z) {
        NavGraph navGraph;
        if (navDestination.k.d == i && (navDestination2 == null || (navDestination.equals(navDestination2) && Intrinsics.a(navDestination.l, navDestination2.l)))) {
            return navDestination;
        }
        if (navDestination instanceof NavGraph) {
            navGraph = (NavGraph) navDestination;
        } else {
            navGraph = null;
        }
        if (navGraph == null) {
            navGraph = navDestination.l;
            navGraph.getClass();
        }
        return navGraph.o.c(i, navGraph, navDestination2, z);
    }

    public static /* synthetic */ void n(NavControllerImpl navControllerImpl, NavBackStackEntry navBackStackEntry) {
        navControllerImpl.m(navBackStackEntry, false, new ArrayDeque());
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x017a, code lost:
    
        r15 = r11.c;
        r15.getClass();
        r1 = r11.c;
        r1.getClass();
        r6 = androidx.navigation.NavBackStackEntry.Companion.a(r0, r15, r1.b(r13), h(), r11.p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0192, code lost:
    
        r2.addFirst(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0195, code lost:
    
        r13 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x019d, code lost:
    
        if (r13.hasNext() == false) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x019f, code lost:
    
        r15 = (androidx.navigation.NavBackStackEntry) r13.next();
        r0 = r11.u.get(r11.t.b(r15.k.j));
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01b5, code lost:
    
        if (r0 == null) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01b7, code lost:
    
        ((androidx.navigation.NavController.NavControllerNavigatorState) r0).f(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01bd, code lost:
    
        defpackage.u2.f(defpackage.q.i("NavigatorBackStack for ", r12.j, " should already be created"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01ca, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01cb, code lost:
    
        r4.addAll(r2);
        r4.addLast(r14);
        r12 = kotlin.collections.CollectionsKt.G(r2, r14).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01dd, code lost:
    
        if (r12.hasNext() == false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01df, code lost:
    
        r13 = (androidx.navigation.NavBackStackEntry) r12.next();
        r14 = r13.k.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01e9, code lost:
    
        if (r14 == null) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01eb, code lost:
    
        j(r13, e(r14.k.d));
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01f7, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x014a, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0099, code lost:
    
        r5 = ((androidx.navigation.NavBackStackEntry) r2.first()).k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r2 = new kotlin.collections.ArrayDeque();
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        if ((r12 instanceof androidx.navigation.NavGraph) == false) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
    
        r5 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
    
        r5.getClass();
        r5 = r5.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
    
        if (r5 == null) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        r7 = r15.listIterator(r15.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0050, code lost:
    
        if (r7.hasPrevious() == false) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        r8 = r7.previous();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.a(((androidx.navigation.NavBackStackEntry) r8).k, r5) == false) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
    
        r8 = (androidx.navigation.NavBackStackEntry) r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0065, code lost:
    
        if (r8 != null) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0067, code lost:
    
        r8 = androidx.navigation.NavBackStackEntry.Companion.a(r0, r5, r13, h(), r11.p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        r2.addFirst(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0078, code lost:
    
        if (r4.isEmpty() != false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000b, code lost:
    
        if (r2 == false) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
    
        if (((androidx.navigation.NavBackStackEntry) r4.last()).k != r5) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0084, code lost:
    
        n(r11, (androidx.navigation.NavBackStackEntry) r4.last());
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0062, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008d, code lost:
    
        if (r5 == null) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008f, code lost:
    
        if (r5 != r12) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0095, code lost:
    
        if (r2.isEmpty() == false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
    
        r5 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a1, code lost:
    
        if (r5 == null) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ab, code lost:
    
        if (c(r5.k.d, r5) == r5) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ad, code lost:
    
        r5 = r5.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00af, code lost:
    
        if (r5 == null) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0011, code lost:
    
        if (r4.isEmpty() != false) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b1, code lost:
    
        if (r13 == null) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b7, code lost:
    
        if (r13.isEmpty() != true) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b9, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00bc, code lost:
    
        r8 = r15.listIterator(r15.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00c8, code lost:
    
        if (r8.hasPrevious() == false) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ca, code lost:
    
        r9 = r8.previous();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d7, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.a(((androidx.navigation.NavBackStackEntry) r9).k, r5) == false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00db, code lost:
    
        r9 = (androidx.navigation.NavBackStackEntry) r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00dd, code lost:
    
        if (r9 != null) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00df, code lost:
    
        r9 = androidx.navigation.NavBackStackEntry.Companion.a(r0, r5, r5.b(r7), h(), r11.p);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ed, code lost:
    
        r2.addFirst(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00da, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bb, code lost:
    
        r7 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001d, code lost:
    
        if ((((androidx.navigation.NavBackStackEntry) r4.last()).k instanceof androidx.navigation.FloatingWindow) == false) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f5, code lost:
    
        if (r2.isEmpty() == false) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00f8, code lost:
    
        r1 = ((androidx.navigation.NavBackStackEntry) r2.first()).k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0104, code lost:
    
        if (r4.isEmpty() != false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0110, code lost:
    
        if ((((androidx.navigation.NavBackStackEntry) r4.last()).k instanceof androidx.navigation.NavGraph) == false) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0112, code lost:
    
        r3 = ((androidx.navigation.NavBackStackEntry) r4.last()).k;
        r3.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x012b, code lost:
    
        if (((androidx.navigation.NavGraph) r3).o.b.c(r1.k.d) != null) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x012d, code lost:
    
        n(r11, (androidx.navigation.NavBackStackEntry) r4.last());
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0137, code lost:
    
        r1 = (androidx.navigation.NavBackStackEntry) r4.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x013d, code lost:
    
        if (r1 != null) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x013f, code lost:
    
        r1 = (androidx.navigation.NavBackStackEntry) r2.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0145, code lost:
    
        if (r1 == null) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0147, code lost:
    
        r1 = r1.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0030, code lost:
    
        if (l(((androidx.navigation.NavBackStackEntry) r4.last()).k.k.d, true, false) != false) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0151, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.a(r1, r11.c) != false) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0153, code lost:
    
        r15 = r15.listIterator(r15.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x015f, code lost:
    
        if (r15.hasPrevious() == false) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0161, code lost:
    
        r1 = r15.previous();
        r3 = ((androidx.navigation.NavBackStackEntry) r1).k;
        r5 = r11.c;
        r5.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0173, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.a(r3, r5) == false) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0175, code lost:
    
        r6 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0176, code lost:
    
        r6 = (androidx.navigation.NavBackStackEntry) r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0178, code lost:
    
        if (r6 != null) goto L220;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list) {
        NavContext navContext = this.a.c;
        NavDestination navDestination2 = navBackStackEntry.k;
        boolean z = navDestination2 instanceof FloatingWindow;
        ArrayDeque arrayDeque = this.f;
    }

    public final boolean b() {
        ArrayDeque arrayDeque;
        while (true) {
            arrayDeque = this.f;
            if (arrayDeque.isEmpty() || !(((NavBackStackEntry) arrayDeque.last()).k instanceof NavGraph)) {
                break;
            }
            n(this, (NavBackStackEntry) arrayDeque.last());
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) arrayDeque.i();
        ArrayList arrayList = this.z;
        if (navBackStackEntry != null) {
            arrayList.add(navBackStackEntry);
        }
        this.y++;
        r();
        int i = this.y - 1;
        this.y = i;
        if (i == 0) {
            ArrayList Y = CollectionsKt.Y(arrayList);
            arrayList.clear();
            Iterator it = Y.iterator();
            while (it.hasNext()) {
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) it.next();
                Iterator it2 = CollectionsKt.X(this.q).iterator();
                if (!it2.hasNext()) {
                    this.A.h(navBackStackEntry2);
                } else {
                    if (it2.next() != null) {
                        d.i();
                        return false;
                    }
                    NavDestination navDestination = navBackStackEntry2.k;
                    navBackStackEntry2.b();
                    throw null;
                }
            }
            this.g.h(new ArrayList(arrayDeque));
            this.i.h(o());
        }
        if (navBackStackEntry != null) {
            return true;
        }
        return false;
    }

    public final NavDestination c(int i, NavDestination navDestination) {
        NavDestination navDestination2;
        NavGraph navGraph = this.c;
        if (navGraph == null) {
            return null;
        }
        if (navGraph.k.d == i) {
            if (navDestination != null) {
                if (Intrinsics.a(navGraph, navDestination) && navDestination.l == null) {
                    return this.c;
                }
            } else {
                return navGraph;
            }
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f.i();
        if (navBackStackEntry == null || (navDestination2 = navBackStackEntry.k) == null) {
            navDestination2 = this.c;
            navDestination2.getClass();
        }
        return d(i, navDestination2, navDestination, false);
    }

    public final NavBackStackEntry e(int i) {
        Object obj;
        ArrayDeque arrayDeque = this.f;
        ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                obj = listIterator.previous();
                if (((NavBackStackEntry) obj).k.k.d == i) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        throw new IllegalArgumentException(("No destination with ID " + i + " is on the NavController's back stack. The current destination is " + f()).toString());
    }

    public final NavDestination f() {
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f.i();
        if (navBackStackEntry != null) {
            return navBackStackEntry.k;
        }
        return null;
    }

    public final NavGraph g() {
        NavGraph navGraph = this.c;
        if (navGraph != null) {
            navGraph.getClass();
            return navGraph;
        }
        u2.l("You must call setGraph() before calling getGraph()");
        return null;
    }

    public final Lifecycle.State h() {
        if (this.o == null) {
            return Lifecycle.State.l;
        }
        return this.r;
    }

    public final NavGraph i() {
        NavDestination navDestination;
        NavGraph navGraph;
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f.i();
        if (navBackStackEntry == null || (navDestination = navBackStackEntry.k) == null) {
            navDestination = this.c;
            navDestination.getClass();
        }
        if (navDestination instanceof NavGraph) {
            navGraph = (NavGraph) navDestination;
        } else {
            navGraph = null;
        }
        if (navGraph == null) {
            NavGraph navGraph2 = navDestination.l;
            navGraph2.getClass();
            return navGraph2;
        }
        return navGraph;
    }

    public final void j(NavBackStackEntry navBackStackEntry, NavBackStackEntry navBackStackEntry2) {
        this.k.put(navBackStackEntry, navBackStackEntry2);
        LinkedHashMap linkedHashMap = this.l;
        if (linkedHashMap.get(navBackStackEntry2) == null) {
            linkedHashMap.put(navBackStackEntry2, new AtomicInt());
        }
        Object obj = linkedHashMap.get(navBackStackEntry2);
        obj.getClass();
        ((AtomicInt) obj).a.incrementAndGet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x020f, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x010a, code lost:
    
        if (r24.k.d == r10.k.d) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f8, code lost:
    
        if (r14.equals(r10) == false) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x010c, code lost:
    
        r10 = new kotlin.collections.ArrayDeque();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0117, code lost:
    
        if (kotlin.collections.CollectionsKt.u(r23.f) < r11) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0119, code lost:
    
        r12 = (androidx.navigation.NavBackStackEntry) kotlin.collections.CollectionsKt.L(r23.f);
        q(r12);
        r15 = new androidx.navigation.NavBackStackEntry(r12.j, r12.k, r12.k.b(r25), r12.m, r12.n, r12.o, r12.p);
        r4 = r12.m;
        r4.getClass();
        r15.m = r4;
        r4 = r12.v;
        r4.getClass();
        r15.v = r4;
        r15.h();
        r10.addFirst(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0160, code lost:
    
        r4 = r10.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0168, code lost:
    
        if (r4.hasNext() == false) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x016a, code lost:
    
        r5 = (androidx.navigation.NavBackStackEntry) r4.next();
        r6 = r5.k.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0174, code lost:
    
        if (r6 == null) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0176, code lost:
    
        j(r5, e(r6.k.d));
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0181, code lost:
    
        r23.f.addLast(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0187, code lost:
    
        r4 = r10.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x018f, code lost:
    
        if (r4.hasNext() == false) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0191, code lost:
    
        r5 = (androidx.navigation.NavBackStackEntry) r4.next();
        r6 = r23.t.b(r5.k.j);
        r9 = r5.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01a3, code lost:
    
        if (r9 == null) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01a6, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a7, code lost:
    
        if (r9 != null) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01ac, code lost:
    
        r10 = new androidx.navigation.NavOptionsBuilder();
        r10.b = true;
        r12 = r10.a;
        r12.a = true;
        r12.b = r10.c;
        r10 = r10.e;
        r12.c = -1;
        r12.d = false;
        r12.e = r10;
        r6.c(r9);
        r6 = r6.b();
        r9 = r6.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01cf, code lost:
    
        monitor-enter(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01d0, code lost:
    
        r10 = kotlin.collections.CollectionsKt.Y((java.util.Collection) r6.e.getValue());
        r12 = r10.listIterator(r10.size());
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01e8, code lost:
    
        if (r12.hasPrevious() == false) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01f8, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.a(((androidx.navigation.NavBackStackEntry) r12.previous()).o, r5.o) == false) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01fa, code lost:
    
        r12 = r12.nextIndex();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0202, code lost:
    
        r10.set(r12, r5);
        r6.b.setValue(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x020a, code lost:
    
        monitor-exit(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0201, code lost:
    
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01ff, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x020e, code lost:
    
        throw r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0215  */
    /* JADX WARN: Type inference failed for: r3v4, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(NavDestination navDestination, Bundle bundle, NavOptions navOptions) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        int i2;
        navDestination.getClass();
        Iterator it = this.u.values().iterator();
        while (it.hasNext()) {
            ((NavController.NavControllerNavigatorState) it.next()).d = true;
        }
        ?? obj = new Object();
        if (navOptions != null && (i2 = navOptions.c) != -1) {
            z = l(i2, navOptions.d, navOptions.e);
        } else {
            z = false;
        }
        Bundle b = navDestination.b(bundle);
        if (navOptions != null && navOptions.b && this.m.containsKey(Integer.valueOf(navDestination.k.d))) {
            obj.j = p(navDestination.k.d, b, navOptions);
            z3 = false;
        } else {
            if (navOptions != null && navOptions.a) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f.i();
                ArrayDeque arrayDeque = this.f;
                ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.b());
                while (true) {
                    if (listIterator.hasPrevious()) {
                        if (((NavBackStackEntry) listIterator.previous()).k == navDestination) {
                            i = listIterator.nextIndex();
                            break;
                        }
                    } else {
                        i = -1;
                        break;
                    }
                }
                if (i != -1) {
                    if (navDestination instanceof NavGraph) {
                        int i3 = NavGraph.p;
                        List h = SequencesKt.h(new TransformingSequence(SequencesKt.c((NavGraph) navDestination, new la(16)), new la(10)));
                        if (this.f.l - i == h.size()) {
                            ArrayDeque arrayDeque2 = this.f;
                            Collection subList = arrayDeque2.subList(i, arrayDeque2.l);
                            ArrayList arrayList = new ArrayList(CollectionsKt.m(subList, 10));
                            Iterator it2 = subList.iterator();
                            while (it2.hasNext()) {
                                arrayList.add(Integer.valueOf(((NavBackStackEntry) it2.next()).k.k.d));
                            }
                        }
                    } else if (navBackStackEntry != null) {
                        NavDestination navDestination2 = navBackStackEntry.k;
                        if (navDestination2 != null) {
                        }
                    }
                    if (!z2) {
                        NavBackStackEntry a = NavBackStackEntry.Companion.a(this.a.c, navDestination, b, h(), this.p);
                        Navigator b2 = this.t.b(navDestination.j);
                        List B = CollectionsKt.B(a);
                        this.v = new s2((Ref$BooleanRef) obj, this, navDestination, b);
                        b2.d(B, navOptions);
                        this.v = null;
                    }
                    z3 = z2;
                }
            }
            z2 = false;
            if (!z2) {
            }
            z3 = z2;
        }
        this.b.a();
        Iterator it3 = this.u.values().iterator();
        while (it3.hasNext()) {
            ((NavController.NavControllerNavigatorState) it3.next()).d = false;
        }
        if (!z && !obj.j && !z3) {
            r();
        } else {
            b();
        }
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    public final boolean l(int i, boolean z, boolean z2) {
        NavDestination navDestination;
        NavControllerImpl navControllerImpl;
        boolean z3;
        String str;
        ArrayDeque arrayDeque = this.f;
        final int i2 = 0;
        if (arrayDeque.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = CollectionsKt.N(arrayDeque).iterator();
        while (true) {
            if (it.hasNext()) {
                navDestination = ((NavBackStackEntry) it.next()).k;
                String str2 = navDestination.j;
                NavDestinationImpl navDestinationImpl = navDestination.k;
                Navigator b = this.t.b(str2);
                if (z || navDestinationImpl.d != i) {
                    arrayList.add(b);
                }
                if (navDestinationImpl.d == i) {
                    break;
                }
            } else {
                navDestination = null;
                break;
            }
        }
        if (navDestination == null) {
            int i3 = NavDestination.n;
            Log.i("NavController", "Ignoring popBackStack to destination " + NavDestination.Companion.a(this.a.c, i) + " as it was not found on the current back stack");
            return false;
        }
        ?? obj = new Object();
        ArrayDeque arrayDeque2 = new ArrayDeque();
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (it2.hasNext()) {
                Navigator navigator = (Navigator) it2.next();
                ?? obj2 = new Object();
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) arrayDeque.last();
                navControllerImpl = this;
                z3 = z2;
                pb pbVar = new pb((Ref$BooleanRef) obj2, (Ref$BooleanRef) obj, navControllerImpl, z3, arrayDeque2);
                navigator.getClass();
                navBackStackEntry.getClass();
                navControllerImpl.w = pbVar;
                navigator.e(navBackStackEntry, z3);
                navControllerImpl.w = null;
                if (!obj2.j) {
                    break;
                }
                this = navControllerImpl;
                z2 = z3;
            } else {
                navControllerImpl = this;
                z3 = z2;
                break;
            }
        }
        if (z3) {
            LinkedHashMap linkedHashMap = navControllerImpl.m;
            if (!z) {
                TakeWhileSequence$iterator$1 takeWhileSequence$iterator$1 = new TakeWhileSequence$iterator$1(new TakeWhileSequence(SequencesKt.c(navDestination, new la(11)), new Function1(navControllerImpl) { // from class: qb
                    public final /* synthetic */ NavControllerImpl k;

                    {
                        this.k = navControllerImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj3) {
                        boolean containsKey;
                        int i4 = i2;
                        NavControllerImpl navControllerImpl2 = this.k;
                        NavDestination navDestination2 = (NavDestination) obj3;
                        switch (i4) {
                            case 0:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.m.containsKey(Integer.valueOf(navDestination2.k.d));
                                break;
                            default:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.m.containsKey(Integer.valueOf(navDestination2.k.d));
                                break;
                        }
                        return Boolean.valueOf(!containsKey);
                    }
                }));
                while (takeWhileSequence$iterator$1.hasNext()) {
                    Integer valueOf = Integer.valueOf(((NavDestination) takeWhileSequence$iterator$1.next()).k.d);
                    NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) arrayDeque2.f();
                    if (navBackStackEntryState != null) {
                        str = navBackStackEntryState.a.a;
                    } else {
                        str = null;
                    }
                    linkedHashMap.put(valueOf, str);
                }
            }
            if (!arrayDeque2.isEmpty()) {
                NavBackStackEntryStateImpl navBackStackEntryStateImpl = ((NavBackStackEntryState) arrayDeque2.first()).a;
                final int i4 = 1;
                TakeWhileSequence$iterator$1 takeWhileSequence$iterator$12 = new TakeWhileSequence$iterator$1(new TakeWhileSequence(SequencesKt.c(navControllerImpl.c(navBackStackEntryStateImpl.b, null), new la(12)), new Function1(navControllerImpl) { // from class: qb
                    public final /* synthetic */ NavControllerImpl k;

                    {
                        this.k = navControllerImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj3) {
                        boolean containsKey;
                        int i42 = i4;
                        NavControllerImpl navControllerImpl2 = this.k;
                        NavDestination navDestination2 = (NavDestination) obj3;
                        switch (i42) {
                            case 0:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.m.containsKey(Integer.valueOf(navDestination2.k.d));
                                break;
                            default:
                                navDestination2.getClass();
                                containsKey = navControllerImpl2.m.containsKey(Integer.valueOf(navDestination2.k.d));
                                break;
                        }
                        return Boolean.valueOf(!containsKey);
                    }
                }));
                while (takeWhileSequence$iterator$12.hasNext()) {
                    linkedHashMap.put(Integer.valueOf(((NavDestination) takeWhileSequence$iterator$12.next()).k.d), navBackStackEntryStateImpl.a);
                }
                if (linkedHashMap.values().contains(navBackStackEntryStateImpl.a)) {
                    navControllerImpl.n.put(navBackStackEntryStateImpl.a, arrayDeque2);
                }
            }
        }
        navControllerImpl.b.a();
        return obj.j;
    }

    public final void m(NavBackStackEntry navBackStackEntry, boolean z, ArrayDeque arrayDeque) {
        NavViewModelStoreProvider navViewModelStoreProvider;
        StateFlow stateFlow;
        Set set;
        navBackStackEntry.getClass();
        ArrayDeque arrayDeque2 = this.f;
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) arrayDeque2.last();
        if (Intrinsics.a(navBackStackEntry2, navBackStackEntry)) {
            CollectionsKt.L(arrayDeque2);
            NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) this.u.get(this.t.b(navBackStackEntry2.k.j));
            boolean z2 = true;
            if ((navControllerNavigatorState == null || (stateFlow = navControllerNavigatorState.f) == null || (set = (Set) stateFlow.getValue()) == null || !set.contains(navBackStackEntry2)) && !this.l.containsKey(navBackStackEntry2)) {
                z2 = false;
            }
            Lifecycle.State state = navBackStackEntry2.t.i;
            Lifecycle.State state2 = Lifecycle.State.l;
            if (state.compareTo(state2) >= 0) {
                if (z) {
                    navBackStackEntry2.v = state2;
                    navBackStackEntry2.h();
                    arrayDeque.addFirst(new NavBackStackEntryState(navBackStackEntry2));
                }
                if (!z2) {
                    navBackStackEntry2.v = Lifecycle.State.j;
                    navBackStackEntry2.h();
                    q(navBackStackEntry2);
                } else {
                    navBackStackEntry2.v = state2;
                    navBackStackEntry2.h();
                }
            }
            if (!z && !z2 && (navViewModelStoreProvider = this.p) != null) {
                navViewModelStoreProvider.a(navBackStackEntry2.o);
                return;
            }
            return;
        }
        k8.n("Attempted to pop ", navBackStackEntry.k, ", which is not the top of the back stack (", navBackStackEntry2.k, ")");
    }

    public final ArrayList o() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.u.values().iterator();
        while (it.hasNext()) {
            Iterable iterable = (Iterable) ((NavController.NavControllerNavigatorState) it.next()).f.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : iterable) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!arrayList.contains(navBackStackEntry) && navBackStackEntry.v.compareTo(Lifecycle.State.m) < 0) {
                    arrayList2.add(obj);
                }
            }
            CollectionsKt.g(arrayList, arrayList2);
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator<E> it2 = this.f.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) next;
            if (!arrayList.contains(navBackStackEntry2) && navBackStackEntry2.v.compareTo(Lifecycle.State.m) >= 0) {
                arrayList3.add(next);
            }
        }
        CollectionsKt.g(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Object next2 = it3.next();
            if (!(((NavBackStackEntry) next2).k instanceof NavGraph)) {
                arrayList4.add(next2);
            }
        }
        return arrayList4;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    public final boolean p(int i, Bundle bundle, NavOptions navOptions) {
        NavDestination g;
        String str;
        NavBackStackEntry navBackStackEntry;
        NavDestination navDestination;
        Integer valueOf = Integer.valueOf(i);
        LinkedHashMap linkedHashMap = this.m;
        if (!linkedHashMap.containsKey(valueOf)) {
            return false;
        }
        String str2 = (String) linkedHashMap.get(Integer.valueOf(i));
        CollectionsKt.I(linkedHashMap.values(), new q7(str2, 3));
        ArrayDeque arrayDeque = (ArrayDeque) TypeIntrinsics.b(this.n).remove(str2);
        NavContext navContext = this.a.c;
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) this.f.i();
        if (navBackStackEntry2 == null || (g = navBackStackEntry2.k) == null) {
            g = g();
        }
        if (arrayDeque != null) {
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) it.next();
                NavDestination d = d(navBackStackEntryState.a.b, g, null, true);
                if (d != null) {
                    arrayList.add(navBackStackEntryState.a(navContext, d, h(), this.p));
                    g = d;
                } else {
                    int i2 = NavDestination.n;
                    u2.i("Restore State failed: destination ", NavDestination.Companion.a(navContext, navBackStackEntryState.a.b), " cannot be found from the current destination ", g);
                    return false;
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            if (!(((NavBackStackEntry) next).k instanceof NavGraph)) {
                arrayList3.add(next);
            }
        }
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) it3.next();
            List list = (List) CollectionsKt.A(arrayList2);
            if (list != null && (navBackStackEntry = (NavBackStackEntry) CollectionsKt.z(list)) != null && (navDestination = navBackStackEntry.k) != null) {
                str = navDestination.j;
            } else {
                str = null;
            }
            if (Intrinsics.a(str, navBackStackEntry3.k.j)) {
                list.add(navBackStackEntry3);
            } else {
                arrayList2.add(CollectionsKt.E(navBackStackEntry3));
            }
        }
        ?? obj = new Object();
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext()) {
            List list2 = (List) it4.next();
            Navigator b = this.t.b(((NavBackStackEntry) CollectionsKt.s(list2)).k.j);
            this.v = new o(obj, arrayList, new Object(), this, bundle, 3);
            b.d(list2, navOptions);
            this.v = null;
        }
        return obj.j;
    }

    public final void q(NavBackStackEntry navBackStackEntry) {
        Integer num;
        navBackStackEntry.getClass();
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) this.k.remove(navBackStackEntry);
        if (navBackStackEntry2 != null) {
            LinkedHashMap linkedHashMap = this.l;
            AtomicInt atomicInt = (AtomicInt) linkedHashMap.get(navBackStackEntry2);
            if (atomicInt != null) {
                num = Integer.valueOf(atomicInt.a.decrementAndGet());
            } else {
                num = null;
            }
            if (num != null && num.intValue() == 0) {
                NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) this.u.get(this.t.b(navBackStackEntry2.k.j));
                if (navControllerNavigatorState != null) {
                    navControllerNavigatorState.b(navBackStackEntry2);
                }
                linkedHashMap.remove(navBackStackEntry2);
            }
        }
    }

    public final void r() {
        Boolean bool;
        AtomicInt atomicInt;
        StateFlow stateFlow;
        Set set;
        ArrayList Y = CollectionsKt.Y(this.f);
        if (!Y.isEmpty()) {
            ArrayList E = CollectionsKt.E(((NavBackStackEntry) CollectionsKt.z(Y)).k);
            ArrayList arrayList = new ArrayList();
            if (CollectionsKt.z(E) instanceof FloatingWindow) {
                Iterator it = CollectionsKt.N(Y).iterator();
                while (it.hasNext()) {
                    NavDestination navDestination = ((NavBackStackEntry) it.next()).k;
                    arrayList.add(navDestination);
                    if (!(navDestination instanceof FloatingWindow) && !(navDestination instanceof NavGraph)) {
                        break;
                    }
                }
            }
            HashMap hashMap = new HashMap();
            for (NavBackStackEntry navBackStackEntry : CollectionsKt.N(Y)) {
                Lifecycle.State state = navBackStackEntry.v;
                NavDestination navDestination2 = navBackStackEntry.k;
                NavDestination navDestination3 = (NavDestination) CollectionsKt.t(E);
                if (navDestination3 != null && navDestination3.k.d == navDestination2.k.d) {
                    Lifecycle.State state2 = Lifecycle.State.n;
                    if (state != state2) {
                        NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) this.u.get(this.t.b(navBackStackEntry.k.j));
                        if (navControllerNavigatorState != null && (stateFlow = navControllerNavigatorState.f) != null && (set = (Set) stateFlow.getValue()) != null) {
                            bool = Boolean.valueOf(set.contains(navBackStackEntry));
                        } else {
                            bool = null;
                        }
                        if (!Intrinsics.a(bool, Boolean.TRUE) && ((atomicInt = (AtomicInt) this.l.get(navBackStackEntry)) == null || atomicInt.a.get() != 0)) {
                            hashMap.put(navBackStackEntry, state2);
                        } else {
                            hashMap.put(navBackStackEntry, Lifecycle.State.m);
                        }
                    }
                    NavDestination navDestination4 = (NavDestination) CollectionsKt.t(arrayList);
                    if (navDestination4 != null && navDestination4.k.d == navDestination2.k.d) {
                        CollectionsKt.K(arrayList);
                    }
                    CollectionsKt.K(E);
                    NavGraph navGraph = navDestination2.l;
                    if (navGraph != null) {
                        E.add(navGraph);
                    }
                } else if (!arrayList.isEmpty() && navDestination2.k.d == ((NavDestination) CollectionsKt.s(arrayList)).k.d) {
                    NavDestination navDestination5 = (NavDestination) CollectionsKt.K(arrayList);
                    if (state == Lifecycle.State.n) {
                        navBackStackEntry.v = Lifecycle.State.m;
                        navBackStackEntry.h();
                    } else {
                        Lifecycle.State state3 = Lifecycle.State.m;
                        if (state != state3) {
                            hashMap.put(navBackStackEntry, state3);
                        }
                    }
                    NavGraph navGraph2 = navDestination5.l;
                    if (navGraph2 != null && !arrayList.contains(navGraph2)) {
                        arrayList.add(navGraph2);
                    }
                } else {
                    navBackStackEntry.v = Lifecycle.State.l;
                    navBackStackEntry.h();
                }
            }
            Iterator it2 = Y.iterator();
            while (it2.hasNext()) {
                NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) it2.next();
                Lifecycle.State state4 = (Lifecycle.State) hashMap.get(navBackStackEntry2);
                if (state4 != null) {
                    navBackStackEntry2.getClass();
                    navBackStackEntry2.v = state4;
                    navBackStackEntry2.h();
                } else {
                    navBackStackEntry2.h();
                }
            }
        }
    }
}
