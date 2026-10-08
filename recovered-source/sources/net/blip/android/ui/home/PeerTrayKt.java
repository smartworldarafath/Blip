package net.blip.android.ui.home;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.VectorResources_androidKt;
import defpackage.cd;
import defpackage.k1;
import defpackage.md;
import defpackage.n9;
import defpackage.od;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.flow.Flow;
import net.blip.android.R;
import net.blip.android.shortcuts.ShortcutsManagerKt;
import net.blip.android.ui.androidtheme.AndroidAvatarTheme;
import net.blip.android.ui.components.MaxRowGridKt;
import net.blip.android.ui.dialogs.BlockUserConfirmationDialogKt;
import net.blip.android.ui.dialogs.RemovePeerConfirmationDialogKt;
import net.blip.android.ui.home.PeerTrayCellsKt;
import net.blip.android.ui.home.PeerTrayItem;
import net.blip.android.ui.home.PeerTrayKt;
import net.blip.android.ui.util.UmbrellaContentPickerKt;
import net.blip.libblip.DerivedStateFlow;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerPickerContent;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.User;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PeerTrayKt {
    public static final void a(Modifier modifier, PeerPickerContent.Overview overview, final Function1 function1, final Function2 function2, boolean z, Function1 function12, Function1 function13, final Function0 function0, final Function0 function02, Composer composer, int i) {
        int i2;
        boolean z2;
        Function1 function14;
        Function1 function15;
        boolean z3;
        GapComposer gapComposer;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        overview.getClass();
        List list = overview.b;
        List list2 = overview.a;
        function1.getClass();
        function2.getClass();
        function12.getClass();
        function13.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(1281770103);
        if ((i & 6) == 0) {
            if (gapComposer2.f(modifier)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i2 = i12 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer2.h(overview)) {
                i11 = 32;
            } else {
                i11 = 16;
            }
            i2 |= i11;
        }
        if ((i & 384) == 0) {
            if (gapComposer2.h(function1)) {
                i10 = 256;
            } else {
                i10 = 128;
            }
            i2 |= i10;
        }
        if ((i & 3072) == 0) {
            if (gapComposer2.h(function2)) {
                i9 = 2048;
            } else {
                i9 = 1024;
            }
            i2 |= i9;
        }
        if ((i & 24576) == 0) {
            z2 = z;
            if (gapComposer2.g(z2)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i2 |= i8;
        } else {
            z2 = z;
        }
        if ((196608 & i) == 0) {
            function14 = function12;
            if (gapComposer2.h(function14)) {
                i7 = 131072;
            } else {
                i7 = 65536;
            }
            i2 |= i7;
        } else {
            function14 = function12;
        }
        if ((1572864 & i) == 0) {
            function15 = function13;
            if (gapComposer2.h(function15)) {
                i6 = 1048576;
            } else {
                i6 = 524288;
            }
            i2 |= i6;
        } else {
            function15 = function13;
        }
        if ((12582912 & i) == 0) {
            if (gapComposer2.h(function0)) {
                i5 = 8388608;
            } else {
                i5 = 4194304;
            }
            i2 |= i5;
        }
        if ((100663296 & i) == 0) {
            if (gapComposer2.h(function02)) {
                i4 = 67108864;
            } else {
                i4 = 33554432;
            }
            i2 |= i4;
        }
        if ((38347923 & i2) != 38347922) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer2.N(i2 & 1, z3)) {
            final Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
            if (((Configuration) gapComposer2.j(AndroidCompositionLocals_androidKt.a)).orientation == 2) {
                i3 = 1;
            } else {
                i3 = 2;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new PeerTrayItem.Peer((Peer) it.next()));
            }
            for (Iterator it2 = list.iterator(); it2.hasNext(); it2 = it2) {
                arrayList.add(new PeerTrayItem.Peer((Peer) it2.next()));
            }
            if (list2.isEmpty()) {
                arrayList.add(PeerTrayItem.HelpSendToYourDevices.a);
            }
            if (list.isEmpty()) {
                arrayList.add(PeerTrayItem.HelpSendToOtherPeople.a);
            }
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
            int hashCode = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap l = gapComposer2.l();
            Modifier c = ComposedModifierKt.c(gapComposer2, modifier);
            ComposeUiNode.b.getClass();
            gapComposer2.Z();
            if (gapComposer2.S) {
                gapComposer2.k(LayoutNode.b0);
            } else {
                gapComposer2.j0();
            }
            Updater.c(gapComposer2, d, ComposeUiNode.Companion.d);
            Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer2, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer2);
            Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
            final boolean z4 = z2;
            final Function1 function16 = function14;
            final Function1 function17 = function15;
            MaxRowGridKt.a(null, arrayList, 0, i3, 0.0f, ComposableSingletons$PeerTrayKt.a, ComposableLambdaKt.b(-1982410910, new Function3() { // from class: kd
                @Override // kotlin.jvm.functions.Function3
                public final Object f(Object obj, Object obj2, Object obj3) {
                    boolean z5;
                    boolean z6;
                    boolean z7;
                    boolean z8;
                    boolean z9;
                    boolean h;
                    int i13;
                    final PeerTrayItem peerTrayItem = (PeerTrayItem) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    peerTrayItem.getClass();
                    if ((intValue & 6) == 0) {
                        if ((intValue & 8) == 0) {
                            h = ((GapComposer) composer2).f(peerTrayItem);
                        } else {
                            h = ((GapComposer) composer2).h(peerTrayItem);
                        }
                        if (h) {
                            i13 = 4;
                        } else {
                            i13 = 2;
                        }
                        intValue |= i13;
                    }
                    final int i14 = 1;
                    final int i15 = 0;
                    if ((intValue & 19) != 18) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.N(intValue & 1, z5)) {
                        if (peerTrayItem instanceof PeerTrayItem.HelpSendToYourDevices) {
                            gapComposer3.W(2091971834);
                            PeerTrayCellsKt.c(null, ((AndroidAvatarTheme) ((AvatarTheme) gapComposer3.j(AvatarKt.a))).b(gapComposer3).f, VectorResources_androidKt.b(R.drawable.ic_peergrid_add, gapComposer3), "Send to your devices", Function0.this, gapComposer3, 3072);
                            gapComposer3.p(false);
                        } else if (peerTrayItem instanceof PeerTrayItem.HelpSendToOtherPeople) {
                            gapComposer3.W(2092416467);
                            PeerTrayCellsKt.c(null, ((AndroidAvatarTheme) ((AvatarTheme) gapComposer3.j(AvatarKt.a))).b(gapComposer3).i, VectorResources_androidKt.b(R.drawable.ic_peergrid_search, gapComposer3), "Send to other people", function02, gapComposer3, 3072);
                            gapComposer3.p(false);
                        } else if (peerTrayItem instanceof PeerTrayItem.Peer) {
                            gapComposer3.W(2092863270);
                            Peer peer = ((PeerTrayItem.Peer) peerTrayItem).a;
                            Function1 function18 = function1;
                            boolean f = gapComposer3.f(function18);
                            int i16 = intValue & 14;
                            if (i16 != 4 && ((intValue & 8) == 0 || !gapComposer3.h(peerTrayItem))) {
                                z6 = false;
                            } else {
                                z6 = true;
                            }
                            boolean z10 = f | z6;
                            Object K = gapComposer3.K();
                            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                            if (z10 || K == composer$Companion$Empty$1) {
                                K = new p0(25, function18, peerTrayItem);
                                gapComposer3.g0(K);
                            }
                            Function0 function03 = (Function0) K;
                            Function2 function22 = function2;
                            boolean f2 = gapComposer3.f(function22);
                            if (i16 != 4 && ((intValue & 8) == 0 || !gapComposer3.h(peerTrayItem))) {
                                z7 = false;
                            } else {
                                z7 = true;
                            }
                            boolean z11 = f2 | z7;
                            Object K2 = gapComposer3.K();
                            if (z11 || K2 == composer$Companion$Empty$1) {
                                K2 = new ec(5, function22, peerTrayItem);
                                gapComposer3.g0(K2);
                            }
                            Function1 function19 = (Function1) K2;
                            final Context context2 = context;
                            boolean h2 = gapComposer3.h(context2);
                            if (i16 != 4 && ((intValue & 8) == 0 || !gapComposer3.h(peerTrayItem))) {
                                z8 = false;
                            } else {
                                z8 = true;
                            }
                            boolean z12 = h2 | z8;
                            final Function1 function110 = function16;
                            boolean f3 = z12 | gapComposer3.f(function110);
                            Object K3 = gapComposer3.K();
                            if (f3 || K3 == composer$Companion$Empty$1) {
                                K3 = new Function0() { // from class: nd
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object a() {
                                        String str;
                                        int i17 = i15;
                                        Unit unit = Unit.a;
                                        Function1 function111 = function110;
                                        PeerTrayItem peerTrayItem2 = peerTrayItem;
                                        Context context3 = context2;
                                        switch (i17) {
                                            case 0:
                                                PeerTrayItem.Peer peer2 = (PeerTrayItem.Peer) peerTrayItem2;
                                                ShortcutsManagerKt.b(context3, peer2.a.c());
                                                function111.b(peer2.a.c());
                                                return unit;
                                            default:
                                                PeerTrayItem.Peer peer3 = (PeerTrayItem.Peer) peerTrayItem2;
                                                ShortcutsManagerKt.b(context3, peer3.a.c());
                                                User e = peer3.a.e();
                                                if (e != null && (str = e.m) != null) {
                                                    function111.b(str);
                                                    return unit;
                                                }
                                                u2.l("onBlock invoked with non-user");
                                                return null;
                                        }
                                    }
                                };
                                gapComposer3.g0(K3);
                            }
                            Function0 function04 = (Function0) K3;
                            boolean h3 = gapComposer3.h(context2);
                            if (i16 != 4 && ((intValue & 8) == 0 || !gapComposer3.h(peerTrayItem))) {
                                z9 = false;
                            } else {
                                z9 = true;
                            }
                            boolean z13 = z9 | h3;
                            final Function1 function111 = function17;
                            boolean f4 = z13 | gapComposer3.f(function111);
                            Object K4 = gapComposer3.K();
                            if (f4 || K4 == composer$Companion$Empty$1) {
                                K4 = new Function0() { // from class: nd
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object a() {
                                        String str;
                                        int i17 = i14;
                                        Unit unit = Unit.a;
                                        Function1 function1112 = function111;
                                        PeerTrayItem peerTrayItem2 = peerTrayItem;
                                        Context context3 = context2;
                                        switch (i17) {
                                            case 0:
                                                PeerTrayItem.Peer peer2 = (PeerTrayItem.Peer) peerTrayItem2;
                                                ShortcutsManagerKt.b(context3, peer2.a.c());
                                                function1112.b(peer2.a.c());
                                                return unit;
                                            default:
                                                PeerTrayItem.Peer peer3 = (PeerTrayItem.Peer) peerTrayItem2;
                                                ShortcutsManagerKt.b(context3, peer3.a.c());
                                                User e = peer3.a.e();
                                                if (e != null && (str = e.m) != null) {
                                                    function1112.b(str);
                                                    return unit;
                                                }
                                                u2.l("onBlock invoked with non-user");
                                                return null;
                                        }
                                    }
                                };
                                gapComposer3.g0(K4);
                            }
                            PeerTrayKt.c(null, peer, function03, function19, z4, function04, (Function0) K4, gapComposer3, 0);
                            gapComposer3.p(false);
                        } else {
                            gapComposer3.W(1868597383);
                            gapComposer3.p(false);
                            k8.e();
                            return null;
                        }
                    } else {
                        gapComposer3.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer2), gapComposer2, 14376960);
            gapComposer = gapComposer2;
            gapComposer.p(true);
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new md(modifier, overview, function1, function2, z, function12, function13, function0, function02, i);
        }
    }

    public static final void b(Modifier modifier, PeerPickerViewModel peerPickerViewModel, Function1 function1, Function2 function2, boolean z, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z2;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifier3;
        function1.getClass();
        function2.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1665020580);
        int i7 = i | 6;
        if (gapComposer2.h(peerPickerViewModel)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i8 = i7 | i2;
        if (gapComposer2.h(function1)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i9 = i8 | i3;
        if (gapComposer2.h(function2)) {
            i4 = 2048;
        } else {
            i4 = 1024;
        }
        int i10 = i9 | i4;
        if (gapComposer2.g(z)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        int i11 = i10 | i5;
        if (gapComposer2.h(function0)) {
            i6 = 131072;
        } else {
            i6 = 65536;
        }
        int i12 = i11 | i6;
        if ((599187 & i12) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer2.N(i12 & 1, z2)) {
            gapComposer2.S();
            if ((i & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                modifier3 = modifier;
            } else {
                modifier3 = Modifier.Companion.b;
            }
            gapComposer2.q();
            boolean f = gapComposer2.f(peerPickerViewModel);
            Object K = gapComposer2.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (f || K == composer$Companion$Empty$1) {
                final DerivedStateFlow derivedStateFlow = peerPickerViewModel.c;
                final ClassReference a = Reflection.a(PeerPickerContent.Overview.class);
                Flow<Object> flow = new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2

                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                    /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2, reason: invalid class name */
                    /* loaded from: classes.dex */
                    public final class AnonymousClass2<T> implements FlowCollector {
                        public final /* synthetic */ FlowCollector j;
                        public final /* synthetic */ ClassReference k;

                        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2", f = "Transform.kt", l = {217}, m = "emit", v = 1)
                        /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$filterIsInstance$$inlined$filter$2$2$1, reason: invalid class name */
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

                        public AnonymousClass2(FlowCollector flowCollector, ClassReference classReference) {
                            this.j = flowCollector;
                            this.k = classReference;
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
                                        if (this.k.d(obj)) {
                                            anonymousClass1.n = 1;
                                            if (this.j.r(obj, anonymousClass1) == coroutineSingletons) {
                                                return coroutineSingletons;
                                            }
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

                    @Override // kotlinx.coroutines.flow.Flow
                    public final Object a(FlowCollector flowCollector, Continuation continuation) {
                        Object a2 = derivedStateFlow.a(new AnonymousClass2(flowCollector, a), continuation);
                        if (a2 == CoroutineSingletons.j) {
                            return a2;
                        }
                        return Unit.a;
                    }
                };
                gapComposer2.g0(flow);
                K = flow;
            }
            EmptyList emptyList = EmptyList.j;
            PeerPickerContent.Overview overview = (PeerPickerContent.Overview) SnapshotStateKt.a((Flow) K, new PeerPickerContent.Overview(emptyList, emptyList), null, gapComposer2, 0, 2).getValue();
            boolean h = gapComposer2.h(peerPickerViewModel);
            Object K2 = gapComposer2.K();
            if (h || K2 == composer$Companion$Empty$1) {
                FunctionReference functionReference = new FunctionReference(1, peerPickerViewModel, PeerPickerViewModel.class, "removePeer", "removePeer(Lnet/blip/libblip/PeerId;)V", 0);
                gapComposer2.g0(functionReference);
                K2 = functionReference;
            }
            Function1 function12 = (Function1) ((KFunction) K2);
            boolean h2 = gapComposer2.h(peerPickerViewModel);
            Object K3 = gapComposer2.K();
            if (h2 || K3 == composer$Companion$Empty$1) {
                FunctionReference functionReference2 = new FunctionReference(1, peerPickerViewModel, PeerPickerViewModel.class, "blockUser", "blockUser(Ljava/lang/String;)V", 0);
                gapComposer2.g0(functionReference2);
                K3 = functionReference2;
            }
            Modifier modifier4 = modifier3;
            a(modifier4, overview, function1, function2, z, function12, (Function1) ((KFunction) K3), function0, function02, gapComposer2, (65422 & i12) | (29360128 & (i12 << 6)) | 100663296);
            gapComposer = gapComposer2;
            modifier2 = modifier4;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new n9(modifier2, peerPickerViewModel, function1, function2, z, function0, function02, i);
        }
    }

    public static final void c(Modifier modifier, Peer peer, Function0 function0, Function1 function1, boolean z, Function0 function02, Function0 function03, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        GapComposer gapComposer;
        Modifier modifier2;
        char c;
        boolean z3;
        boolean z4;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(1039236742);
        int i8 = i | 6;
        if (gapComposer2.h(peer)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i9 = i8 | i2;
        if (gapComposer2.h(function0)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i10 = i9 | i3;
        if (gapComposer2.h(function1)) {
            i4 = 2048;
        } else {
            i4 = 1024;
        }
        int i11 = i10 | i4;
        if (gapComposer2.g(z)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        int i12 = i11 | i5;
        if (gapComposer2.h(function02)) {
            i6 = 131072;
        } else {
            i6 = 65536;
        }
        int i13 = i12 | i6;
        if (gapComposer2.h(function03)) {
            i7 = 1048576;
        } else {
            i7 = 524288;
        }
        int i14 = i13 | i7;
        if ((i14 & 599187) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer2.N(i14 & 1, z2)) {
            boolean b = UmbrellaContentPickerKt.b(gapComposer2);
            Object K = gapComposer2.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer2.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Object K2 = gapComposer2.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer2.g0(K2);
            }
            MutableState mutableState2 = (MutableState) K2;
            Object K3 = gapComposer2.K();
            if (K3 == composer$Companion$Empty$1) {
                K3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer2.g0(K3);
            }
            MutableState mutableState3 = (MutableState) K3;
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            Object K4 = gapComposer2.K();
            if (K4 == composer$Companion$Empty$1) {
                c = ' ';
                K4 = new cd(mutableState, 6);
                gapComposer2.g0(K4);
            } else {
                c = ' ';
            }
            PeerTrayCellsKt.d(peer, booleanValue, function0, (Function0) K4, gapComposer2, 24582 | (i14 & 112) | ((i14 << 3) & 7168));
            boolean booleanValue2 = ((Boolean) mutableState.getValue()).booleanValue();
            Object K5 = gapComposer2.K();
            if (K5 == composer$Companion$Empty$1) {
                K5 = new cd(mutableState, 7);
                gapComposer2.g0(K5);
            }
            AndroidMenu_androidKt.a(booleanValue2, (Function0) K5, null, (Float.floatToRawIntBits(20.0f) << c) | (Float.floatToRawIntBits(-48.0f) & 4294967295L), null, null, ComposableLambdaKt.b(-624308999, new od(peer, function1, z, b, mutableState, mutableState2, mutableState3), gapComposer2), gapComposer2, 1575984, 52);
            gapComposer = gapComposer2;
            if (((Boolean) mutableState2.getValue()).booleanValue()) {
                gapComposer.W(1781125305);
                if ((i14 & 458752) == 131072) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                Object K6 = gapComposer.K();
                if (z4 || K6 == composer$Companion$Empty$1) {
                    K6 = new k1(function02, mutableState2, 8);
                    gapComposer.g0(K6);
                }
                Function0 function04 = (Function0) K6;
                Object K7 = gapComposer.K();
                if (K7 == composer$Companion$Empty$1) {
                    K7 = new cd(mutableState2, 3);
                    gapComposer.g0(K7);
                }
                RemovePeerConfirmationDialogKt.a(peer, function04, (Function0) K7, gapComposer, ((i14 >> 3) & 14) | 384);
                gapComposer.p(false);
            } else {
                gapComposer.W(1781374204);
                gapComposer.p(false);
            }
            User e = peer.e();
            if (((Boolean) mutableState3.getValue()).booleanValue() && e != null) {
                gapComposer.W(1781464414);
                if ((i14 & 3670016) == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Object K8 = gapComposer.K();
                if (z3 || K8 == composer$Companion$Empty$1) {
                    K8 = new k1(function03, mutableState3, 9);
                    gapComposer.g0(K8);
                }
                Function0 function05 = (Function0) K8;
                Object K9 = gapComposer.K();
                if (K9 == composer$Companion$Empty$1) {
                    K9 = new cd(mutableState3, 4);
                    gapComposer.g0(K9);
                }
                BlockUserConfirmationDialogKt.a(e, function05, (Function0) K9, gapComposer, 384);
                gapComposer.p(false);
            } else {
                gapComposer.W(1781708508);
                gapComposer.p(false);
            }
            modifier2 = Modifier.Companion.b;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new n9(modifier2, peer, function0, function1, z, function02, function03, i);
        }
    }
}
