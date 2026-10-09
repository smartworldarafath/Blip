package net.blip.android.shortcuts;

import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import androidx.activity.ComponentActivity;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.le;
import defpackage.u2;
import defpackage.y4;
import io.sentry.d;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.libblip.Device;
import net.blip.libblip.Device_DerivedKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.Users_DerivedKt;
import net.blip.libblip.frontend.Messaging;
import net.blip.libblip.frontend.PeerInteraction;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Users;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ShortcutsManager {
    public final ComponentActivity a;
    public final StateFlow b;
    public ShortcutFingerprint c;

    public ShortcutsManager(ComponentActivity componentActivity, StateFlow stateFlow) {
        stateFlow.getClass();
        this.a = componentActivity;
        this.b = stateFlow;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0470  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0108 A[LOOP:9: B:156:0x0102->B:158:0x0108, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x03b8 A[LOOP:17: B:248:0x03b2->B:250:0x03b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0468 -> B:11:0x046c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ShortcutsManager shortcutsManager, State state, Continuation continuation) {
        ShortcutsManager$reconcileShortcuts$1 shortcutsManager$reconcileShortcuts$1;
        int i;
        int i2;
        int maxShortcutCountPerActivity;
        State state2;
        String str;
        Iterator it;
        Iterator it2;
        Iterator it3;
        User b;
        ArrayList arrayList;
        ShortcutsManager$reconcileShortcuts$1 shortcutsManager$reconcileShortcuts$12;
        Object obj;
        List list;
        Iterator it4;
        Iterator it5;
        Iterator it6;
        Messaging messaging;
        Set set;
        Iterator it7;
        Iterator it8;
        Iterator it9;
        ShortcutFingerprint shortcutFingerprint;
        List list2;
        Map map;
        Iterator it10;
        ShortcutFingerprint shortcutFingerprint2;
        List list3;
        Set set2;
        Peer.User user;
        ByteString byteString;
        User user2;
        Set X;
        LinkedHashSet linkedHashSet;
        Object failure;
        boolean z;
        boolean z2;
        Bitmap decodeStream;
        IconCompat iconCompat;
        ComponentActivity componentActivity = shortcutsManager.a;
        if (continuation instanceof ShortcutsManager$reconcileShortcuts$1) {
            shortcutsManager$reconcileShortcuts$1 = (ShortcutsManager$reconcileShortcuts$1) continuation;
            int i3 = shortcutsManager$reconcileShortcuts$1.x;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                shortcutsManager$reconcileShortcuts$1.x = i3 - Integer.MIN_VALUE;
                Object obj2 = shortcutsManager$reconcileShortcuts$1.v;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = shortcutsManager$reconcileShortcuts$1.x;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            maxShortcutCountPerActivity = shortcutsManager$reconcileShortcuts$1.u;
                            it10 = shortcutsManager$reconcileShortcuts$1.t;
                            map = shortcutsManager$reconcileShortcuts$1.s;
                            shortcutFingerprint2 = (ShortcutFingerprint) shortcutsManager$reconcileShortcuts$1.r;
                            set2 = shortcutsManager$reconcileShortcuts$1.q;
                            list3 = shortcutsManager$reconcileShortcuts$1.p;
                            list2 = shortcutsManager$reconcileShortcuts$1.o;
                            ResultKt.b(obj2);
                            ShortcutInfoCompat shortcutInfoCompat = (ShortcutInfoCompat) obj2;
                            if (shortcutInfoCompat != null) {
                                LoggerKt.a.getClass();
                                Logger.g("ShortcutsManager", "activity ended while capturing avatars; aborting update", new Pair[0]);
                                return unit;
                            }
                            map.put(shortcutInfoCompat.b, shortcutInfoCompat);
                            if (!it10.hasNext()) {
                                Peer peer = (Peer) it10.next();
                                shortcutsManager$reconcileShortcuts$1.m = null;
                                shortcutsManager$reconcileShortcuts$1.n = null;
                                shortcutsManager$reconcileShortcuts$1.o = list2;
                                shortcutsManager$reconcileShortcuts$1.p = list3;
                                shortcutsManager$reconcileShortcuts$1.q = set2;
                                shortcutsManager$reconcileShortcuts$1.r = shortcutFingerprint2;
                                shortcutsManager$reconcileShortcuts$1.s = map;
                                shortcutsManager$reconcileShortcuts$1.t = it10;
                                shortcutsManager$reconcileShortcuts$1.u = maxShortcutCountPerActivity;
                                shortcutsManager$reconcileShortcuts$1.x = 2;
                                obj2 = ShortcutsManagerKt.a(componentActivity, peer, shortcutsManager$reconcileShortcuts$1);
                                if (obj2 == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                ShortcutInfoCompat shortcutInfoCompat2 = (ShortcutInfoCompat) obj2;
                                if (shortcutInfoCompat2 != null) {
                                }
                            } else {
                                if (!set2.isEmpty()) {
                                    ShortcutsManagerKt.c(componentActivity, CollectionsKt.X(set2));
                                }
                                ArrayList arrayList2 = new ArrayList();
                                Iterator it11 = list2.iterator();
                                while (it11.hasNext()) {
                                    ShortcutInfoCompat shortcutInfoCompat3 = (ShortcutInfoCompat) map.get(PeerId_DerivedKt.b(((Peer) it11.next()).c()));
                                    if (shortcutInfoCompat3 != null) {
                                        arrayList2.add(shortcutInfoCompat3);
                                    }
                                }
                                ArrayList arrayList3 = new ArrayList();
                                Iterator it12 = list3.iterator();
                                while (it12.hasNext()) {
                                    ShortcutInfoCompat shortcutInfoCompat4 = (ShortcutInfoCompat) map.get(PeerId_DerivedKt.b((PeerId) it12.next()));
                                    if (shortcutInfoCompat4 != null) {
                                        arrayList3.add(shortcutInfoCompat4);
                                    }
                                }
                                Logger logger = LoggerKt.a;
                                ArrayList arrayList4 = new ArrayList(CollectionsKt.m(arrayList2, 10));
                                Iterator it13 = arrayList2.iterator();
                                while (it13.hasNext()) {
                                    arrayList4.add(((ShortcutInfoCompat) it13.next()).e);
                                }
                                Pair[] pairArr = {new Pair("shortcuts", arrayList4)};
                                logger.getClass();
                                Logger.h("setting dynamic shortcuts", pairArr);
                                List c = ShortcutManagerCompat.c(arrayList2);
                                ArrayList arrayList5 = new ArrayList(c.size());
                                Iterator it14 = c.iterator();
                                while (it14.hasNext()) {
                                    arrayList5.add(((ShortcutInfoCompat) it14.next()).b());
                                }
                                if (!((ShortcutManager) componentActivity.getSystemService(ShortcutManager.class)).setDynamicShortcuts(arrayList5)) {
                                    z = false;
                                } else {
                                    ShortcutManagerCompat.b(componentActivity).getClass();
                                    ShortcutManagerCompat.b(componentActivity).getClass();
                                    Iterator it15 = ((ArrayList) ShortcutManagerCompat.a(componentActivity)).iterator();
                                    if (!it15.hasNext()) {
                                        z = true;
                                    } else {
                                        it15.next().getClass();
                                        d.i();
                                        return null;
                                    }
                                }
                                if (!arrayList3.isEmpty()) {
                                    List c2 = ShortcutManagerCompat.c(arrayList3);
                                    if (Build.VERSION.SDK_INT <= 29) {
                                        Iterator it16 = new ArrayList(c2).iterator();
                                        while (it16.hasNext()) {
                                            ShortcutInfoCompat shortcutInfoCompat5 = (ShortcutInfoCompat) it16.next();
                                            IconCompat iconCompat2 = shortcutInfoCompat5.h;
                                            if (iconCompat2 != null) {
                                                int i4 = iconCompat2.a;
                                                if (i4 == 6 || i4 == 4) {
                                                    InputStream d = iconCompat2.d(componentActivity);
                                                    if (d != null && (decodeStream = BitmapFactory.decodeStream(d)) != null) {
                                                        if (i4 == 6) {
                                                            iconCompat = new IconCompat(5);
                                                            iconCompat.b = decodeStream;
                                                        } else {
                                                            iconCompat = new IconCompat(1);
                                                            iconCompat.b = decodeStream;
                                                        }
                                                        shortcutInfoCompat5.h = iconCompat;
                                                    }
                                                }
                                            }
                                            c2.remove(shortcutInfoCompat5);
                                        }
                                    }
                                    z2 = true;
                                    ArrayList arrayList6 = new ArrayList();
                                    Iterator it17 = c2.iterator();
                                    while (it17.hasNext()) {
                                        arrayList6.add(((ShortcutInfoCompat) it17.next()).b());
                                    }
                                    if (!((ShortcutManager) componentActivity.getSystemService(ShortcutManager.class)).updateShortcuts(arrayList6)) {
                                        z2 = false;
                                    } else {
                                        ShortcutManagerCompat.b(componentActivity).getClass();
                                        Iterator it18 = ((ArrayList) ShortcutManagerCompat.a(componentActivity)).iterator();
                                        if (it18.hasNext()) {
                                            it18.next().getClass();
                                            d.i();
                                            return null;
                                        }
                                    }
                                } else {
                                    z2 = true;
                                }
                                if (z && z2) {
                                    shortcutsManager.c = shortcutFingerprint2;
                                } else {
                                    Logger logger2 = LoggerKt.a;
                                    Pair[] pairArr2 = {new Pair("dynamicPublished", Boolean.valueOf(z)), new Pair("pinnedUpdated", Boolean.valueOf(z2))};
                                    logger2.getClass();
                                    Logger.g("ShortcutsManager", "shortcut update was rejected; it will be retried after the next state change", pairArr2);
                                }
                                return unit;
                            }
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        i2 = 0;
                        maxShortcutCountPerActivity = shortcutsManager$reconcileShortcuts$1.u;
                        str = shortcutsManager$reconcileShortcuts$1.n;
                        state2 = shortcutsManager$reconcileShortcuts$1.m;
                        ResultKt.b(obj2);
                    }
                } else {
                    i2 = 0;
                    ResultKt.b(obj2);
                    maxShortcutCountPerActivity = ((ShortcutManager) componentActivity.getSystemService(ShortcutManager.class)).getMaxShortcutCountPerActivity();
                    DefaultScheduler defaultScheduler = Dispatchers.a;
                    DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.l;
                    ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1 shortcutsManager$reconcileShortcuts$pinnedShortcuts$1 = new ShortcutsManager$reconcileShortcuts$pinnedShortcuts$1(shortcutsManager, null);
                    state2 = state;
                    shortcutsManager$reconcileShortcuts$1.m = state2;
                    shortcutsManager$reconcileShortcuts$1.n = "net.blip.android.SHARE_TARGET";
                    shortcutsManager$reconcileShortcuts$1.u = maxShortcutCountPerActivity;
                    shortcutsManager$reconcileShortcuts$1.x = 1;
                    obj2 = BuildersKt.e(defaultIoScheduler, shortcutsManager$reconcileShortcuts$pinnedShortcuts$1, shortcutsManager$reconcileShortcuts$1);
                    if (obj2 != coroutineSingletons) {
                        str = "net.blip.android.SHARE_TARGET";
                    } else {
                        return coroutineSingletons;
                    }
                }
                obj2.getClass();
                ArrayList arrayList7 = new ArrayList();
                for (Object obj3 : (Iterable) obj2) {
                    Set set3 = ((ShortcutInfoCompat) obj3).j;
                    if (set3 != null && set3.contains(str)) {
                        arrayList7.add(obj3);
                    }
                }
                ArrayList arrayList8 = new ArrayList();
                it = arrayList7.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (((ShortcutInfoCompat) next).o) {
                        arrayList8.add(next);
                    }
                }
                ArrayList arrayList9 = new ArrayList();
                it2 = arrayList7.iterator();
                while (it2.hasNext()) {
                    Object next2 = it2.next();
                    if (!((ShortcutInfoCompat) next2).o) {
                        arrayList9.add(next2);
                    }
                }
                ArrayList arrayList10 = new ArrayList(CollectionsKt.m(arrayList9, 10));
                it3 = arrayList9.iterator();
                while (it3.hasNext()) {
                    arrayList10.add(((ShortcutInfoCompat) it3.next()).b);
                }
                LinkedHashSet d2 = SetsKt.d(CollectionsKt.a0(arrayList10), ShortcutsManagerKt.d(componentActivity));
                b = State_DerivedKt.b(state2);
                if (b != null) {
                    arrayList = arrayList8;
                    shortcutsManager$reconcileShortcuts$12 = shortcutsManager$reconcileShortcuts$1;
                    list = EmptyList.j;
                } else {
                    Users d3 = State_DerivedKt.d(state2);
                    List N = CollectionsKt.N(d3.o);
                    ArrayList arrayList11 = new ArrayList();
                    Iterator it19 = N.iterator();
                    while (it19.hasNext()) {
                        PeerId peerId = ((PeerInteraction) it19.next()).n;
                        if (peerId != null) {
                            arrayList11.add(peerId);
                        }
                    }
                    List X2 = CollectionsKt.X(CollectionsKt.Z(arrayList11));
                    ArrayList arrayList12 = new ArrayList();
                    Iterator it20 = X2.iterator();
                    while (it20.hasNext()) {
                        Peer a = Users_DerivedKt.a(d3, (PeerId) it20.next());
                        if (a != null) {
                            arrayList12.add(a);
                        }
                    }
                    Collection values = b.x.values();
                    le leVar = new le(21);
                    arrayList = arrayList8;
                    le leVar2 = new le(22);
                    shortcutsManager$reconcileShortcuts$12 = shortcutsManager$reconcileShortcuts$1;
                    Function1[] function1Arr = new Function1[2];
                    function1Arr[i2] = leVar;
                    function1Arr[1] = leVar2;
                    ArrayList d4 = Device_DerivedKt.d(CollectionsKt.N(CollectionsKt.R(values, ComparisonsKt.a(function1Arr))));
                    ArrayList arrayList13 = new ArrayList(CollectionsKt.m(d4, 10));
                    Iterator it21 = d4.iterator();
                    while (it21.hasNext()) {
                        arrayList13.add(new Peer.Device((Device) it21.next(), b.m));
                    }
                    ArrayList arrayList14 = new ArrayList(CollectionsKt.X(CollectionsKt.Z(CollectionsKt.F(arrayList12, arrayList13))));
                    Iterator it22 = new IndexingIterable(new y4(i2, arrayList14)).iterator();
                    while (true) {
                        IndexingIterator indexingIterator = (IndexingIterator) it22;
                        if (indexingIterator.j.hasNext()) {
                            obj = indexingIterator.next();
                            Peer peer2 = (Peer) ((IndexedValue) obj).b;
                            peer2.getClass();
                            if (peer2 instanceof Peer.Device) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    IndexedValue indexedValue = (IndexedValue) obj;
                    list = arrayList14;
                    if (indexedValue != null) {
                        Object obj4 = indexedValue.b;
                        arrayList14.remove(obj4);
                        arrayList14.add(0, obj4);
                        list = arrayList14;
                    }
                }
                ArrayList arrayList15 = new ArrayList();
                for (Object obj5 : list) {
                    if (!d2.contains(PeerId_DerivedKt.b(((Peer) obj5).c()))) {
                        arrayList15.add(obj5);
                    }
                }
                List S = CollectionsKt.S(arrayList15, maxShortcutCountPerActivity);
                ArrayList arrayList16 = new ArrayList();
                it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    Object next3 = it4.next();
                    if (!d2.contains(((ShortcutInfoCompat) next3).b)) {
                        arrayList16.add(next3);
                    }
                }
                ArrayList arrayList17 = new ArrayList();
                it5 = arrayList16.iterator();
                while (it5.hasNext()) {
                    try {
                        String str2 = ((ShortcutInfoCompat) it5.next()).b;
                        str2.getClass();
                        failure = PeerId_DerivedKt.a(str2);
                    } catch (Throwable th) {
                        failure = new Result.Failure(th);
                    }
                    if (failure instanceof Result.Failure) {
                        failure = null;
                    }
                    PeerId peerId2 = (PeerId) failure;
                    if (peerId2 != null) {
                        arrayList17.add(peerId2);
                    }
                }
                Users d5 = State_DerivedKt.d(state2);
                ArrayList arrayList18 = new ArrayList();
                it6 = arrayList17.iterator();
                while (it6.hasNext()) {
                    Peer a2 = Users_DerivedKt.a(d5, (PeerId) it6.next());
                    if (a2 != null) {
                        arrayList18.add(a2);
                    }
                }
                messaging = state2.t;
                if (messaging == null && messaging.o) {
                    ArrayList arrayList19 = new ArrayList(CollectionsKt.m(arrayList17, 10));
                    Iterator it23 = arrayList17.iterator();
                    while (it23.hasNext()) {
                        arrayList19.add(PeerId_DerivedKt.b((PeerId) it23.next()));
                    }
                    Set a0 = CollectionsKt.a0(arrayList19);
                    ArrayList arrayList20 = new ArrayList(CollectionsKt.m(arrayList18, 10));
                    Iterator it24 = arrayList18.iterator();
                    while (it24.hasNext()) {
                        arrayList20.add(PeerId_DerivedKt.b(((Peer) it24.next()).c()));
                    }
                    Set a02 = CollectionsKt.a0(arrayList20);
                    if (a02 instanceof Collection) {
                        X = a02;
                    } else {
                        X = CollectionsKt.X(a02);
                    }
                    if (X.isEmpty()) {
                        set = CollectionsKt.a0(a0);
                    } else {
                        if (X instanceof Set) {
                            linkedHashSet = new LinkedHashSet();
                            for (Object obj6 : a0) {
                                if (!((Set) X).contains(obj6)) {
                                    linkedHashSet.add(obj6);
                                }
                            }
                        } else {
                            linkedHashSet = new LinkedHashSet(a0);
                            linkedHashSet.removeAll(X);
                        }
                        set = linkedHashSet;
                    }
                } else {
                    set = EmptySet.j;
                }
                ArrayList F = CollectionsKt.F(S, arrayList18);
                HashSet hashSet = new HashSet();
                ArrayList arrayList21 = new ArrayList();
                it7 = F.iterator();
                while (it7.hasNext()) {
                    Object next4 = it7.next();
                    if (hashSet.add(((Peer) next4).c())) {
                        arrayList21.add(next4);
                    }
                }
                ArrayList arrayList22 = new ArrayList(CollectionsKt.m(S, 10));
                it8 = S.iterator();
                while (it8.hasNext()) {
                    arrayList22.add(PeerId_DerivedKt.b(((Peer) it8.next()).c()));
                }
                ArrayList arrayList23 = new ArrayList(CollectionsKt.m(arrayList21, 10));
                it9 = arrayList21.iterator();
                while (it9.hasNext()) {
                    Peer peer3 = (Peer) it9.next();
                    PeerId c3 = peer3.c();
                    String b2 = peer3.b();
                    List list4 = S;
                    if (peer3 instanceof Peer.User) {
                        user = (Peer.User) peer3;
                    } else {
                        user = null;
                    }
                    if (user != null && (user2 = user.j) != null) {
                        byteString = user2.q;
                    } else {
                        byteString = null;
                    }
                    arrayList23.add(CollectionsKt.C(c3, b2, byteString));
                    S = list4;
                }
                List list5 = S;
                shortcutFingerprint = new ShortcutFingerprint(arrayList22, arrayList23, set);
                if (!shortcutFingerprint.equals(shortcutsManager.c)) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    Iterator it25 = arrayList21.iterator();
                    list2 = list5;
                    map = linkedHashMap;
                    it10 = it25;
                    shortcutFingerprint2 = shortcutFingerprint;
                    list3 = arrayList17;
                    shortcutsManager$reconcileShortcuts$1 = shortcutsManager$reconcileShortcuts$12;
                    set2 = set;
                    if (!it10.hasNext()) {
                    }
                }
                return unit;
            }
        }
        shortcutsManager$reconcileShortcuts$1 = new ShortcutsManager$reconcileShortcuts$1(shortcutsManager, continuation);
        Object obj22 = shortcutsManager$reconcileShortcuts$1.v;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = shortcutsManager$reconcileShortcuts$1.x;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
        obj22.getClass();
        ArrayList arrayList72 = new ArrayList();
        while (r0.hasNext()) {
        }
        ArrayList arrayList82 = new ArrayList();
        it = arrayList72.iterator();
        while (it.hasNext()) {
        }
        ArrayList arrayList92 = new ArrayList();
        it2 = arrayList72.iterator();
        while (it2.hasNext()) {
        }
        ArrayList arrayList102 = new ArrayList(CollectionsKt.m(arrayList92, 10));
        it3 = arrayList92.iterator();
        while (it3.hasNext()) {
        }
        LinkedHashSet d22 = SetsKt.d(CollectionsKt.a0(arrayList102), ShortcutsManagerKt.d(componentActivity));
        b = State_DerivedKt.b(state2);
        if (b != null) {
        }
        ArrayList arrayList152 = new ArrayList();
        while (r3.hasNext()) {
        }
        List S2 = CollectionsKt.S(arrayList152, maxShortcutCountPerActivity);
        ArrayList arrayList162 = new ArrayList();
        it4 = arrayList.iterator();
        while (it4.hasNext()) {
        }
        ArrayList arrayList172 = new ArrayList();
        it5 = arrayList162.iterator();
        while (it5.hasNext()) {
        }
        Users d52 = State_DerivedKt.d(state2);
        ArrayList arrayList182 = new ArrayList();
        it6 = arrayList172.iterator();
        while (it6.hasNext()) {
        }
        messaging = state2.t;
        if (messaging == null) {
        }
        set = EmptySet.j;
        ArrayList F2 = CollectionsKt.F(S2, arrayList182);
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList212 = new ArrayList();
        it7 = F2.iterator();
        while (it7.hasNext()) {
        }
        ArrayList arrayList222 = new ArrayList(CollectionsKt.m(S2, 10));
        it8 = S2.iterator();
        while (it8.hasNext()) {
        }
        ArrayList arrayList232 = new ArrayList(CollectionsKt.m(arrayList212, 10));
        it9 = arrayList212.iterator();
        while (it9.hasNext()) {
        }
        List list52 = S2;
        shortcutFingerprint = new ShortcutFingerprint(arrayList222, arrayList232, set);
        if (!shortcutFingerprint.equals(shortcutsManager.c)) {
        }
        return unit2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(ContinuationImpl continuationImpl) {
        ShortcutsManager$updateAsNeeded$1 shortcutsManager$updateAsNeeded$1;
        int i;
        if (continuationImpl instanceof ShortcutsManager$updateAsNeeded$1) {
            shortcutsManager$updateAsNeeded$1 = (ShortcutsManager$updateAsNeeded$1) continuationImpl;
            int i2 = shortcutsManager$updateAsNeeded$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                shortcutsManager$updateAsNeeded$1.o = i2 - Integer.MIN_VALUE;
                Object obj = shortcutsManager$updateAsNeeded$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = shortcutsManager$updateAsNeeded$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ShortcutsManager$updateAsNeeded$2 shortcutsManager$updateAsNeeded$2 = new ShortcutsManager$updateAsNeeded$2(this, null);
                    shortcutsManager$updateAsNeeded$1.o = 1;
                    if (CoroutineScopeKt.c(shortcutsManager$updateAsNeeded$2, shortcutsManager$updateAsNeeded$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }
        shortcutsManager$updateAsNeeded$1 = new ShortcutsManager$updateAsNeeded$1(this, continuationImpl);
        Object obj2 = shortcutsManager$updateAsNeeded$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = shortcutsManager$updateAsNeeded$1.o;
        if (i == 0) {
        }
        return Unit.a;
    }
}
