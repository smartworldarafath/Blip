package net.blip.android.shortcuts;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import net.blip.libblip.PeerId;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.frontend.Messaging;
import net.blip.libblip.frontend.PeerInteraction;
import net.blip.libblip.frontend.State;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ShortcutsManager$reportNewPeerInteractions$$inlined$map$1 implements Flow<Pair<? extends Boolean, ? extends PeerInteractionFingerprint>> {
    public final /* synthetic */ Flow j;

    @DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManager$reportNewPeerInteractions$$inlined$map$1", f = "ShortcutsManager.kt", l = {112}, m = "collect", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
    /* renamed from: net.blip.android.shortcuts.ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$1, reason: invalid class name */
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
            return ShortcutsManager$reportNewPeerInteractions$$inlined$map$1.this.a(null, this);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: net.blip.android.shortcuts.ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2<T> implements FlowCollector {
        public final /* synthetic */ FlowCollector j;

        @DebugMetadata(c = "net.blip.android.shortcuts.ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2", f = "ShortcutsManager.kt", l = {217}, m = "emit", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
        /* renamed from: net.blip.android.shortcuts.ShortcutsManager$reportNewPeerInteractions$$inlined$map$1$2$1, reason: invalid class name */
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

        public AnonymousClass2(FlowCollector flowCollector) {
            this.j = flowCollector;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1;
            int i;
            PeerId peerId;
            if (continuation instanceof AnonymousClass1) {
                anonymousClass1 = (AnonymousClass1) continuation;
                int i2 = anonymousClass1.n;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anonymousClass1.n = i2 - Integer.MIN_VALUE;
                    Object obj2 = anonymousClass1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = anonymousClass1.n;
                    PeerInteractionFingerprint peerInteractionFingerprint = null;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj2);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        State state = (State) obj;
                        Messaging messaging = state.t;
                        boolean z = false;
                        if (messaging != null && messaging.o) {
                            z = true;
                        }
                        Boolean valueOf = Boolean.valueOf(z);
                        PeerInteraction peerInteraction = (PeerInteraction) CollectionsKt.A(State_DerivedKt.d(state).o);
                        if (peerInteraction != null && (peerId = peerInteraction.n) != null) {
                            peerInteractionFingerprint = new PeerInteractionFingerprint(peerId, peerInteraction.m);
                        }
                        Pair pair = new Pair(valueOf, peerInteractionFingerprint);
                        anonymousClass1.n = 1;
                        if (this.j.r(pair, anonymousClass1) == coroutineSingletons) {
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
            PeerInteractionFingerprint peerInteractionFingerprint2 = null;
            if (i == 0) {
            }
            return Unit.a;
        }
    }

    public ShortcutsManager$reportNewPeerInteractions$$inlined$map$1(Flow flow) {
        this.j = flow;
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
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(flowCollector);
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
