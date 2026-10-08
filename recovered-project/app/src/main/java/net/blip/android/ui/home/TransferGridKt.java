package net.blip.android.ui.home;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridInterval;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridItemScopeImpl;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemElement;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.RippleKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.navigation.NavController;
import bsarchive.Metadata;
import defpackage.e6;
import defpackage.q;
import defpackage.qg;
import defpackage.u2;
import defpackage.x9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.text.StringsKt;
import net.blip.android.FlavorAndroid;
import net.blip.android.UriUtilKt;
import net.blip.android.filetypes.FileType_UriKt;
import net.blip.android.intents.OutboundIntent;
import net.blip.android.internetshortcut.InternetShortcutKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.home.ComposableSingletons$TransferGridKt;
import net.blip.android.ui.home.TransferGridKt;
import net.blip.android.ui.navigation.Screens;
import net.blip.android.ui.util.SystemBarsMetrics;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.android.ui.util.TransferClipboardKt;
import net.blip.libblip.FileType;
import net.blip.libblip.Flavor;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.Metadata_DerivedKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.Users_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.libblip.frontend.Users;
import net.blip.shared.OutsetParentKt;
import net.blip.shared.ProvideSharedCompositionLocalsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferGridKt {
    /* JADX WARN: Type inference failed for: r20v0, types: [java.lang.Object, androidx.compose.foundation.lazy.grid.GridCells$Adaptive] */
    public static final void a(Modifier modifier, final Function2 function2, Function2 function22, final List list, final Function1 function1, final Function1 function12, final Function1 function13, final Function1 function14, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        boolean z;
        Function2 function23;
        Modifier modifier2;
        boolean z2;
        float f;
        boolean z3;
        boolean z4;
        boolean z5;
        e6 e6Var;
        e6 e6Var2;
        e6 e6Var3;
        e6 e6Var4;
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal;
        float f2;
        boolean z6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-238894189);
        int i5 = i | 6;
        if (gapComposer.f(list)) {
            i2 = 2048;
        } else {
            i2 = 1024;
        }
        int i6 = i5 | i2;
        if (gapComposer.h(function1)) {
            i3 = 16384;
        } else {
            i3 = 8192;
        }
        int i7 = i6 | i3;
        if (gapComposer.h(function13)) {
            i4 = 1048576;
        } else {
            i4 = 524288;
        }
        int i8 = i7 | i4;
        if ((4793491 & i8) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i8 & 1, z)) {
            final State b = ProvideSharedCompositionLocalsKt.b(ProvideSharedCompositionLocalsKt.d, gapComposer);
            final Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            if (function22 != null && list.isEmpty()) {
                z2 = true;
            } else {
                z2 = false;
            }
            ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer, 0);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c = ComposedModifierKt.c(gapComposer, companion);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            boolean z7 = gapComposer.S;
            x9 x9Var = LayoutNode.b0;
            if (z7) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            e6 e6Var5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, a, e6Var5);
            e6 e6Var6 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var6);
            Integer valueOf = Integer.valueOf(hashCode);
            e6 e6Var7 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer, valueOf, e6Var7);
            Updater.b(gapComposer);
            e6 e6Var8 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c, e6Var8);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidColorsKt.a;
            long j = ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).i;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.a;
            Modifier d = SizeKt.d(BackgroundKt.b(companion, j, rectangleShapeKt$RectangleShape$1), 1.0f);
            ?? obj = new Object();
            if (Dp.a(160.0f, 0.0f) <= 0) {
                InlineClassHelperKt.a("Provided min size should be larger than zero.");
            }
            if (z2) {
                gapComposer.W(-163936021);
                gapComposer.p(false);
                f = 0.0f;
            } else {
                gapComposer.W(-163934756);
                f = ((SystemBarsMetrics) gapComposer.j(SystemBarsMetricsKt.a)).b;
                gapComposer.p(false);
            }
            PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(24.0f, 0.0f, 24.0f, f);
            Arrangement.SpacedAligned e = Arrangement.e(24.0f);
            Arrangement.SpacedAligned e2 = Arrangement.e(0.0f);
            if ((i8 & 7168) != 2048) {
                z3 = false;
            } else {
                z3 = true;
            }
            boolean h = z3 | gapComposer.h(context);
            if ((57344 & i8) == 16384) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean h2 = h | z4 | gapComposer.h(b);
            if ((i8 & 3670016) == 1048576) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z8 = z5 | h2;
            Object K = gapComposer.K();
            if (!z8 && K != Composer.Companion.a) {
                e6Var = e6Var5;
                e6Var2 = e6Var6;
                e6Var3 = e6Var8;
                e6Var4 = e6Var7;
                dynamicProvidableCompositionLocal = dynamicProvidableCompositionLocal2;
                f2 = 1.0f;
            } else {
                e6Var = e6Var5;
                e6Var2 = e6Var6;
                e6Var3 = e6Var8;
                e6Var4 = e6Var7;
                dynamicProvidableCompositionLocal = dynamicProvidableCompositionLocal2;
                f2 = 1.0f;
                K = new Function1() { // from class: ph
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj2) {
                        LazyGridScope lazyGridScope = (LazyGridScope) obj2;
                        lazyGridScope.getClass();
                        Function2 function24 = Function2.this;
                        if (function24 != null) {
                            LazyGridScope.a(lazyGridScope, new qg(13), new ComposableLambdaImpl(-1064750353, true, new b0(10, function24)));
                        }
                        LazyGridScope.a(lazyGridScope, new qg(14), ComposableSingletons$TransferGridKt.a);
                        final qg qgVar = new qg(15);
                        final List list2 = list;
                        int size = list2.size();
                        Function1<Integer, Object> function15 = new Function1<Integer, Object>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj3) {
                                return qg.this.b(list2.get(((Number) obj3).intValue()));
                            }
                        };
                        Function1<Integer, Object> function16 = new Function1<Integer, Object>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj3) {
                                list2.get(((Number) obj3).intValue());
                                return null;
                            }
                        };
                        final Context context2 = context;
                        final Function1 function17 = function12;
                        final Function1 function18 = function1;
                        final State state = b;
                        final Function1 function19 = function13;
                        final Function1 function110 = function14;
                        ((LazyGridIntervalContent) lazyGridScope).b.a(size, new LazyGridInterval(function15, LazyGridIntervalContent.d, function16, new ComposableLambdaImpl(-1117249557, true, new Function4<LazyGridItemScope, Integer, Composer, Integer, Unit>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$lambda$4$0$0$$inlined$items$default$5
                            @Override // kotlin.jvm.functions.Function4
                            public final Object j(Object obj3, Object obj4, Object obj5, Object obj6) {
                                int i9;
                                boolean z9;
                                List list3;
                                Peer peer;
                                int i10;
                                int i11;
                                LazyGridItemScope lazyGridItemScope = (LazyGridItemScope) obj3;
                                int intValue = ((Number) obj4).intValue();
                                Composer composer2 = (Composer) obj5;
                                int intValue2 = ((Number) obj6).intValue();
                                if ((intValue2 & 6) == 0) {
                                    if (((GapComposer) composer2).f(lazyGridItemScope)) {
                                        i11 = 4;
                                    } else {
                                        i11 = 2;
                                    }
                                    i9 = i11 | intValue2;
                                } else {
                                    i9 = intValue2;
                                }
                                if ((intValue2 & 48) == 0) {
                                    if (((GapComposer) composer2).d(intValue)) {
                                        i10 = 32;
                                    } else {
                                        i10 = 16;
                                    }
                                    i9 |= i10;
                                }
                                if ((i9 & 147) != 146) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (gapComposer2.N(i9 & 1, z9)) {
                                    final Transfer transfer = (Transfer) list2.get(intValue);
                                    gapComposer2.W(-339583644);
                                    boolean f3 = gapComposer2.f(transfer.m);
                                    Object K2 = gapComposer2.K();
                                    Object obj7 = Composer.Companion.a;
                                    if (f3 || K2 == obj7) {
                                        K2 = SnapshotStateKt.g(Boolean.FALSE);
                                        gapComposer2.g0(K2);
                                    }
                                    final MutableState mutableState = (MutableState) K2;
                                    Metadata metadata = transfer.p;
                                    if (metadata != null) {
                                        list3 = Metadata_DerivedKt.b(metadata);
                                    } else {
                                        list3 = null;
                                    }
                                    if (list3 == null) {
                                        list3 = EmptyList.j;
                                    }
                                    final boolean a2 = TransferClipboardKt.a(context2, list3);
                                    MeasurePolicy d2 = BoxKt.d(Alignment.Companion.a, false);
                                    int hashCode2 = Long.hashCode(gapComposer2.T);
                                    PersistentCompositionLocalMap l2 = gapComposer2.l();
                                    Modifier.Companion companion2 = Modifier.Companion.b;
                                    Modifier c2 = ComposedModifierKt.c(gapComposer2, companion2);
                                    ComposeUiNode.b.getClass();
                                    gapComposer2.Z();
                                    if (gapComposer2.S) {
                                        gapComposer2.k(LayoutNode.b0);
                                    } else {
                                        gapComposer2.j0();
                                    }
                                    Updater.c(gapComposer2, d2, ComposeUiNode.Companion.d);
                                    Updater.c(gapComposer2, l2, ComposeUiNode.Companion.c);
                                    Updater.c(gapComposer2, Integer.valueOf(hashCode2), ComposeUiNode.Companion.e);
                                    Updater.b(gapComposer2);
                                    Updater.c(gapComposer2, c2, ComposeUiNode.Companion.b);
                                    Modifier a3 = ClipKt.a(PaddingKt.h(OutsetParentKt.a(companion2, 12.0f), 0.0f, 0.0f, 0.0f, 12.0f, 7), RoundedCornerShapeKt.b(16.0f));
                                    Map map = VisibilityThresholdsKt.a;
                                    SpringSpec b2 = AnimationSpecKt.b(0.0f, 400.0f, new IntOffset(4294967297L), 1);
                                    ((LazyGridItemScopeImpl) lazyGridItemScope).getClass();
                                    Modifier l3 = a3.l(new LazyLayoutAnimateItemElement(b2));
                                    Object K3 = gapComposer2.K();
                                    if (K3 == obj7) {
                                        K3 = InteractionSourceKt.a();
                                        gapComposer2.g0(K3);
                                    }
                                    MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K3;
                                    IndicationNodeFactory a4 = RippleKt.a(6, 0L, true);
                                    boolean h3 = gapComposer2.h(transfer);
                                    final Function1 function111 = function17;
                                    boolean f4 = h3 | gapComposer2.f(function111) | gapComposer2.f(mutableState);
                                    Object K4 = gapComposer2.K();
                                    if (f4 || K4 == obj7) {
                                        K4 = new Function0<Unit>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$5$1$1$4$1$2$1
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object a() {
                                                Transfer transfer2 = transfer;
                                                if (Transfer_DerivedKt.c(transfer2)) {
                                                    function111.b(transfer2);
                                                } else {
                                                    mutableState.setValue(Boolean.TRUE);
                                                }
                                                return Unit.a;
                                            }
                                        };
                                        gapComposer2.g0(K4);
                                    }
                                    Function0 function0 = (Function0) K4;
                                    final Function1 function112 = function18;
                                    boolean f5 = gapComposer2.f(function112) | gapComposer2.h(transfer);
                                    Object K5 = gapComposer2.K();
                                    if (f5 || K5 == obj7) {
                                        K5 = new Function0<Unit>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$5$1$1$4$1$3$1
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object a() {
                                                Function1.this.b(transfer);
                                                return Unit.a;
                                            }
                                        };
                                        gapComposer2.g0(K5);
                                    }
                                    Modifier c3 = ClickableKt.c(l3, mutableInteractionSource, a4, false, function0, (Function0) K5, 444);
                                    Users users = state.u;
                                    if (users != null) {
                                        PeerId peerId = transfer.n;
                                        if (peerId != null) {
                                            peer = Users_DerivedKt.a(users, peerId);
                                        } else {
                                            LoggerKt.a.getClass();
                                            Logger.j("transfer missing peer_id", new Pair[0]);
                                            throw null;
                                        }
                                    } else {
                                        peer = null;
                                    }
                                    TransferGridCellKt.a(c3, transfer, peer, gapComposer2, 0);
                                    boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                                    boolean f6 = gapComposer2.f(mutableState);
                                    Object K6 = gapComposer2.K();
                                    if (f6 || K6 == obj7) {
                                        K6 = new Function0<Unit>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$5$1$1$4$1$4$1
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object a() {
                                                MutableState.this.setValue(Boolean.FALSE);
                                                return Unit.a;
                                            }
                                        };
                                        gapComposer2.g0(K6);
                                    }
                                    final Function1 function113 = function19;
                                    final Function1 function114 = function110;
                                    AndroidMenu_androidKt.a(booleanValue, (Function0) K6, null, (Float.floatToRawIntBits(20.0f) << 32) | (Float.floatToRawIntBits(-48.0f) & 4294967295L), null, null, ComposableLambdaKt.b(-847511161, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$5$1$1$4$1$5
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object f(Object obj8, Object obj9, Object obj10) {
                                            boolean z10;
                                            Composer composer3 = (Composer) obj9;
                                            int intValue3 = ((Number) obj10).intValue();
                                            ((ColumnScope) obj8).getClass();
                                            if ((intValue3 & 17) != 16) {
                                                z10 = true;
                                            } else {
                                                z10 = false;
                                            }
                                            GapComposer gapComposer3 = (GapComposer) composer3;
                                            if (gapComposer3.N(intValue3 & 1, z10)) {
                                                boolean z11 = a2;
                                                Object obj11 = Composer.Companion.a;
                                                final Transfer transfer2 = transfer;
                                                final MutableState mutableState2 = mutableState;
                                                if (z11) {
                                                    gapComposer3.W(1907784412);
                                                    boolean f7 = gapComposer3.f(mutableState2);
                                                    final Function1 function115 = function113;
                                                    boolean f8 = f7 | gapComposer3.f(function115) | gapComposer3.h(transfer2);
                                                    Object K7 = gapComposer3.K();
                                                    if (f8 || K7 == obj11) {
                                                        K7 = new Function0<Unit>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$5$1$1$4$1$5$1$1
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object a() {
                                                                mutableState2.setValue(Boolean.FALSE);
                                                                function115.b(transfer2);
                                                                return Unit.a;
                                                            }
                                                        };
                                                        gapComposer3.g0(K7);
                                                    }
                                                    AndroidMenu_androidKt.b((Function0) K7, null, false, null, ComposableSingletons$TransferGridKt.b, gapComposer3, 196608, 30);
                                                    gapComposer3.p(false);
                                                } else {
                                                    gapComposer3.W(1908090971);
                                                    gapComposer3.p(false);
                                                }
                                                boolean f9 = gapComposer3.f(mutableState2);
                                                final Function1 function116 = function114;
                                                boolean f10 = f9 | gapComposer3.f(function116) | gapComposer3.h(transfer2);
                                                Object K8 = gapComposer3.K();
                                                if (f10 || K8 == obj11) {
                                                    K8 = new Function0<Unit>() { // from class: net.blip.android.ui.home.TransferGridKt$TransferGrid$5$1$1$4$1$5$2$1
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object a() {
                                                            mutableState2.setValue(Boolean.FALSE);
                                                            function116.b(transfer2);
                                                            return Unit.a;
                                                        }
                                                    };
                                                    gapComposer3.g0(K8);
                                                }
                                                AndroidMenu_androidKt.b((Function0) K8, null, false, null, ComposableSingletons$TransferGridKt.c, gapComposer3, 196608, 30);
                                            } else {
                                                gapComposer3.Q();
                                            }
                                            return Unit.a;
                                        }
                                    }, gapComposer2), gapComposer2, 1575936, 52);
                                    gapComposer2.p(true);
                                    gapComposer2.p(false);
                                } else {
                                    gapComposer2.Q();
                                }
                                return Unit.a;
                            }
                        })));
                        return Unit.a;
                    }
                };
                gapComposer.g0(K);
            }
            e6 e6Var9 = e6Var;
            modifier2 = companion;
            LazyGridDslKt.a(obj, d, null, paddingValuesImpl, e2, e, null, false, null, (Function1) K, gapComposer, 1769472);
            if (z2) {
                gapComposer.W(-783710839);
                Modifier h3 = PaddingKt.h(PaddingKt.f(BackgroundKt.b(SizeKt.c(modifier2, f2), ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).i, rectangleShapeKt$RectangleShape$1), 64.0f, 0.0f, 2), 0.0f, 0.0f, 0.0f, ((SystemBarsMetrics) gapComposer.j(SystemBarsMetricsKt.a)).b, 7);
                BiasAlignment biasAlignment = Alignment.Companion.a;
                MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
                int hashCode2 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l2 = gapComposer.l();
                Modifier c2 = ComposedModifierKt.c(gapComposer, h3);
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(x9Var);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d2, e6Var9);
                e6 e6Var10 = e6Var2;
                Updater.c(gapComposer, l2, e6Var10);
                e6 e6Var11 = e6Var4;
                q.s(hashCode2, gapComposer, e6Var11, gapComposer);
                e6 e6Var12 = e6Var3;
                Updater.c(gapComposer, c2, e6Var12);
                Modifier b2 = SizeKt.b(SizeKt.d(modifier2, f2), 0.9f);
                MeasurePolicy d3 = BoxKt.d(biasAlignment, false);
                int hashCode3 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l3 = gapComposer.l();
                Modifier c3 = ComposedModifierKt.c(gapComposer, b2);
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(x9Var);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d3, e6Var9);
                Updater.c(gapComposer, l3, e6Var10);
                q.s(hashCode3, gapComposer, e6Var11, gapComposer);
                Updater.c(gapComposer, c3, e6Var12);
                function23 = function22;
                function23.n(gapComposer, 6);
                z6 = true;
                gapComposer.p(true);
                gapComposer.p(true);
                gapComposer.p(false);
            } else {
                function23 = function22;
                z6 = true;
                gapComposer.W(-783141927);
                gapComposer.p(false);
            }
            gapComposer.p(z6);
        } else {
            function23 = function22;
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final Modifier modifier3 = modifier2;
            final Function2 function24 = function23;
            r.d = new Function2(function2, function24, list, function1, function12, function13, function14, i) { // from class: qh
                public final /* synthetic */ Function2 k;
                public final /* synthetic */ Function2 l;
                public final /* synthetic */ List m;
                public final /* synthetic */ Function1 n;
                public final /* synthetic */ Function1 o;
                public final /* synthetic */ Function1 p;
                public final /* synthetic */ Function1 q;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int a2 = RecomposeScopeImplKt.a(12779953);
                    TransferGridKt.a(Modifier.this, this.k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj2, a2);
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
    
        if (r11 == r1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b9, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x004f, code lost:
    
        if (r11 == r1) goto L38;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069 A[LOOP:0: B:22:0x0063->B:24:0x0069, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(Context context, NavController navController, Transfer transfer, Flavor flavor, ContinuationImpl continuationImpl) {
        TransferGridKt$handleTransferClick$1 transferGridKt$handleTransferClick$1;
        int i;
        ArrayList arrayList;
        Iterator it;
        String str;
        if (continuationImpl instanceof TransferGridKt$handleTransferClick$1) {
            TransferGridKt$handleTransferClick$1 transferGridKt$handleTransferClick$12 = (TransferGridKt$handleTransferClick$1) continuationImpl;
            int i2 = transferGridKt$handleTransferClick$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                transferGridKt$handleTransferClick$12.p = i2 - Integer.MIN_VALUE;
                transferGridKt$handleTransferClick$1 = transferGridKt$handleTransferClick$12;
                Object obj = transferGridKt$handleTransferClick$1.o;
                Object obj2 = CoroutineSingletons.j;
                i = transferGridKt$handleTransferClick$1.p;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            context = transferGridKt$handleTransferClick$1.m;
                            ResultKt.b(obj);
                            Uri uri = (Uri) obj;
                            if (uri != null) {
                                context.getClass();
                                context.startActivity(new Intent("android.intent.action.VIEW", uri));
                                return unit;
                            }
                            Toast.makeText(context, "Couldn't open link", 0).show();
                            return unit;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    navController = transferGridKt$handleTransferClick$1.n;
                    context = transferGridKt$handleTransferClick$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    String str2 = ((FlavorAndroid) flavor).d;
                    transferGridKt$handleTransferClick$1.m = context;
                    transferGridKt$handleTransferClick$1.n = navController;
                    transferGridKt$handleTransferClick$1.p = 1;
                    obj = Transfer_DerivedKt.e(transfer, str2, transferGridKt$handleTransferClick$1);
                }
                Iterable iterable = (Iterable) obj;
                arrayList = new ArrayList(CollectionsKt.m(iterable, 10));
                it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(UriUtilKt.a((String) it.next()));
                }
                if (!arrayList.isEmpty()) {
                    return unit;
                }
                if (arrayList.size() > 1) {
                    NavController.b(navController, Screens.Gallery.a(arrayList));
                    return unit;
                }
                Uri uri2 = (Uri) CollectionsKt.s(arrayList);
                uri2.getClass();
                String lastPathSegment = uri2.getLastPathSegment();
                if (lastPathSegment != null) {
                    str = StringsKt.M(lastPathSegment, '.', "");
                } else {
                    str = null;
                }
                if (StringsKt.o(str, "url", true)) {
                    transferGridKt$handleTransferClick$1.m = context;
                    transferGridKt$handleTransferClick$1.n = null;
                    transferGridKt$handleTransferClick$1.p = 2;
                    obj = InternetShortcutKt.a(context, uri2, transferGridKt$handleTransferClick$1);
                } else {
                    int ordinal = FileType_UriKt.a(FileType.j, context, uri2).ordinal();
                    if (ordinal != 1 && ordinal != 2 && ordinal != 4) {
                        OutboundIntent.b(context, uri2);
                        return unit;
                    }
                    NavController.b(navController, Screens.Gallery.a(CollectionsKt.B(uri2)));
                    return unit;
                }
            }
        }
        transferGridKt$handleTransferClick$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = transferGridKt$handleTransferClick$1.o;
        Object obj22 = CoroutineSingletons.j;
        i = transferGridKt$handleTransferClick$1.p;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
        Iterable iterable2 = (Iterable) obj3;
        arrayList = new ArrayList(CollectionsKt.m(iterable2, 10));
        it = iterable2.iterator();
        while (it.hasNext()) {
        }
        if (!arrayList.isEmpty()) {
        }
    }
}
