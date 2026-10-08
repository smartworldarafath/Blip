package net.blip.android.notifications;

import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.messaging.FirebaseMessaging;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.tasks.TasksKt;
import net.blip.libblip.Core;
import net.blip.libblip.Dispatcher_androidKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.User;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FirebaseNotificationTokenManager$observeAuthChanges$4<T> implements FlowCollector {
    public final /* synthetic */ Core j;

    public FirebaseNotificationTokenManager$observeAuthChanges$4(Core core) {
        this.j = core;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009a, code lost:
    
        if (r9 == r2) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object r(User user, Continuation continuation) {
        FirebaseNotificationTokenManager$observeAuthChanges$4$emit$1 firebaseNotificationTokenManager$observeAuthChanges$4$emit$1;
        int i;
        FirebaseMessaging firebaseMessaging;
        FirebaseMessaging firebaseMessaging2;
        Unit unit = Unit.a;
        try {
            try {
                if (continuation instanceof FirebaseNotificationTokenManager$observeAuthChanges$4$emit$1) {
                    firebaseNotificationTokenManager$observeAuthChanges$4$emit$1 = (FirebaseNotificationTokenManager$observeAuthChanges$4$emit$1) continuation;
                    int i2 = firebaseNotificationTokenManager$observeAuthChanges$4$emit$1.o;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        firebaseNotificationTokenManager$observeAuthChanges$4$emit$1.o = i2 - Integer.MIN_VALUE;
                        Object obj = firebaseNotificationTokenManager$observeAuthChanges$4$emit$1.m;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        i = firebaseNotificationTokenManager$observeAuthChanges$4$emit$1.o;
                        if (i == 0) {
                            if (i != 1) {
                                if (i == 2) {
                                    ResultKt.b(obj);
                                } else {
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                            } else {
                                ResultKt.b(obj);
                                return unit;
                            }
                        } else {
                            ResultKt.b(obj);
                            if (user == null) {
                                synchronized (FirebaseMessaging.class) {
                                    firebaseMessaging2 = FirebaseMessaging.getInstance(FirebaseApp.b());
                                }
                                firebaseMessaging2.getClass();
                                Task b = firebaseMessaging2.b();
                                b.getClass();
                                firebaseNotificationTokenManager$observeAuthChanges$4$emit$1.o = 1;
                                if (TasksKt.a(b, firebaseNotificationTokenManager$observeAuthChanges$4$emit$1) != coroutineSingletons) {
                                    return unit;
                                }
                            } else {
                                synchronized (FirebaseMessaging.class) {
                                    firebaseMessaging = FirebaseMessaging.getInstance(FirebaseApp.b());
                                }
                                firebaseMessaging.getClass();
                                Task f = firebaseMessaging.f();
                                f.getClass();
                                firebaseNotificationTokenManager$observeAuthChanges$4$emit$1.o = 2;
                                obj = TasksKt.a(f, firebaseNotificationTokenManager$observeAuthChanges$4$emit$1);
                            }
                            return coroutineSingletons;
                        }
                        String str = (String) obj;
                        defpackage.c cVar = this.j.b;
                        str.getClass();
                        Dispatcher_androidKt.a(str, cVar);
                        return unit;
                    }
                }
                if (i == 0) {
                }
                String str2 = (String) obj;
                defpackage.c cVar2 = this.j.b;
                str2.getClass();
                Dispatcher_androidKt.a(str2, cVar2);
                return unit;
            } catch (Exception e) {
                LoggerKt.a.getClass();
                Logger.e("fetching firebase token: " + e, new Pair[0]);
                return unit;
            }
        } catch (Exception e2) {
            LoggerKt.a.getClass();
            Logger.e("deleting firebase token: " + e2, new Pair[0]);
            return unit;
        }
        firebaseNotificationTokenManager$observeAuthChanges$4$emit$1 = new FirebaseNotificationTokenManager$observeAuthChanges$4$emit$1(this, continuation);
        Object obj2 = firebaseNotificationTokenManager$observeAuthChanges$4$emit$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = firebaseNotificationTokenManager$observeAuthChanges$4$emit$1.o;
    }
}
