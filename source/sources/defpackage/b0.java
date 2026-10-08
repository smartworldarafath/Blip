package defpackage;

import android.net.Uri;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material.icons.rounded.CloudOffKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.zb;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.gallery.GalleryScreenKt;
import net.blip.android.ui.home.ComposableSingletons$ConnectionStatusHUDKt;
import net.blip.android.ui.lockups.BlankStateLockupKt;
import net.blip.android.ui.peerpicker.ComposableSingletons$AndroidPeerPickerListItemsKt;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.libblip.PeerPickerContent;
import net.blip.shared.OutsetParentKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b0 implements Function3 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b0(MutexImpl mutexImpl, MutexImpl.CancellableContinuationWithOwner cancellableContinuationWithOwner) {
        this.j = 11;
        this.k = mutexImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        boolean z5;
        int i2 = this.j;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        Modifier.Companion companion = Modifier.Companion.b;
        int i3 = 1;
        boolean z6 = false;
        Unit unit = Unit.a;
        Object obj4 = this.k;
        switch (i2) {
            case 0:
                Pair pair = (Pair) obj4;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue & 17) != 16) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    PlatformTextKt.c((String) pair.j, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).d, TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, 0, 506);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Function0 function0 = (Function0) obj4;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if ((intValue2 & 17) != 16) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    BlankStateLockupKt.a(PaddingKt.e(companion, 64.0f, 48.0f), CloudOffKt.a(), "Search Failed", "You may not be seeing all results. Check your internet connection.", "Try again", null, function0, gapComposer2, 28038, 32);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = CancellableContinuationImpl.o;
                ((lh) obj4).b((Throwable) obj);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) obj4;
                int intValue3 = ((Integer) obj).intValue();
                int intValue4 = ((Integer) obj2).intValue();
                boolean booleanValue = ((Boolean) obj3).booleanValue();
                if (!booleanValue) {
                    intValue3 = coreTextFieldSemanticsModifierNode.D.a(intValue3);
                }
                if (!booleanValue) {
                    intValue4 = coreTextFieldSemanticsModifierNode.D.a(intValue4);
                }
                if (coreTextFieldSemanticsModifierNode.C) {
                    long j = coreTextFieldSemanticsModifierNode.A.b;
                    int i4 = TextRange.c;
                    if (intValue3 != ((int) (j >> 32)) || intValue4 != ((int) (j & 4294967295L))) {
                        if (Math.min(intValue3, intValue4) >= 0 && Math.max(intValue3, intValue4) <= coreTextFieldSemanticsModifierNode.A.a.k.length()) {
                            if (!booleanValue && intValue3 != intValue4) {
                                coreTextFieldSemanticsModifierNode.E.h(true);
                            } else {
                                TextFieldSelectionManager textFieldSelectionManager = coreTextFieldSemanticsModifierNode.E;
                                textFieldSelectionManager.u(false);
                                textFieldSelectionManager.r(HandleState.j);
                            }
                            coreTextFieldSemanticsModifierNode.B.v.b(new TextFieldValue(coreTextFieldSemanticsModifierNode.A.a, TextRangeKt.a(intValue3, intValue4), (TextRange) null));
                            z3 = true;
                        } else {
                            TextFieldSelectionManager textFieldSelectionManager2 = coreTextFieldSemanticsModifierNode.E;
                            textFieldSelectionManager2.u(false);
                            textFieldSelectionManager2.r(HandleState.j);
                            z3 = false;
                        }
                        return Boolean.valueOf(z3);
                    }
                }
                z3 = false;
                return Boolean.valueOf(z3);
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                float f = DragGestureDetectorKt.a;
                ((ra) obj4).b(new Offset(((PointerInputChange) obj2).c));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Uri uri = (Uri) obj;
                int intValue5 = ((Integer) obj3).intValue();
                uri.getClass();
                GalleryScreenKt.a(uri, ((Number) ((State) obj4).getValue()).floatValue(), (Composer) obj2, intValue5 & 14);
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Modifier modifier = (Modifier) obj4;
                Composer composer3 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                if ((intValue6 & 17) != 16) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue6 & 1, z4)) {
                    Modifier c = SystemBarsMetricsKt.c(gapComposer3, SystemBarsMetricsKt.b(gapComposer3, SizeKt.d(modifier, 1.0f)));
                    BiasAlignment biasAlignment = Alignment.Companion.e;
                    MeasurePolicy d = BoxKt.d(biasAlignment, false);
                    int hashCode = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l = gapComposer3.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer3, c);
                    ComposeUiNode.b.getClass();
                    gapComposer3.Z();
                    if (gapComposer3.S) {
                        gapComposer3.k(x9Var);
                    } else {
                        gapComposer3.j0();
                    }
                    Updater.c(gapComposer3, d, e6Var4);
                    Updater.c(gapComposer3, l, e6Var3);
                    Updater.c(gapComposer3, Integer.valueOf(hashCode), e6Var2);
                    Updater.b(gapComposer3);
                    Updater.c(gapComposer3, c2, e6Var);
                    Modifier e = SizeKt.e(BackgroundKt.b(ShadowKt.a(modifier, 6.0f, RoundedCornerShapeKt.a(100), 0L, 28), ColorKt.c(4066533986L), RectangleShapeKt.a), 48.0f);
                    MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
                    int hashCode2 = Long.hashCode(gapComposer3.T);
                    PersistentCompositionLocalMap l2 = gapComposer3.l();
                    Modifier c3 = ComposedModifierKt.c(gapComposer3, e);
                    gapComposer3.Z();
                    if (gapComposer3.S) {
                        gapComposer3.k(x9Var);
                    } else {
                        gapComposer3.j0();
                    }
                    Updater.c(gapComposer3, d2, e6Var4);
                    Updater.c(gapComposer3, l2, e6Var3);
                    q.s(hashCode2, gapComposer3, e6Var2, gapComposer3);
                    Updater.c(gapComposer3, c3, e6Var);
                    ComposableSingletons$ConnectionStatusHUDKt.a.n(gapComposer3, 0);
                    gapComposer3.p(true);
                    gapComposer3.p(true);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                PeerPickerContent peerPickerContent = (PeerPickerContent) obj4;
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Composer composer4 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                lazyItemScope.getClass();
                if ((intValue7 & 6) == 0) {
                    if (((GapComposer) composer4).f(lazyItemScope)) {
                        i = 4;
                    } else {
                        i = 2;
                    }
                    intValue7 |= i;
                }
                if ((intValue7 & 19) != 18) {
                    z6 = true;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue7 & 1, z6)) {
                    ComposableSingletons$AndroidPeerPickerListItemsKt.f.j(lazyItemScope, Boolean.valueOf(!((PeerPickerContent.SearchResults) peerPickerContent).a.isEmpty()), gapComposer4, Integer.valueOf(intValue7 & 14));
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = SemaphoreAndMutexImpl.l;
                ((SemaphoreAndMutexImpl) obj4).d();
                return unit;
            case KeyModifiers.a /* 9 */:
                TextFieldSelectionManager textFieldSelectionManager3 = (TextFieldSelectionManager) obj4;
                Modifier modifier2 = (Modifier) obj;
                ((Integer) obj3).getClass();
                GapComposer gapComposer5 = (GapComposer) ((Composer) obj2);
                gapComposer5.W(1980580247);
                Density density = (Density) gapComposer5.j(CompositionLocalsKt.h);
                Object K = gapComposer5.K();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                Object obj5 = K;
                if (K == composer$Companion$Empty$1) {
                    MutableState g = SnapshotStateKt.g(new IntSize(0L));
                    gapComposer5.g0(g);
                    obj5 = g;
                }
                MutableState mutableState = (MutableState) obj5;
                boolean h = gapComposer5.h(textFieldSelectionManager3);
                Object K2 = gapComposer5.K();
                Object obj6 = K2;
                if (h || K2 == composer$Companion$Empty$1) {
                    tg tgVar = new tg(i3, textFieldSelectionManager3, mutableState);
                    gapComposer5.g0(tgVar);
                    obj6 = tgVar;
                }
                final Function0 function02 = (Function0) obj6;
                boolean f2 = gapComposer5.f(density);
                Object K3 = gapComposer5.K();
                Object obj7 = K3;
                if (f2 || K3 == composer$Companion$Empty$1) {
                    fh fhVar = new fh(density, mutableState, false ? 1 : 0);
                    gapComposer5.g0(fhVar);
                    obj7 = fhVar;
                }
                final Function1 function1 = (Function1) obj7;
                AnimationVector2D animationVector2D = SelectionMagnifierKt.a;
                Modifier a = ComposedModifierKt.a(modifier2, new Function3() { // from class: androidx.compose.foundation.text.selection.c
                    @Override // kotlin.jvm.functions.Function3
                    public final Object f(Object obj8, Object obj9, Object obj10) {
                        ((Integer) obj10).getClass();
                        AnimationVector2D animationVector2D2 = SelectionMagnifierKt.a;
                        GapComposer gapComposer6 = (GapComposer) ((Composer) obj9);
                        gapComposer6.W(759876635);
                        Object K4 = gapComposer6.K();
                        Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
                        if (K4 == composer$Companion$Empty$12) {
                            K4 = SnapshotStateKt.e(Function0.this);
                            gapComposer6.g0(K4);
                        }
                        State state = (State) K4;
                        Object K5 = gapComposer6.K();
                        if (K5 == composer$Companion$Empty$12) {
                            K5 = new Animatable(new Offset(((Offset) state.getValue()).a), SelectionMagnifierKt.b, new Offset(SelectionMagnifierKt.c), 8);
                            gapComposer6.g0(K5);
                        }
                        Animatable animatable = (Animatable) K5;
                        boolean h2 = gapComposer6.h(animatable);
                        Object K6 = gapComposer6.K();
                        if (h2 || K6 == composer$Companion$Empty$12) {
                            K6 = new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1(state, animatable, null);
                            gapComposer6.g0(K6);
                        }
                        EffectsKt.e(gapComposer6, Unit.a, (Function2) K6);
                        AnimationState animationState = animatable.c;
                        boolean f3 = gapComposer6.f(animationState);
                        Object K7 = gapComposer6.K();
                        if (f3 || K7 == composer$Companion$Empty$12) {
                            K7 = new zb(animationState, 1);
                            gapComposer6.g0(K7);
                        }
                        Modifier modifier3 = (Modifier) function1.b((Function0) K7);
                        gapComposer6.p(false);
                        return modifier3;
                    }
                });
                gapComposer5.p(false);
                return a;
            case KeyModifiers.b /* 10 */:
                Function2 function2 = (Function2) obj4;
                Composer composer5 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((LazyGridItemScope) obj).getClass();
                if ((intValue8 & 17) != 16) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                GapComposer gapComposer6 = (GapComposer) composer5;
                if (gapComposer6.N(intValue8 & 1, z5)) {
                    Modifier a2 = OutsetParentKt.a(companion, 24.0f);
                    MeasurePolicy d3 = BoxKt.d(Alignment.Companion.a, false);
                    int hashCode3 = Long.hashCode(gapComposer6.T);
                    PersistentCompositionLocalMap l3 = gapComposer6.l();
                    Modifier c4 = ComposedModifierKt.c(gapComposer6, a2);
                    ComposeUiNode.b.getClass();
                    gapComposer6.Z();
                    if (gapComposer6.S) {
                        gapComposer6.k(x9Var);
                    } else {
                        gapComposer6.j0();
                    }
                    Updater.c(gapComposer6, d3, e6Var4);
                    Updater.c(gapComposer6, l3, e6Var3);
                    Updater.c(gapComposer6, Integer.valueOf(hashCode3), e6Var2);
                    Updater.b(gapComposer6);
                    Updater.c(gapComposer6, c4, e6Var);
                    function2.n(gapComposer6, 0);
                    gapComposer6.p(true);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            default:
                MutexImpl mutexImpl = (MutexImpl) obj4;
                MutexImpl.q.set(mutexImpl, null);
                mutexImpl.h(null);
                return unit;
        }
    }

    public /* synthetic */ b0(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }
}
