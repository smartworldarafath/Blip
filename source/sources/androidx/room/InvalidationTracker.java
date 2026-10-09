package androidx.room;

import androidx.work.impl.WorkDatabase_Impl;
import defpackage.r1;
import defpackage.u2;
import defpackage.x9;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.FunctionReference;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class InvalidationTracker {
    public final WorkDatabase_Impl a;
    public final TriggerBasedInvalidationTracker b;
    public final LinkedHashMap c;
    public final ReentrantLock d;
    public final x9 e;
    public final x9 f;
    public final Object g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Observer {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReference] */
    public InvalidationTracker(WorkDatabase_Impl workDatabase_Impl, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String... strArr) {
        this.a = workDatabase_Impl;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(workDatabase_Impl, linkedHashMap, linkedHashMap2, strArr, workDatabase_Impl.j, new FunctionReference(1, this, InvalidationTracker.class, "notifyInvalidatedObservers", "notifyInvalidatedObservers(Ljava/util/Set;)V", 0));
        this.b = triggerBasedInvalidationTracker;
        this.c = new LinkedHashMap();
        this.d = new ReentrantLock();
        this.e = new x9(1, this);
        this.f = new x9(2, this);
        Collections.newSetFromMap(new IdentityHashMap()).getClass();
        this.g = new Object();
        triggerBasedInvalidationTracker.k = new r1(24, this);
    }

    public final Flow a(String[] strArr) {
        Pair pair;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.b;
        triggerBasedInvalidationTracker.getClass();
        SetBuilder setBuilder = new SetBuilder();
        int i = 0;
        for (String str : strArr) {
            LinkedHashMap linkedHashMap = triggerBasedInvalidationTracker.c;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Set set = (Set) linkedHashMap.get(lowerCase);
            if (set != null) {
                setBuilder.addAll(set);
            } else {
                setBuilder.add(str);
            }
        }
        String[] strArr2 = (String[]) SetsKt.a(setBuilder).toArray(new String[0]);
        int length = strArr2.length;
        int[] iArr = new int[length];
        while (true) {
            if (i < length) {
                String str2 = strArr2[i];
                LinkedHashMap linkedHashMap2 = triggerBasedInvalidationTracker.f;
                String lowerCase2 = str2.toLowerCase(Locale.ROOT);
                lowerCase2.getClass();
                Integer num = (Integer) linkedHashMap2.get(lowerCase2);
                if (num != null) {
                    iArr[i] = num.intValue();
                    i++;
                } else {
                    u2.g("There is no table with name ".concat(str2));
                    pair = null;
                    break;
                }
            } else {
                pair = new Pair(strArr2, iArr);
                break;
            }
        }
        String[] strArr3 = (String[]) pair.j;
        int[] iArr2 = (int[]) pair.k;
        strArr3.getClass();
        iArr2.getClass();
        return FlowKt.p(new TriggerBasedInvalidationTracker$createFlow$1(triggerBasedInvalidationTracker, iArr2, strArr3, null));
    }

    public final Object b(SuspendLambda suspendLambda) {
        Object f;
        WorkDatabase_Impl workDatabase_Impl = this.a;
        if ((!workDatabase_Impl.j() || workDatabase_Impl.m()) && (f = this.b.f(suspendLambda)) == CoroutineSingletons.j) {
            return f;
        }
        return Unit.a;
    }
}
