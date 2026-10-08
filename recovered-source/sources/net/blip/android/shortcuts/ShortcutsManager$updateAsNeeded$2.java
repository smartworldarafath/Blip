package net.blip.android.shortcuts;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge;
import net.blip.libblip.PeerId;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.frontend.Messaging;
import net.blip.libblip.frontend.PeerInteraction;
import net.blip.libblip.frontend.State;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManager$updateAsNeeded$2", f = "ShortcutsManager.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class ShortcutsManager$updateAsNeeded$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
    public /* synthetic */ Object n;
    public final /* synthetic */ ShortcutsManager o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManager$updateAsNeeded$2$1", f = "ShortcutsManager.kt", l = {52}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.shortcuts.ShortcutsManager$updateAsNeeded$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ ShortcutsManager o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: net.blip.android.shortcuts.ShortcutsManager$updateAsNeeded$2$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final /* synthetic */ class C00111 extends FunctionReferenceImpl implements Function2<State, Continuation<? super Unit>, Object> {
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                return ShortcutsManager.a((ShortcutsManager) this.k, (State) obj, (Continuation) obj2);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ShortcutsManager shortcutsManager, Continuation continuation) {
            super(2, continuation);
            this.o = shortcutsManager;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, continuation);
        }

        /* JADX WARN: Type inference failed for: r3v3, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.FunctionReference] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                ShortcutsManager shortcutsManager = this.o;
                StateFlow stateFlow = shortcutsManager.b;
                stateFlow.getClass();
                ChannelLimitedFlowMerge s = FlowKt.s(new FlowKt__LimitKt$take$$inlined$unsafeFlow$1(stateFlow), FlowKt.t(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(stateFlow)));
                ?? functionReference = new FunctionReference(2, shortcutsManager, ShortcutsManager.class, "reconcileShortcuts", "reconcileShortcuts(Lnet/blip/libblip/frontend/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
                this.n = 1;
                if (FlowKt.h(s, functionReference, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManager$updateAsNeeded$2$2", f = "ShortcutsManager.kt", l = {56}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.shortcuts.ShortcutsManager$updateAsNeeded$2$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ ShortcutsManager o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ShortcutsManager shortcutsManager, Continuation continuation) {
            super(2, continuation);
            this.o = shortcutsManager;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.o, continuation);
        }

        /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
        /* JADX WARN: Type inference failed for: r8v1, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            PeerInteraction peerInteraction;
            PeerId peerId;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            PeerInteractionFingerprint peerInteractionFingerprint = null;
            boolean z = true;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                this.n = 1;
                final ?? obj2 = new Object();
                final ShortcutsManager shortcutsManager = this.o;
                StateFlow stateFlow = shortcutsManager.b;
                Messaging messaging = ((State) stateFlow.getValue()).t;
                if (messaging == null || !messaging.o) {
                    z = false;
                }
                obj2.j = z;
                final ?? obj3 = new Object();
                if (z && (peerInteraction = (PeerInteraction) CollectionsKt.A(State_DerivedKt.d((State) stateFlow.getValue()).o)) != null && (peerId = peerInteraction.n) != null) {
                    peerInteractionFingerprint = new PeerInteractionFingerprint(peerId, peerInteraction.m);
                }
                obj3.j = peerInteractionFingerprint;
                if (new ShortcutsManager$reportNewPeerInteractions$$inlined$map$1(stateFlow).a(new FlowCollector() { // from class: net.blip.android.shortcuts.ShortcutsManager$reportNewPeerInteractions$3
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object r(Object obj4, Continuation continuation) {
                        Pair pair = (Pair) obj4;
                        boolean booleanValue = ((Boolean) pair.j).booleanValue();
                        PeerInteractionFingerprint peerInteractionFingerprint2 = (PeerInteractionFingerprint) pair.k;
                        Unit unit = Unit.a;
                        Ref$ObjectRef ref$ObjectRef = obj3;
                        Ref$BooleanRef ref$BooleanRef = Ref$BooleanRef.this;
                        if (!booleanValue) {
                            ref$BooleanRef.j = false;
                            ref$ObjectRef.j = null;
                            return unit;
                        }
                        if (!ref$BooleanRef.j) {
                            ref$BooleanRef.j = true;
                            ref$ObjectRef.j = peerInteractionFingerprint2;
                            return unit;
                        }
                        if (peerInteractionFingerprint2 != null && !peerInteractionFingerprint2.equals(ref$ObjectRef.j)) {
                            ShortcutsManagerKt.e(shortcutsManager.a, peerInteractionFingerprint2.a);
                        }
                        ref$ObjectRef.j = peerInteractionFingerprint2;
                        return unit;
                    }
                }, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutsManager$updateAsNeeded$2(ShortcutsManager shortcutsManager, Continuation continuation) {
        super(2, continuation);
        this.o = shortcutsManager;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ShortcutsManager$updateAsNeeded$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ShortcutsManager$updateAsNeeded$2 shortcutsManager$updateAsNeeded$2 = new ShortcutsManager$updateAsNeeded$2(this.o, continuation);
        shortcutsManager$updateAsNeeded$2.n = obj;
        return shortcutsManager$updateAsNeeded$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.n;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        ShortcutsManager shortcutsManager = this.o;
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(shortcutsManager, null), 3);
        return BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(shortcutsManager, null), 3);
    }
}
