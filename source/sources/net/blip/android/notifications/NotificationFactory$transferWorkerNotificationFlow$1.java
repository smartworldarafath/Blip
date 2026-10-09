package net.blip.android.notifications;

import android.app.Notification;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.ec;
import defpackage.u2;
import defpackage.z6;
import java.time.Instant;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.ThrowingCollector;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;
import kotlinx.coroutines.flow.internal.CombineKt;
import net.blip.android.R;
import net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.Users_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.libblip.frontend.Users;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1", f = "NotificationFactory.kt", l = {401}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class NotificationFactory$transferWorkerNotificationFlow$1 extends SuspendLambda implements Function2<FlowCollector<? super Pair<? extends Integer, ? extends Notification>>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ StateFlow p;
    public final /* synthetic */ String q;
    public final /* synthetic */ NotificationFactory r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$4", f = "NotificationFactory.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 extends SuspendLambda implements Function3<Transfer, State, Continuation<? super Pair<? extends Peer, ? extends Transfer>>, Object> {
        public /* synthetic */ Transfer n;
        public /* synthetic */ State o;

        /* JADX WARN: Type inference failed for: r1v1, types: [net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$4, kotlin.coroutines.jvm.internal.SuspendLambda] */
        @Override // kotlin.jvm.functions.Function3
        public final Object f(Object obj, Object obj2, Object obj3) {
            ?? suspendLambda = new SuspendLambda(3, (Continuation) obj3);
            suspendLambda.n = (Transfer) obj;
            suspendLambda.o = (State) obj2;
            return suspendLambda.v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            Users users;
            Transfer transfer = this.n;
            State state = this.o;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            PeerId peerId = transfer.n;
            Peer peer = null;
            if (peerId != null && (users = state.u) != null) {
                peer = Users_DerivedKt.a(users, peerId);
            }
            return new Pair(peer, transfer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$7", f = "NotificationFactory.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.notifications.NotificationFactory$transferWorkerNotificationFlow$1$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass7 extends SuspendLambda implements Function2<Pair<? extends Integer, ? extends Notification>, Continuation<? super Unit>, Object> {
        public /* synthetic */ Object n;
        public final /* synthetic */ Ref$LongRef o;
        public final /* synthetic */ NotificationFactory p;
        public final /* synthetic */ Ref$LongRef q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass7(Ref$LongRef ref$LongRef, NotificationFactory notificationFactory, Ref$LongRef ref$LongRef2, Continuation continuation) {
            super(2, continuation);
            this.o = ref$LongRef;
            this.p = notificationFactory;
            this.q = ref$LongRef2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            AnonymousClass7 anonymousClass7 = (AnonymousClass7) s((Pair) obj, (Continuation) obj2);
            Unit unit = Unit.a;
            anonymousClass7.v(unit);
            return unit;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass7 anonymousClass7 = new AnonymousClass7(this.o, this.p, this.q, continuation);
            anonymousClass7.n = obj;
            return anonymousClass7;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            int i;
            AnimationDrawable animationDrawable;
            Pair pair = (Pair) this.n;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            Icon smallIcon = ((Notification) pair.k).getSmallIcon();
            if (smallIcon != null) {
                i = smallIcon.getResId();
            } else {
                i = R.drawable.ic_notification_downloading;
            }
            Drawable b = AppCompatResources.b(this.p.a, i);
            long j = 0;
            if (b != null) {
                Long l = null;
                if (b instanceof AnimationDrawable) {
                    animationDrawable = (AnimationDrawable) b;
                } else {
                    animationDrawable = null;
                }
                if (animationDrawable != null) {
                    long j2 = 0;
                    for (int i2 = 0; i2 < animationDrawable.getNumberOfFrames(); i2++) {
                        j2 += animationDrawable.getDuration(i2);
                    }
                    l = Long.valueOf(j2);
                }
                if (l != null) {
                    j = l.longValue();
                }
            }
            this.o.j = j;
            this.q.j = Instant.now().toEpochMilli();
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationFactory$transferWorkerNotificationFlow$1(StateFlow stateFlow, String str, NotificationFactory notificationFactory, Continuation continuation) {
        super(2, continuation);
        this.p = stateFlow;
        this.q = str;
        this.r = notificationFactory;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NotificationFactory$transferWorkerNotificationFlow$1) s((FlowCollector) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        NotificationFactory$transferWorkerNotificationFlow$1 notificationFactory$transferWorkerNotificationFlow$1 = new NotificationFactory$transferWorkerNotificationFlow$1(this.p, this.q, this.r, continuation);
        notificationFactory$transferWorkerNotificationFlow$1.o = obj;
        return notificationFactory$transferWorkerNotificationFlow$1;
    }

    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /* JADX WARN: Type inference failed for: r6v3, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function3] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        FlowCollector flowCollector = (FlowCollector) this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        int i2 = 1;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            ?? obj2 = new Object();
            obj2.j = Instant.now().toEpochMilli();
            ?? obj3 = new Object();
            final StateFlow stateFlow = this.p;
            final NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1 notificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1 = new NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1(FlowKt.j(new NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$mapNotNull$1(stateFlow, this.q), new z6(13)));
            final ?? suspendLambda = new SuspendLambda(3, null);
            ChannelFlowTransformLatest w = FlowKt.w(FlowKt.i(new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1
                @Override // kotlinx.coroutines.flow.Flow
                public final Object a(FlowCollector flowCollector2, Continuation continuation) {
                    Object a = CombineKt.a(continuation, FlowKt__ZipKt$nullArrayFactory$1.j, new FlowKt__ZipKt$combine$1$1(suspendLambda, null), flowCollector2, new Flow[]{NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$filter$1.this, stateFlow});
                    if (a == CoroutineSingletons.j) {
                        return a;
                    }
                    return Unit.a;
                }
            }), new NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1(null, new ec(i2, obj3, obj2)));
            NotificationFactory notificationFactory = this.r;
            FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(new AnonymousClass7(obj3, notificationFactory, obj2, null), new NotificationFactory$transferWorkerNotificationFlow$1$invokeSuspend$$inlined$map$1(w, notificationFactory));
            this.o = null;
            this.n = 1;
            if (!(flowCollector instanceof ThrowingCollector)) {
                Object a = flowKt__TransformKt$onEach$$inlined$unsafeTransform$1.a(flowCollector, this);
                if (a != coroutineSingletons) {
                    a = unit;
                }
                if (a == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                throw ((ThrowingCollector) flowCollector).j;
            }
        }
        return unit;
    }
}
