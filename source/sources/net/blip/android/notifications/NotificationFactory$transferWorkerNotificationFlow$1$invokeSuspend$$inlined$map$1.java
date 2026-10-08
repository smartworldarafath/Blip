package net.blip.android.notifications;

import android.app.Notification;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.e0;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import net.blip.android.notifications.NotificationChannels;
import net.blip.libblip.Peer;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1 implements Flow<Pair<? extends Integer, ? extends Notification>> {
    public final /* synthetic */ ChannelFlowTransformLatest j;
    public final /* synthetic */ NotificationFactory k;

    @DebugMetadata(c = "net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1", f = "NotificationFactory.kt", l = {112}, m = "collect", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContinuationImpl {
        public /* synthetic */ Object m;
        public int n;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            this.m = obj;
            this.n |= Integer.MIN_VALUE;
            return NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1.this.a(null, this);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2<T> implements FlowCollector {
        public final /* synthetic */ FlowCollector j;
        public final /* synthetic */ NotificationFactory k;

        @DebugMetadata(c = "net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2", f = "NotificationFactory.kt", l = {217}, m = "emit", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
        /* renamed from: net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass1 extends ContinuationImpl {
            public /* synthetic */ Object m;
            public int n;

            public AnonymousClass1(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object v(Object obj) {
                this.m = obj;
                this.n |= Integer.MIN_VALUE;
                return AnonymousClass2.this.r(null, this);
            }
        }

        public AnonymousClass2(FlowCollector flowCollector, NotificationFactory notificationFactory) {
            this.j = flowCollector;
            this.k = notificationFactory;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1;
            int i;
            if (continuation instanceof AnonymousClass1) {
                anonymousClass1 = (AnonymousClass1) continuation;
                int i2 = anonymousClass1.n;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anonymousClass1.n = i2 - Integer.MIN_VALUE;
                    Object obj2 = anonymousClass1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = anonymousClass1.n;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj2);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        Pair pair = (Pair) obj;
                        Peer peer = (Peer) pair.j;
                        Transfer transfer = (Transfer) pair.k;
                        transfer.getClass();
                        int hashCode = ("transferProgress:" + transfer.m).hashCode();
                        NotificationChannels.Config config = NotificationChannels.e;
                        NotificationFactory notificationFactory = this.k;
                        Pair c = notificationFactory.c(hashCode, config, peer, new e0(peer, transfer, notificationFactory, hashCode));
                        anonymousClass1.n = 1;
                        if (this.j.r(c, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.a;
                }
            }
            anonymousClass1 = new AnonymousClass1(continuation);
            Object obj22 = anonymousClass1.m;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = anonymousClass1.n;
            if (i == 0) {
            }
            return Unit.a;
        }
    }

    public NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1(ChannelFlowTransformLatest channelFlowTransformLatest, NotificationFactory notificationFactory) {
        this.j = channelFlowTransformLatest;
        this.k = notificationFactory;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        int i;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i2 = anonymousClass1.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.n = i2 - Integer.MIN_VALUE;
                Object obj = anonymousClass1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = anonymousClass1.n;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(flowCollector, this.k);
                    anonymousClass1.n = 1;
                    if (this.j.a(anonymousClass2, anonymousClass1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }
        anonymousClass1 = new AnonymousClass1(continuation);
        Object obj2 = anonymousClass1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = anonymousClass1.n;
        if (i == 0) {
        }
        return Unit.a;
    }
}
