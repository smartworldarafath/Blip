package androidx.compose.foundation.text;

import android.content.Context;
import android.view.InputDevice;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifier_androidKt;
import androidx.compose.foundation.text.handwriting.StylusHandwritingKt;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifier;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNodeKt;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.SelectedTextType;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.PointerIcon_androidKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.LazyWindowInfo;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.EditingBuffer;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a7;
import defpackage.b0;
import defpackage.ec;
import defpackage.i2;
import defpackage.k8;
import defpackage.o;
import defpackage.p2;
import defpackage.pb;
import defpackage.q6;
import defpackage.r1;
import defpackage.s2;
import defpackage.t;
import defpackage.t6;
import defpackage.u;
import defpackage.u2;
import defpackage.w6;
import defpackage.y0;
import defpackage.zc;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CoreTextFieldKt {
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0495, code lost:
    
        if (r12 > ((r0 != null ? r0.longValue() : 0) + 5000)) goto L246;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x043f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x04c5  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x055e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0586  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x05a2  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x05e2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x066c  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0687 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x06ce  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0714  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0728  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0737 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0772  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x07a6  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x07c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x07de  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x07e8  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x07fc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x081c  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0841 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0861 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0898  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x08b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0920  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0947  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0956  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x089f  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x081e  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x07e0  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x07b4  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0716  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x06d8  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x067e  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x05a5  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x03c8  */
    /* JADX WARN: Type inference failed for: r0v85, types: [androidx.compose.ui.Modifier] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final TextFieldValue textFieldValue, final Function1 function1, final Modifier modifier, final TextStyle textStyle, final VisualTransformation visualTransformation, final Function1 function12, final MutableInteractionSource mutableInteractionSource, final SolidColor solidColor, final boolean z, final int i, final int i2, final ImeOptions imeOptions, final KeyboardActions keyboardActions, final boolean z2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3, final int i4) {
        int i5;
        int i6;
        GapComposer gapComposer;
        int i7;
        FocusRequester focusRequester;
        long j;
        GapComposer gapComposer2;
        TextStyle textStyle2;
        boolean z3;
        TransformedText transformedText;
        TextFieldScrollerPosition textFieldScrollerPosition;
        AnnotatedString annotatedString;
        Density density;
        FontFamily.Resolver resolver;
        Density density2;
        TextInputSession textInputSession;
        TextRange textRange;
        String str;
        AnnotatedString annotatedString2;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        TextFieldValue a;
        TextFieldValue textFieldValue2;
        Object K;
        final UndoManager undoManager;
        Object K2;
        final CoroutineScope coroutineScope;
        Object K3;
        final BringIntoViewRequester bringIntoViewRequester;
        Object K4;
        FocusRequester focusRequester2;
        boolean f;
        Object K5;
        int i8;
        int i9;
        boolean h;
        Object obj;
        final MutableInteractionSource mutableInteractionSource2;
        GapComposer gapComposer3;
        final LegacyTextFieldState legacyTextFieldState;
        final TextInputService textInputService;
        int i10;
        FocusManager focusManager;
        int i11;
        LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter;
        FocusRequester focusRequester3;
        TextFieldScrollerPosition textFieldScrollerPosition2;
        final ImeOptions imeOptions2;
        TransformedText transformedText2;
        Object obj2;
        boolean z8;
        CoroutineScope coroutineScope2;
        TextFieldValue textFieldValue3;
        BringIntoViewRequester bringIntoViewRequester2;
        OffsetMapping offsetMapping;
        LegacyTextFieldState legacyTextFieldState2;
        boolean z9;
        boolean z10;
        Object coreTextFieldKt$CoreTextField$5$1;
        FocusRequester focusRequester4;
        CoroutineScope coroutineScope3;
        Modifier modifier2;
        Modifier.Companion companion;
        final LegacyTextFieldState legacyTextFieldState3;
        MutableState mutableState;
        TextInputService textInputService2;
        boolean h2;
        Object K6;
        TextInputService textInputService3;
        WindowInfo windowInfo;
        final LegacyTextFieldState legacyTextFieldState4;
        final TextFieldSelectionManager textFieldSelectionManager;
        boolean h3;
        Object K7;
        boolean h4;
        Object K8;
        ImeOptions imeOptions3;
        boolean z11;
        boolean g;
        Object K9;
        Brush solidColor2;
        boolean h5;
        Object K10;
        boolean z12;
        Modifier modifier3;
        String str2;
        GapComposer gapComposer4 = (GapComposer) composer;
        gapComposer4.X(31062401);
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposer4.f(textFieldValue) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposer4.h(function1) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i5 |= gapComposer4.f(modifier) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposer4.f(textStyle) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposer4.f(visualTransformation) ? 16384 : 8192;
        }
        if ((i3 & 196608) == 0) {
            i5 |= gapComposer4.h(function12) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposer4.f(mutableInteractionSource) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposer4.f(solidColor) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= gapComposer4.g(z) ? 67108864 : 33554432;
        }
        if ((i3 & 805306368) == 0) {
            i5 |= gapComposer4.d(i) ? 536870912 : 268435456;
        }
        if ((i4 & 6) == 0) {
            i6 = i4 | (gapComposer4.d(i2) ? 4 : 2);
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= gapComposer4.f(imeOptions) ? 32 : 16;
        }
        if ((i4 & 384) == 0) {
            i6 |= gapComposer4.f(keyboardActions) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i6 |= gapComposer4.g(z2) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i6 |= gapComposer4.g(false) ? 16384 : 8192;
        }
        if ((i4 & 196608) == 0) {
            i6 |= gapComposer4.h(composableLambdaImpl) ? 131072 : 65536;
        }
        int i12 = i6 | 1572864;
        if (gapComposer4.N(i5 & 1, ((i5 & 306783379) == 306783378 && (599187 & i12) == 599186) ? false : true)) {
            gapComposer4.S();
            if ((i3 & 1) != 0 && !gapComposer4.x()) {
                gapComposer4.Q();
            }
            gapComposer4.q();
            Object K11 = gapComposer4.K();
            Object obj3 = Composer.Companion.a;
            if (K11 == obj3) {
                K11 = new FocusRequester();
                gapComposer4.g0(K11);
            }
            FocusRequester focusRequester5 = (FocusRequester) K11;
            Object K12 = gapComposer4.K();
            if (K12 == obj3) {
                Function1 function13 = LegacyPlatformTextInputServiceAdapter_androidKt.a;
                K12 = new Object();
                gapComposer4.g0(K12);
            }
            LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter2 = (LegacyPlatformTextInputServiceAdapter) K12;
            Object K13 = gapComposer4.K();
            if (K13 == obj3) {
                K13 = new TextInputService(legacyPlatformTextInputServiceAdapter2);
                gapComposer4.g0(K13);
            }
            TextInputService textInputService4 = (TextInputService) K13;
            Density density3 = (Density) gapComposer4.j(CompositionLocalsKt.h);
            FontFamily.Resolver resolver2 = (FontFamily.Resolver) gapComposer4.j(CompositionLocalsKt.k);
            long j2 = ((TextSelectionColors) gapComposer4.j(TextSelectionColorsKt.a)).b;
            FocusManager focusManager2 = (FocusManager) gapComposer4.j(CompositionLocalsKt.i);
            final WindowInfo windowInfo2 = (WindowInfo) gapComposer4.j(CompositionLocalsKt.u);
            SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) gapComposer4.j(CompositionLocalsKt.q);
            Orientation orientation = (i == 1 && !z && imeOptions.a) ? Orientation.k : Orientation.j;
            gapComposer4.W(-213744626);
            Object[] objArr = {orientation};
            SaverKt$Saver$1 saverKt$Saver$1 = TextFieldScrollerPosition.g;
            boolean d = gapComposer4.d(orientation.ordinal());
            Object K14 = gapComposer4.K();
            if (d || K14 == obj3) {
                i7 = i12;
                K14 = new r1(12, orientation);
                gapComposer4.g0(K14);
            } else {
                i7 = i12;
            }
            TextFieldScrollerPosition textFieldScrollerPosition3 = (TextFieldScrollerPosition) RememberSaveableKt.d(objArr, saverKt$Saver$1, (Function0) K14, gapComposer4, 0);
            gapComposer4.p(false);
            if (((Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition3.f).getValue()) != orientation) {
                if (orientation == Orientation.j) {
                    str2 = "only single-line, non-wrap text fields can scroll horizontally";
                } else {
                    str2 = "single-line, non-wrap text fields can only scroll horizontally";
                }
                throw new IllegalArgumentException("Mismatching scroller orientation; ".concat(str2));
            }
            int i13 = i5 & 14;
            boolean z13 = ((i5 & 57344) == 16384) | (i13 == 4);
            Object K15 = gapComposer4.K();
            if (z13 || K15 == obj3) {
                TransformedText a2 = ValidatingOffsetMappingKt.a(visualTransformation, textFieldValue.a);
                OffsetMapping offsetMapping2 = a2.b;
                TextRange textRange2 = textFieldValue.c;
                if (textRange2 != null) {
                    focusRequester = focusRequester5;
                    long j3 = textRange2.a;
                    int i14 = TextRange.c;
                    int b = offsetMapping2.b((int) (j3 >> 32));
                    j = j2;
                    int b2 = offsetMapping2.b((int) (j3 & 4294967295L));
                    int min = Math.min(b, b2);
                    int max = Math.max(b, b2);
                    AnnotatedString.Builder builder = new AnnotatedString.Builder(a2.a);
                    builder.a(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.c, (Shadow) null, 61439), min, max);
                    K15 = new TransformedText(builder.e(), offsetMapping2);
                } else {
                    focusRequester = focusRequester5;
                    j = j2;
                    K15 = a2;
                }
                gapComposer4.g0(K15);
            } else {
                focusRequester = focusRequester5;
                j = j2;
            }
            TransformedText transformedText3 = (TransformedText) K15;
            AnnotatedString annotatedString3 = transformedText3.a;
            final OffsetMapping offsetMapping3 = transformedText3.b;
            RecomposeScopeImpl w = gapComposer4.w();
            if (w != null) {
                w.b |= 1;
                boolean f2 = gapComposer4.f(softwareKeyboardController);
                Object K16 = gapComposer4.K();
                if (f2 || K16 == obj3) {
                    gapComposer2 = gapComposer4;
                    textStyle2 = textStyle;
                    z3 = z;
                    transformedText = transformedText3;
                    textFieldScrollerPosition = textFieldScrollerPosition3;
                    annotatedString = annotatedString3;
                    density = density3;
                    resolver = resolver2;
                    K16 = new LegacyTextFieldState(new TextDelegate(annotatedString3, textStyle2, z3, density3, resolver2, 0), w, softwareKeyboardController);
                    gapComposer2.g0(K16);
                } else {
                    textStyle2 = textStyle;
                    z3 = z;
                    transformedText = transformedText3;
                    annotatedString = annotatedString3;
                    textFieldScrollerPosition = textFieldScrollerPosition3;
                    gapComposer2 = gapComposer4;
                    density = density3;
                    resolver = resolver2;
                }
                LegacyTextFieldState legacyTextFieldState5 = (LegacyTextFieldState) K16;
                AnnotatedString annotatedString4 = textFieldValue.a;
                long j4 = textFieldValue.b;
                legacyTextFieldState5.u = function1;
                legacyTextFieldState5.z = j;
                KeyboardActionRunner keyboardActionRunner = legacyTextFieldState5.r;
                keyboardActionRunner.b = keyboardActions;
                keyboardActionRunner.c = focusManager2;
                legacyTextFieldState5.j = annotatedString4;
                TextDelegate textDelegate = legacyTextFieldState5.a;
                if (Intrinsics.a(textDelegate.a, annotatedString) && Intrinsics.a(textDelegate.b, textStyle2) && textDelegate.e == z3) {
                    AnnotatedString annotatedString5 = annotatedString;
                    if (textDelegate.f == 1 && textDelegate.c == Integer.MAX_VALUE && textDelegate.d == 1 && Intrinsics.a(textDelegate.g, density) && Intrinsics.a(textDelegate.i, EmptyList.j) && textDelegate.h == resolver) {
                        density2 = density;
                        if (legacyTextFieldState5.a == textDelegate) {
                            legacyTextFieldState5.p = true;
                        }
                        legacyTextFieldState5.a = textDelegate;
                        EditProcessor editProcessor = legacyTextFieldState5.d;
                        textInputSession = legacyTextFieldState5.e;
                        editProcessor.getClass();
                        textRange = textFieldValue.c;
                        boolean a3 = Intrinsics.a(textRange, editProcessor.b.c());
                        str = editProcessor.a.a.k;
                        annotatedString2 = textFieldValue.a;
                        if (Intrinsics.a(str, annotatedString2.k)) {
                            editProcessor.b = new EditingBuffer(annotatedString2, j4);
                            z4 = a3;
                            z5 = true;
                        } else {
                            z4 = a3;
                            if (TextRange.b(editProcessor.a.b, j4)) {
                                z5 = false;
                            } else {
                                editProcessor.b.f(TextRange.f(j4), TextRange.e(j4));
                                z5 = false;
                                z6 = true;
                                if (textRange == null) {
                                    EditingBuffer editingBuffer = editProcessor.b;
                                    editingBuffer.d = -1;
                                    editingBuffer.e = -1;
                                } else {
                                    long j5 = textRange.a;
                                    if (!TextRange.c(j5)) {
                                        z7 = z5;
                                        editProcessor.b.e(TextRange.f(j5), TextRange.e(j5));
                                        if (z7 && (z6 || z4)) {
                                            a = textFieldValue;
                                        } else {
                                            EditingBuffer editingBuffer2 = editProcessor.b;
                                            editingBuffer2.d = -1;
                                            editingBuffer2.e = -1;
                                            a = TextFieldValue.a(textFieldValue, null, 0L, 3);
                                        }
                                        textFieldValue2 = editProcessor.a;
                                        editProcessor.a = a;
                                        if (textInputSession != null && Intrinsics.a((TextInputSession) textInputSession.a.b.get(), textInputSession)) {
                                            textInputSession.b.f(textFieldValue2, a);
                                        }
                                        K = gapComposer2.K();
                                        if (K == obj3) {
                                            K = new Object();
                                            gapComposer2.g0(K);
                                        }
                                        undoManager = (UndoManager) K;
                                        long currentTimeMillis = System.currentTimeMillis();
                                        if (!undoManager.e) {
                                            Long l = undoManager.d;
                                        }
                                        undoManager.d = Long.valueOf(currentTimeMillis);
                                        undoManager.a(textFieldValue);
                                        K2 = gapComposer2.K();
                                        if (K2 == obj3) {
                                            K2 = EffectsKt.h(gapComposer2);
                                            gapComposer2.g0(K2);
                                        }
                                        coroutineScope = (CoroutineScope) K2;
                                        K3 = gapComposer2.K();
                                        if (K3 == obj3) {
                                            K3 = BringIntoViewRequesterKt.a();
                                            gapComposer2.g0(K3);
                                        }
                                        bringIntoViewRequester = (BringIntoViewRequester) K3;
                                        K4 = gapComposer2.K();
                                        if (K4 == obj3) {
                                            K4 = new TextFieldSelectionManager(undoManager);
                                            gapComposer2.g0(K4);
                                        }
                                        final TextFieldSelectionManager textFieldSelectionManager2 = (TextFieldSelectionManager) K4;
                                        textFieldSelectionManager2.b = offsetMapping3;
                                        textFieldSelectionManager2.c = legacyTextFieldState5.v;
                                        textFieldSelectionManager2.d = legacyTextFieldState5;
                                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.e).setValue(textFieldValue);
                                        textFieldSelectionManager2.v = new TextRange(j4);
                                        textFieldSelectionManager2.g = (Clipboard) gapComposer2.j(CompositionLocalsKt.f);
                                        textFieldSelectionManager2.h = coroutineScope;
                                        textFieldSelectionManager2.j = (HapticFeedback) gapComposer2.j(CompositionLocalsKt.l);
                                        focusRequester2 = focusRequester;
                                        textFieldSelectionManager2.k = focusRequester2;
                                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.l).setValue(true);
                                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.m).setValue(Boolean.valueOf(z2));
                                        gapComposer2.W(1966756105);
                                        SelectedTextType selectedTextType = SelectedTextType.j;
                                        LocaleList localeList = textStyle.a.k;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = PlatformSelectionBehaviors_androidKt.a;
                                        gapComposer2.W(430530635);
                                        Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
                                        CoroutineContext coroutineContext = (CoroutineContext) gapComposer2.j(PlatformSelectionBehaviors_androidKt.a);
                                        f = gapComposer2.f(coroutineContext) | gapComposer2.f(context) | gapComposer2.f(localeList);
                                        K5 = gapComposer2.K();
                                        if (!f || K5 == obj3) {
                                            K5 = (PlatformSelectionBehaviors) PlatformSelectionBehaviors_androidKt.b.j(coroutineContext, context, selectedTextType, localeList);
                                            gapComposer2.g0(K5);
                                        }
                                        gapComposer2.p(false);
                                        textFieldSelectionManager2.i = (PlatformSelectionBehaviors) K5;
                                        gapComposer2.p(false);
                                        legacyTextFieldState5.b();
                                        i8 = i7;
                                        int i15 = i8 & 7168;
                                        i9 = (i8 & 112) ^ 48;
                                        h = gapComposer2.h(legacyTextFieldState5) | (i15 != 2048) | ((i8 & 57344) != 16384) | gapComposer2.h(textInputService4) | (i13 != 4) | ((i9 <= 32 && gapComposer2.f(imeOptions)) || (i8 & 48) == 32) | gapComposer2.h(offsetMapping3) | gapComposer2.h(coroutineScope) | gapComposer2.h(bringIntoViewRequester) | gapComposer2.h(textFieldSelectionManager2);
                                        Object K17 = gapComposer2.K();
                                        if (!h || K17 == obj3) {
                                            mutableInteractionSource2 = mutableInteractionSource;
                                            gapComposer3 = gapComposer2;
                                            legacyTextFieldState = legacyTextFieldState5;
                                            textInputService = textInputService4;
                                            i10 = i13;
                                            focusManager = focusManager2;
                                            i11 = i8;
                                            legacyPlatformTextInputServiceAdapter = legacyPlatformTextInputServiceAdapter2;
                                            focusRequester3 = focusRequester2;
                                            textFieldScrollerPosition2 = textFieldScrollerPosition;
                                            imeOptions2 = imeOptions;
                                            transformedText2 = transformedText;
                                            obj2 = obj3;
                                            obj = new Function1() { // from class: androidx.compose.foundation.text.c
                                                /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object b(Object obj4) {
                                                    TextLayoutResultProxy d2;
                                                    LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                                                    boolean b3 = legacyTextFieldState6.b();
                                                    FocusStateImpl focusStateImpl = (FocusStateImpl) ((FocusState) obj4);
                                                    boolean b4 = focusStateImpl.b();
                                                    Unit unit = Unit.a;
                                                    if (b3 != b4) {
                                                        ((SnapshotMutableStateImpl) legacyTextFieldState6.f).setValue(Boolean.valueOf(focusStateImpl.b()));
                                                        boolean b5 = legacyTextFieldState6.b();
                                                        TextFieldValue textFieldValue4 = textFieldValue;
                                                        OffsetMapping offsetMapping4 = offsetMapping3;
                                                        if (b5 && z2) {
                                                            EditProcessor editProcessor2 = legacyTextFieldState6.d;
                                                            t6 t6Var = legacyTextFieldState6.v;
                                                            t6 t6Var2 = legacyTextFieldState6.w;
                                                            ?? obj5 = new Object();
                                                            p2 p2Var = new p2(editProcessor2, t6Var, (Object) obj5, 17);
                                                            TextInputService textInputService5 = textInputService;
                                                            PlatformTextInputService platformTextInputService = textInputService5.a;
                                                            platformTextInputService.c(textFieldValue4, imeOptions2, p2Var, t6Var2);
                                                            TextInputSession textInputSession2 = new TextInputSession(textInputService5, platformTextInputService);
                                                            textInputService5.b.set(textInputSession2);
                                                            obj5.j = textInputSession2;
                                                            legacyTextFieldState6.e = textInputSession2;
                                                            CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue4, offsetMapping4);
                                                        } else {
                                                            CoreTextFieldKt.e(legacyTextFieldState6);
                                                        }
                                                        if (focusStateImpl.b() && (d2 = legacyTextFieldState6.d()) != null) {
                                                            BuildersKt.c(coroutineScope, null, null, new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(bringIntoViewRequester, textFieldValue4, legacyTextFieldState6, d2, offsetMapping4, null), 3);
                                                        }
                                                        if (!focusStateImpl.b()) {
                                                            textFieldSelectionManager2.g(null);
                                                        }
                                                    }
                                                    return unit;
                                                }
                                            };
                                            z8 = z2;
                                            coroutineScope2 = coroutineScope;
                                            textFieldValue3 = textFieldValue;
                                            textFieldSelectionManager2 = textFieldSelectionManager2;
                                            bringIntoViewRequester2 = bringIntoViewRequester;
                                            offsetMapping = offsetMapping3;
                                            gapComposer3.g0(obj);
                                        } else {
                                            gapComposer3 = gapComposer2;
                                            textInputService = textInputService4;
                                            i10 = i13;
                                            legacyTextFieldState = legacyTextFieldState5;
                                            focusManager = focusManager2;
                                            i11 = i8;
                                            bringIntoViewRequester2 = bringIntoViewRequester;
                                            legacyPlatformTextInputServiceAdapter = legacyPlatformTextInputServiceAdapter2;
                                            focusRequester3 = focusRequester2;
                                            textFieldScrollerPosition2 = textFieldScrollerPosition;
                                            textFieldValue3 = textFieldValue;
                                            imeOptions2 = imeOptions;
                                            transformedText2 = transformedText;
                                            obj2 = obj3;
                                            offsetMapping = offsetMapping3;
                                            z8 = z2;
                                            coroutineScope2 = coroutineScope;
                                            obj = K17;
                                            mutableInteractionSource2 = mutableInteractionSource;
                                        }
                                        Modifier.Companion companion2 = Modifier.Companion.b;
                                        CoroutineScope coroutineScope4 = coroutineScope2;
                                        Modifier a4 = FocusableKt.a(FocusChangedModifierKt.a(FocusRequesterModifierKt.a(companion2, focusRequester3), (Function1) obj), z8, mutableInteractionSource2);
                                        MutableState k = SnapshotStateKt.k(Boolean.valueOf(z8), gapComposer3);
                                        boolean f3 = gapComposer3.f(k) | gapComposer3.h(legacyTextFieldState) | gapComposer3.h(textInputService) | gapComposer3.h(textFieldSelectionManager2);
                                        if (i9 > 32 || !gapComposer3.f(imeOptions2)) {
                                            legacyTextFieldState2 = legacyTextFieldState;
                                            if ((i11 & 48) != 32) {
                                                z9 = false;
                                                z10 = f3 | z9;
                                                Object K18 = gapComposer3.K();
                                                if (!z10 || K18 == obj2) {
                                                    focusRequester4 = focusRequester3;
                                                    coroutineScope3 = coroutineScope4;
                                                    modifier2 = a4;
                                                    companion = companion2;
                                                    legacyTextFieldState3 = legacyTextFieldState2;
                                                    coreTextFieldKt$CoreTextField$5$1 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState3, k, textInputService, textFieldSelectionManager2, imeOptions2, null);
                                                    mutableState = k;
                                                    textInputService2 = textInputService;
                                                    gapComposer3.g0(coreTextFieldKt$CoreTextField$5$1);
                                                } else {
                                                    coreTextFieldKt$CoreTextField$5$1 = K18;
                                                    focusRequester4 = focusRequester3;
                                                    coroutineScope3 = coroutineScope4;
                                                    modifier2 = a4;
                                                    legacyTextFieldState3 = legacyTextFieldState2;
                                                    mutableState = k;
                                                    companion = companion2;
                                                    textInputService2 = textInputService;
                                                }
                                                EffectsKt.e(gapComposer3, Unit.a, (Function2) coreTextFieldKt$CoreTextField$5$1);
                                                Modifier f4 = SelectionGesturesKt.f(new t6(legacyTextFieldState3, 4));
                                                final OffsetMapping offsetMapping4 = offsetMapping;
                                                FocusRequester focusRequester6 = focusRequester4;
                                                final pb pbVar = new pb(legacyTextFieldState3, focusRequester6, z8, textFieldSelectionManager2, offsetMapping4);
                                                Modifier l2 = (z2 ? ComposedModifierKt.a(f4, new Function3() { // from class: androidx.compose.foundation.text.k
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object f(Object obj4, Object obj5, Object obj6) {
                                                        ((Integer) obj6).getClass();
                                                        GapComposer gapComposer5 = (GapComposer) ((Composer) obj5);
                                                        gapComposer5.W(-102778667);
                                                        Object K19 = gapComposer5.K();
                                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                                        if (K19 == composer$Companion$Empty$1) {
                                                            K19 = EffectsKt.h(gapComposer5);
                                                            gapComposer5.g0(K19);
                                                        }
                                                        final CoroutineScope coroutineScope5 = (CoroutineScope) K19;
                                                        Object K20 = gapComposer5.K();
                                                        if (K20 == composer$Companion$Empty$1) {
                                                            K20 = SnapshotStateKt.g(null);
                                                            gapComposer5.g0(K20);
                                                        }
                                                        final MutableState mutableState2 = (MutableState) K20;
                                                        final MutableState k2 = SnapshotStateKt.k(pb.this, gapComposer5);
                                                        final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                                                        boolean f5 = gapComposer5.f(mutableInteractionSource3);
                                                        Object K21 = gapComposer5.K();
                                                        if (f5 || K21 == composer$Companion$Empty$1) {
                                                            K21 = new ec(14, mutableState2, mutableInteractionSource3);
                                                            gapComposer5.g0(K21);
                                                        }
                                                        EffectsKt.c(mutableInteractionSource3, (Function1) K21, gapComposer5);
                                                        boolean h6 = gapComposer5.h(coroutineScope5) | gapComposer5.f(mutableInteractionSource3) | gapComposer5.f(k2);
                                                        Object K22 = gapComposer5.K();
                                                        if (h6 || K22 == composer$Companion$Empty$1) {
                                                            K22 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1

                                                                /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                                @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", l = {67}, m = "invokeSuspend", v = 1)
                                                                /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name */
                                                                /* loaded from: classes.dex */
                                                                final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
                                                                    public int n;
                                                                    public /* synthetic */ PressGestureScope o;
                                                                    public /* synthetic */ long p;
                                                                    public final /* synthetic */ CoroutineScope q;
                                                                    public final /* synthetic */ MutableState r;
                                                                    public final /* synthetic */ MutableInteractionSource s;

                                                                    /* JADX INFO: Access modifiers changed from: package-private */
                                                                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                                    @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1", f = "TextFieldPressGestureFilter.kt", l = {60, 64}, m = "invokeSuspend", v = 1)
                                                                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1, reason: invalid class name and collision with other inner class name */
                                                                    /* loaded from: classes.dex */
                                                                    public final class C00051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                                        public Object n;
                                                                        public int o;
                                                                        public final /* synthetic */ MutableState p;
                                                                        public final /* synthetic */ long q;
                                                                        public final /* synthetic */ MutableInteractionSource r;

                                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                        public C00051(MutableState mutableState, long j, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                                            super(2, continuation);
                                                                            this.p = mutableState;
                                                                            this.q = j;
                                                                            this.r = mutableInteractionSource;
                                                                        }

                                                                        @Override // kotlin.jvm.functions.Function2
                                                                        public final Object n(Object obj, Object obj2) {
                                                                            return ((C00051) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                                                        }

                                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                        public final Continuation s(Object obj, Continuation continuation) {
                                                                            return new C00051(this.p, this.q, this.r, continuation);
                                                                        }

                                                                        /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
                                                                        
                                                                            if (r3.a(r1, r7) == r0) goto L23;
                                                                         */
                                                                        /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
                                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                        /*
                                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                                        */
                                                                        public final Object v(Object obj) {
                                                                            MutableState mutableState;
                                                                            PressInteraction.Press press;
                                                                            PressInteraction.Press press2;
                                                                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                                            int i = this.o;
                                                                            MutableInteractionSource mutableInteractionSource = this.r;
                                                                            MutableState mutableState2 = this.p;
                                                                            if (i != 0) {
                                                                                if (i != 1) {
                                                                                    if (i == 2) {
                                                                                        press2 = (PressInteraction.Press) this.n;
                                                                                        ResultKt.b(obj);
                                                                                        press = press2;
                                                                                        mutableState2.setValue(press);
                                                                                        return Unit.a;
                                                                                    }
                                                                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                                    return null;
                                                                                }
                                                                                mutableState = (MutableState) this.n;
                                                                                ResultKt.b(obj);
                                                                            } else {
                                                                                ResultKt.b(obj);
                                                                                PressInteraction.Press press3 = (PressInteraction.Press) mutableState2.getValue();
                                                                                if (press3 != null) {
                                                                                    PressInteraction.Cancel cancel = new PressInteraction.Cancel(press3);
                                                                                    if (mutableInteractionSource != null) {
                                                                                        this.n = mutableState2;
                                                                                        this.o = 1;
                                                                                    }
                                                                                    mutableState = mutableState2;
                                                                                }
                                                                                press = new PressInteraction.Press(this.q);
                                                                                if (mutableInteractionSource != null) {
                                                                                    this.n = press;
                                                                                    this.o = 2;
                                                                                    if (mutableInteractionSource.a(press, this) != coroutineSingletons) {
                                                                                        press2 = press;
                                                                                        press = press2;
                                                                                    }
                                                                                    return coroutineSingletons;
                                                                                }
                                                                                mutableState2.setValue(press);
                                                                                return Unit.a;
                                                                            }
                                                                            mutableState.setValue(null);
                                                                            press = new PressInteraction.Press(this.q);
                                                                            if (mutableInteractionSource != null) {
                                                                            }
                                                                            mutableState2.setValue(press);
                                                                            return Unit.a;
                                                                        }
                                                                    }

                                                                    /* JADX INFO: Access modifiers changed from: package-private */
                                                                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                                    @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2", f = "TextFieldPressGestureFilter.kt", l = {76}, m = "invokeSuspend", v = 1)
                                                                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2, reason: invalid class name */
                                                                    /* loaded from: classes.dex */
                                                                    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                                        public MutableState n;
                                                                        public int o;
                                                                        public final /* synthetic */ MutableState p;
                                                                        public final /* synthetic */ boolean q;
                                                                        public final /* synthetic */ MutableInteractionSource r;

                                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                        public AnonymousClass2(MutableState mutableState, boolean z, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                                            super(2, continuation);
                                                                            this.p = mutableState;
                                                                            this.q = z;
                                                                            this.r = mutableInteractionSource;
                                                                        }

                                                                        @Override // kotlin.jvm.functions.Function2
                                                                        public final Object n(Object obj, Object obj2) {
                                                                            return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                                                        }

                                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                        public final Continuation s(Object obj, Continuation continuation) {
                                                                            return new AnonymousClass2(this.p, this.q, this.r, continuation);
                                                                        }

                                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                        public final Object v(Object obj) {
                                                                            MutableState mutableState;
                                                                            Interaction cancel;
                                                                            MutableState mutableState2;
                                                                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                                            int i = this.o;
                                                                            if (i != 0) {
                                                                                if (i == 1) {
                                                                                    mutableState2 = this.n;
                                                                                    ResultKt.b(obj);
                                                                                } else {
                                                                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                                    return null;
                                                                                }
                                                                            } else {
                                                                                ResultKt.b(obj);
                                                                                mutableState = this.p;
                                                                                PressInteraction.Press press = (PressInteraction.Press) mutableState.getValue();
                                                                                if (press != null) {
                                                                                    if (this.q) {
                                                                                        cancel = new PressInteraction.Release(press);
                                                                                    } else {
                                                                                        cancel = new PressInteraction.Cancel(press);
                                                                                    }
                                                                                    MutableInteractionSource mutableInteractionSource = this.r;
                                                                                    if (mutableInteractionSource != null) {
                                                                                        this.n = mutableState;
                                                                                        this.o = 1;
                                                                                        if (mutableInteractionSource.a(cancel, this) == coroutineSingletons) {
                                                                                            return coroutineSingletons;
                                                                                        }
                                                                                        mutableState2 = mutableState;
                                                                                    }
                                                                                    mutableState.setValue(null);
                                                                                }
                                                                                return Unit.a;
                                                                            }
                                                                            mutableState = mutableState2;
                                                                            mutableState.setValue(null);
                                                                            return Unit.a;
                                                                        }
                                                                    }

                                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                    public AnonymousClass1(CoroutineScope coroutineScope, MutableState mutableState, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                                        super(3, continuation);
                                                                        this.q = coroutineScope;
                                                                        this.r = mutableState;
                                                                        this.s = mutableInteractionSource;
                                                                    }

                                                                    @Override // kotlin.jvm.functions.Function3
                                                                    public final Object f(Object obj, Object obj2, Object obj3) {
                                                                        long j = ((Offset) obj2).a;
                                                                        MutableState mutableState = this.r;
                                                                        MutableInteractionSource mutableInteractionSource = this.s;
                                                                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, mutableState, mutableInteractionSource, (Continuation) obj3);
                                                                        anonymousClass1.o = (PressGestureScope) obj;
                                                                        anonymousClass1.p = j;
                                                                        return anonymousClass1.v(Unit.a);
                                                                    }

                                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                    public final Object v(Object obj) {
                                                                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                                        int i = this.n;
                                                                        CoroutineScope coroutineScope = this.q;
                                                                        if (i != 0) {
                                                                            if (i == 1) {
                                                                                ResultKt.b(obj);
                                                                            } else {
                                                                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                                return null;
                                                                            }
                                                                        } else {
                                                                            ResultKt.b(obj);
                                                                            PressGestureScope pressGestureScope = this.o;
                                                                            BuildersKt.c(coroutineScope, null, null, new C00051(this.r, this.p, this.s, null), 3);
                                                                            this.n = 1;
                                                                            obj = ((PressGestureScopeImpl) pressGestureScope).e(this);
                                                                            if (obj == coroutineSingletons) {
                                                                                return coroutineSingletons;
                                                                            }
                                                                        }
                                                                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.r, ((Boolean) obj).booleanValue(), this.s, null), 3);
                                                                        return Unit.a;
                                                                    }
                                                                }

                                                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                                                    Object d2 = TapGestureDetectorKt.d(pointerInputScope, new AnonymousClass1(CoroutineScope.this, mutableState2, mutableInteractionSource3, null), new i2(k2, 17), continuation);
                                                                    if (d2 == CoroutineSingletons.j) {
                                                                        return d2;
                                                                    }
                                                                    return Unit.a;
                                                                }
                                                            };
                                                            gapComposer5.g0(K22);
                                                        }
                                                        Modifier a5 = SuspendingPointerInputFilterKt.a(Modifier.Companion.b, mutableInteractionSource3, (PointerInputEventHandler) K22);
                                                        gapComposer5.p(false);
                                                        return a5;
                                                    }
                                                }) : f4).l(new SuspendPointerInputElement(textFieldSelectionManager2.z, textFieldSelectionManager2.y, null, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3
                                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                                        TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                                                        Object c = SelectionGesturesKt.c(pointerInputScope, textFieldSelectionManager3.z, textFieldSelectionManager3.y, continuation);
                                                        if (c == CoroutineSingletons.j) {
                                                            return c;
                                                        }
                                                        return Unit.a;
                                                    }
                                                }, 4));
                                                PointerIcon.a.getClass();
                                                Modifier a5 = PointerIconKt.a(l2, PointerIcon_androidKt.b);
                                                final Modifier b3 = DrawModifierKt.b(companion, new p2(legacyTextFieldState3, textFieldValue3, offsetMapping4, 4));
                                                boolean h6 = gapComposer3.h(legacyTextFieldState3) | (i15 == 2048) | gapComposer3.f(windowInfo2) | gapComposer3.h(textFieldSelectionManager2);
                                                int i16 = i10;
                                                h2 = h6 | (i16 == 4) | gapComposer3.h(offsetMapping4);
                                                K6 = gapComposer3.K();
                                                if (!h2 || K6 == obj2) {
                                                    final TextFieldValue textFieldValue4 = textFieldValue3;
                                                    textInputService3 = textInputService2;
                                                    Function1 function14 = new Function1() { // from class: androidx.compose.foundation.text.d
                                                        @Override // kotlin.jvm.functions.Function1
                                                        public final Object b(Object obj4) {
                                                            TextInputSession textInputSession2;
                                                            final LayoutCoordinates layoutCoordinates;
                                                            LayoutCoordinates layoutCoordinates2;
                                                            LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                                                            MutableState mutableState2 = legacyTextFieldState6.o;
                                                            LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj4;
                                                            legacyTextFieldState6.h = layoutCoordinates3;
                                                            TextLayoutResultProxy d2 = legacyTextFieldState6.d();
                                                            if (d2 != null) {
                                                                d2.b = layoutCoordinates3;
                                                            }
                                                            if (z2) {
                                                                HandleState a6 = legacyTextFieldState6.a();
                                                                HandleState handleState = HandleState.k;
                                                                TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2;
                                                                TextFieldValue textFieldValue5 = textFieldValue4;
                                                                if (a6 == handleState) {
                                                                    if (((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState6.l).getValue()).booleanValue() && ((LazyWindowInfo) windowInfo2).a()) {
                                                                        textFieldSelectionManager3.s();
                                                                    } else {
                                                                        textFieldSelectionManager3.p();
                                                                    }
                                                                    ((SnapshotMutableStateImpl) legacyTextFieldState6.m).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                                                    ((SnapshotMutableStateImpl) legacyTextFieldState6.n).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, false)));
                                                                    ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextRange.c(textFieldValue5.b)));
                                                                } else if (legacyTextFieldState6.a() == HandleState.l) {
                                                                    ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                                                }
                                                                OffsetMapping offsetMapping5 = offsetMapping4;
                                                                CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue5, offsetMapping5);
                                                                TextLayoutResultProxy d3 = legacyTextFieldState6.d();
                                                                if (d3 != null && (textInputSession2 = legacyTextFieldState6.e) != null && legacyTextFieldState6.b() && (layoutCoordinates = d3.b) != null && layoutCoordinates.o() && (layoutCoordinates2 = d3.c) != null) {
                                                                    TextLayoutResult textLayoutResult = d3.a;
                                                                    Function1<Matrix, Unit> function15 = new Function1<Matrix, Unit>() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1
                                                                        @Override // kotlin.jvm.functions.Function1
                                                                        public final Object b(Object obj5) {
                                                                            float[] fArr = ((Matrix) obj5).a;
                                                                            LayoutCoordinates layoutCoordinates4 = LayoutCoordinates.this;
                                                                            if (layoutCoordinates4.o()) {
                                                                                LayoutCoordinatesKt.c(layoutCoordinates4).I(layoutCoordinates4, fArr);
                                                                            }
                                                                            return Unit.a;
                                                                        }
                                                                    };
                                                                    Rect a7 = SelectionManagerKt.a(layoutCoordinates);
                                                                    Rect l3 = layoutCoordinates.l(layoutCoordinates2, false);
                                                                    if (Intrinsics.a((TextInputSession) textInputSession2.a.b.get(), textInputSession2)) {
                                                                        textInputSession2.b.g(textFieldValue5, offsetMapping5, textLayoutResult, function15, a7, l3);
                                                                    }
                                                                }
                                                            }
                                                            return Unit.a;
                                                        }
                                                    };
                                                    windowInfo = windowInfo2;
                                                    offsetMapping4 = offsetMapping4;
                                                    gapComposer3.g0(function14);
                                                    K6 = function14;
                                                } else {
                                                    windowInfo = windowInfo2;
                                                    textInputService3 = textInputService2;
                                                }
                                                final Modifier a6 = OnGloballyPositionedModifierKt.a(companion, (Function1) K6);
                                                legacyTextFieldState4 = legacyTextFieldState3;
                                                textFieldSelectionManager = textFieldSelectionManager2;
                                                TextInputService textInputService5 = textInputService3;
                                                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState4, z2, offsetMapping4, textFieldSelectionManager, imeOptions, focusRequester6);
                                                final OffsetMapping offsetMapping5 = offsetMapping4;
                                                Modifier.Companion a7 = !z2 && ((LazyWindowInfo) windowInfo).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.B).getValue()).a) ? ComposedModifierKt.a(companion, new Function3() { // from class: androidx.compose.foundation.text.h
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object f(Object obj4, Object obj5, Object obj6) {
                                                        boolean z14;
                                                        Object obj7;
                                                        Modifier modifier4 = (Modifier) obj4;
                                                        ((Integer) obj6).getClass();
                                                        GapComposer gapComposer5 = (GapComposer) ((Composer) obj5);
                                                        gapComposer5.W(-84507373);
                                                        boolean booleanValue = ((Boolean) gapComposer5.j(CompositionLocalsKt.y)).booleanValue();
                                                        boolean g2 = gapComposer5.g(booleanValue);
                                                        Object K19 = gapComposer5.K();
                                                        Object obj8 = Composer.Companion.a;
                                                        if (g2 || K19 == obj8) {
                                                            K19 = new CursorAnimationState(booleanValue);
                                                            gapComposer5.g0(K19);
                                                        }
                                                        CursorAnimationState cursorAnimationState = (CursorAnimationState) K19;
                                                        SolidColor solidColor3 = SolidColor.this;
                                                        if (solidColor3.a == 16) {
                                                            z14 = false;
                                                        } else {
                                                            z14 = true;
                                                        }
                                                        if (((LazyWindowInfo) ((WindowInfo) gapComposer5.j(CompositionLocalsKt.u))).a()) {
                                                            LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState4;
                                                            if (legacyTextFieldState6.b()) {
                                                                TextFieldValue textFieldValue5 = textFieldValue;
                                                                if (TextRange.c(textFieldValue5.b) && z14) {
                                                                    gapComposer5.W(-707487962);
                                                                    AnnotatedString annotatedString6 = textFieldValue5.a;
                                                                    TextRange textRange3 = new TextRange(textFieldValue5.b);
                                                                    boolean h7 = gapComposer5.h(cursorAnimationState);
                                                                    Object K20 = gapComposer5.K();
                                                                    if (h7 || K20 == obj8) {
                                                                        K20 = new TextFieldCursorKt$cursor$1$1$1(cursorAnimationState, null);
                                                                        gapComposer5.g0(K20);
                                                                    }
                                                                    EffectsKt.f(annotatedString6, textRange3, (Function2) K20, gapComposer5);
                                                                    boolean h8 = gapComposer5.h(cursorAnimationState);
                                                                    Object obj9 = offsetMapping5;
                                                                    boolean h9 = gapComposer5.h(obj9) | h8 | gapComposer5.f(textFieldValue5) | gapComposer5.h(legacyTextFieldState6) | gapComposer5.f(solidColor3);
                                                                    Object K21 = gapComposer5.K();
                                                                    if (h9 || K21 == obj8) {
                                                                        Object oVar = new o(cursorAnimationState, obj9, textFieldValue5, legacyTextFieldState6, solidColor3, 4);
                                                                        gapComposer5.g0(oVar);
                                                                        K21 = oVar;
                                                                    }
                                                                    obj7 = DrawModifierKt.d(modifier4, (Function1) K21);
                                                                    gapComposer5.p(false);
                                                                    gapComposer5.p(false);
                                                                    return obj7;
                                                                }
                                                            }
                                                        }
                                                        gapComposer5.W(-705473241);
                                                        gapComposer5.p(false);
                                                        obj7 = Modifier.Companion.b;
                                                        gapComposer5.p(false);
                                                        return obj7;
                                                    }
                                                }) : companion;
                                                h3 = gapComposer3.h(textFieldSelectionManager);
                                                K7 = gapComposer3.K();
                                                if (!h3 || K7 == obj2) {
                                                    K7 = new w6(textFieldSelectionManager, 0);
                                                    gapComposer3.g0(K7);
                                                }
                                                EffectsKt.c(textFieldSelectionManager, (Function1) K7, gapComposer3);
                                                h4 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.h(textInputService5) | (i16 == 4) | ((i9 <= 32 && gapComposer3.f(imeOptions)) || (i11 & 48) == 32);
                                                K8 = gapComposer3.K();
                                                if (!h4 || K8 == obj2) {
                                                    s2 s2Var = new s2(legacyTextFieldState4, textInputService5, textFieldValue, imeOptions, 2);
                                                    imeOptions3 = imeOptions;
                                                    gapComposer3.g0(s2Var);
                                                    K8 = s2Var;
                                                } else {
                                                    imeOptions3 = imeOptions;
                                                }
                                                EffectsKt.c(imeOptions3, (Function1) K8, gapComposer3);
                                                final t6 t6Var = legacyTextFieldState4.v;
                                                final boolean z14 = i == 1;
                                                final int i17 = imeOptions3.e;
                                                final boolean z15 = true;
                                                Modifier a8 = ComposedModifierKt.a(companion, new Function3() { // from class: androidx.compose.foundation.text.j
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object f(Object obj4, Object obj5, Object obj6) {
                                                        ((Integer) obj6).getClass();
                                                        GapComposer gapComposer5 = (GapComposer) ((Composer) obj5);
                                                        gapComposer5.W(851809892);
                                                        Object K19 = gapComposer5.K();
                                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                                        if (K19 == composer$Companion$Empty$1) {
                                                            K19 = new Object();
                                                            gapComposer5.g0(K19);
                                                        }
                                                        TextPreparedSelectionState textPreparedSelectionState = (TextPreparedSelectionState) K19;
                                                        Object K20 = gapComposer5.K();
                                                        if (K20 == composer$Companion$Empty$1) {
                                                            K20 = new Object();
                                                            gapComposer5.g0(K20);
                                                        }
                                                        TextFieldKeyInput textFieldKeyInput = new TextFieldKeyInput(LegacyTextFieldState.this, textFieldSelectionManager, textFieldValue, z15, z14, textPreparedSelectionState, offsetMapping5, undoManager, (DeadKeyCombiner) K20, t6Var, i17);
                                                        boolean h7 = gapComposer5.h(textFieldKeyInput);
                                                        Object K21 = gapComposer5.K();
                                                        if (h7 || K21 == composer$Companion$Empty$1) {
                                                            FunctionReference functionReference = new FunctionReference(1, textFieldKeyInput, TextFieldKeyInput.class, "process", "process-ZmokQxo(Landroid/view/KeyEvent;)Z", 0);
                                                            gapComposer5.g0(functionReference);
                                                            K21 = functionReference;
                                                        }
                                                        Modifier a9 = KeyInputModifierKt.a(Modifier.Companion.b, (Function1) ((KFunction) K21));
                                                        gapComposer5.p(false);
                                                        return a9;
                                                    }
                                                });
                                                int i18 = imeOptions3.d;
                                                z11 = (i18 == 7 || i18 == 8) ? false : true;
                                                boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                                                LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter3 = legacyPlatformTextInputServiceAdapter;
                                                g = gapComposer3.g(z11) | gapComposer3.h(legacyPlatformTextInputServiceAdapter3);
                                                K9 = gapComposer3.K();
                                                if (!g || K9 == obj2) {
                                                    K9 = new q6(1, legacyPlatformTextInputServiceAdapter3, z11);
                                                    gapComposer3.g0(K9);
                                                }
                                                Modifier a9 = StylusHandwritingKt.a(booleanValue, z11, (Function0) K9);
                                                Brush brush = (Brush) gapComposer3.j(AutofillHighlightKt.a);
                                                long j6 = ((Color) gapComposer3.j(AutofillHighlightKt.b)).a;
                                                solidColor2 = Color.c(j6, ColorKt.b(1308617531)) ? new SolidColor(j6) : brush;
                                                h5 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.f(solidColor2);
                                                K10 = gapComposer3.K();
                                                if (!h5 || K10 == obj2) {
                                                    K10 = new defpackage.b(10, legacyTextFieldState4, solidColor2);
                                                    gapComposer3.g0(K10);
                                                }
                                                final FocusManager focusManager3 = focusManager;
                                                Modifier l3 = KeyInputModifierKt.b(KeyInputModifierKt.b(LegacyAdaptingPlatformTextInputModifierNodeKt.a(modifier.l(DrawModifierKt.d(companion, (Function1) K10)), legacyPlatformTextInputServiceAdapter3, legacyTextFieldState4, textFieldSelectionManager).l(a9).l(modifier2), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object b(Object obj4) {
                                                        android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                                        InputDevice device = keyEvent.getDevice();
                                                        boolean z16 = false;
                                                        if (device != null && device.supportsSource(513) && ((!device.isVirtual() || keyEvent.getSource() == 33554433) && KeyEvent_androidKt.b(keyEvent) == 2 && keyEvent.getSource() != 257)) {
                                                            boolean a10 = TextFieldFocusModifier_androidKt.a(19, keyEvent);
                                                            FocusManager focusManager4 = FocusManager.this;
                                                            if (a10) {
                                                                z16 = ((FocusOwnerImpl) focusManager4).h(5, true);
                                                            } else if (TextFieldFocusModifier_androidKt.a(20, keyEvent)) {
                                                                z16 = ((FocusOwnerImpl) focusManager4).h(6, true);
                                                            } else if (TextFieldFocusModifier_androidKt.a(21, keyEvent)) {
                                                                z16 = ((FocusOwnerImpl) focusManager4).h(3, true);
                                                            } else if (TextFieldFocusModifier_androidKt.a(22, keyEvent)) {
                                                                z16 = ((FocusOwnerImpl) focusManager4).h(4, true);
                                                            } else if (TextFieldFocusModifier_androidKt.a(23, keyEvent)) {
                                                                SoftwareKeyboardController softwareKeyboardController2 = legacyTextFieldState4.c;
                                                                if (softwareKeyboardController2 != null) {
                                                                    ((DelegatingSoftwareKeyboardController) softwareKeyboardController2).b();
                                                                }
                                                                z16 = true;
                                                            }
                                                        }
                                                        return Boolean.valueOf(z16);
                                                    }
                                                }), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object b(Object obj4) {
                                                        boolean z16;
                                                        android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                                        if (LegacyTextFieldState.this.a() == HandleState.k && keyEvent.getKeyCode() == 4) {
                                                            z16 = true;
                                                            if (KeyEvent_androidKt.b(keyEvent) == 1) {
                                                                textFieldSelectionManager.g(null);
                                                                return Boolean.valueOf(z16);
                                                            }
                                                        }
                                                        z16 = false;
                                                        return Boolean.valueOf(z16);
                                                    }
                                                }).l(a8);
                                                final TextFieldScrollerPosition textFieldScrollerPosition4 = textFieldScrollerPosition2;
                                                final CoroutineScope coroutineScope5 = coroutineScope3;
                                                Modifier a10 = TextContextMenuModifier_androidKt.a(OnGloballyPositionedModifierKt.a(ComposedModifierKt.a(l3, new Function3() { // from class: dh
                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object f(Object obj4, Object obj5, Object obj6) {
                                                        boolean z16;
                                                        boolean z17;
                                                        TextFieldScrollerPosition textFieldScrollerPosition5 = TextFieldScrollerPosition.this;
                                                        MutableState mutableState2 = textFieldScrollerPosition5.f;
                                                        ((Integer) obj6).getClass();
                                                        GapComposer gapComposer5 = (GapComposer) ((Composer) obj5);
                                                        gapComposer5.W(-2137546592);
                                                        boolean z18 = true;
                                                        if (gapComposer5.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                                                            z16 = true;
                                                        } else {
                                                            z16 = false;
                                                        }
                                                        if (((Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue()) != Orientation.j && z16) {
                                                            z17 = false;
                                                        } else {
                                                            z17 = true;
                                                        }
                                                        boolean f5 = gapComposer5.f(textFieldScrollerPosition5);
                                                        Object K19 = gapComposer5.K();
                                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                                        if (f5 || K19 == composer$Companion$Empty$1) {
                                                            K19 = new ma(29, textFieldScrollerPosition5);
                                                            gapComposer5.g0(K19);
                                                        }
                                                        ScrollableState b4 = ScrollableStateKt.b((Function1) K19, gapComposer5);
                                                        boolean f6 = gapComposer5.f(b4) | gapComposer5.f(textFieldScrollerPosition5);
                                                        Object K20 = gapComposer5.K();
                                                        if (f6 || K20 == composer$Companion$Empty$1) {
                                                            K20 = new ScrollableState(textFieldScrollerPosition5) { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1
                                                                public final State b;
                                                                public final State c;

                                                                {
                                                                    final int i19 = 0;
                                                                    this.b = SnapshotStateKt.e(new Function0() { // from class: eh
                                                                        @Override // kotlin.jvm.functions.Function0
                                                                        public final Object a() {
                                                                            int i20 = i19;
                                                                            boolean z19 = false;
                                                                            TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                            switch (i20) {
                                                                                case 0:
                                                                                    if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                                        z19 = true;
                                                                                    }
                                                                                    return Boolean.valueOf(z19);
                                                                                default:
                                                                                    if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                                        z19 = true;
                                                                                    }
                                                                                    return Boolean.valueOf(z19);
                                                                            }
                                                                        }
                                                                    });
                                                                    final int i20 = 1;
                                                                    this.c = SnapshotStateKt.e(new Function0() { // from class: eh
                                                                        @Override // kotlin.jvm.functions.Function0
                                                                        public final Object a() {
                                                                            int i202 = i20;
                                                                            boolean z19 = false;
                                                                            TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                            switch (i202) {
                                                                                case 0:
                                                                                    if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                                        z19 = true;
                                                                                    }
                                                                                    return Boolean.valueOf(z19);
                                                                                default:
                                                                                    if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                                        z19 = true;
                                                                                    }
                                                                                    return Boolean.valueOf(z19);
                                                                            }
                                                                        }
                                                                    });
                                                                }

                                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                                public final boolean a() {
                                                                    return ScrollableState.this.a();
                                                                }

                                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                                public final boolean b() {
                                                                    return ((Boolean) this.c.getValue()).booleanValue();
                                                                }

                                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                                public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
                                                                    return ScrollableState.this.c(mutatePriority, function2, continuationImpl);
                                                                }

                                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                                public final boolean d() {
                                                                    return ((Boolean) this.b.getValue()).booleanValue();
                                                                }

                                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                                public final float e(float f7) {
                                                                    return ScrollableState.this.e(f7);
                                                                }
                                                            };
                                                            gapComposer5.g0(K20);
                                                        }
                                                        TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 = (TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1) K20;
                                                        Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue();
                                                        if (!z2 || ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition5.b).j() == 0.0f) {
                                                            z18 = false;
                                                        }
                                                        Modifier b5 = ScrollableKt.b(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation2, z18, z17, mutableInteractionSource2);
                                                        gapComposer5.p(false);
                                                        return b5;
                                                    }
                                                }).l(a5).l(coreTextFieldSemanticsModifier), new t6(legacyTextFieldState4, 0)), new zc(8, textFieldSelectionManager, coroutineScope5));
                                                z12 = !z2 && legacyTextFieldState4.b() && ((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState4.q).getValue()).booleanValue() && ((LazyWindowInfo) windowInfo).a();
                                                if (z12) {
                                                    modifier3 = companion;
                                                } else {
                                                    SemanticsPropertyKey semanticsPropertyKey = Magnifier_androidKt.a;
                                                    modifier3 = ComposedModifierKt.a(companion, new b0(9, textFieldSelectionManager));
                                                }
                                                GapComposer gapComposer5 = gapComposer3;
                                                final Modifier.Companion companion3 = a7;
                                                final BringIntoViewRequester bringIntoViewRequester3 = bringIntoViewRequester2;
                                                final WindowInfo windowInfo3 = windowInfo;
                                                final Modifier modifier4 = modifier3;
                                                final Density density4 = density2;
                                                final boolean z16 = z12;
                                                gapComposer = gapComposer5;
                                                b(a10, textFieldSelectionManager, ComposableLambdaKt.b(-814563849, new Function2() { // from class: u6
                                                    @Override // kotlin.jvm.functions.Function2
                                                    public final Object n(Object obj4, Object obj5) {
                                                        boolean z17;
                                                        Composer composer2 = (Composer) obj4;
                                                        int intValue = ((Integer) obj5).intValue();
                                                        if ((intValue & 3) != 2) {
                                                            z17 = true;
                                                        } else {
                                                            z17 = false;
                                                        }
                                                        GapComposer gapComposer6 = (GapComposer) composer2;
                                                        if (gapComposer6.N(intValue & 1, z17)) {
                                                            final TextStyle textStyle3 = textStyle;
                                                            final LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState4;
                                                            final int i19 = i2;
                                                            final int i20 = i;
                                                            final boolean z18 = z;
                                                            final TextFieldScrollerPosition textFieldScrollerPosition5 = textFieldScrollerPosition4;
                                                            final TextFieldValue textFieldValue5 = textFieldValue;
                                                            final VisualTransformation visualTransformation2 = visualTransformation;
                                                            final Modifier modifier5 = companion3;
                                                            final Modifier modifier6 = b3;
                                                            final Modifier modifier7 = a6;
                                                            final Modifier modifier8 = modifier4;
                                                            final BringIntoViewRequester bringIntoViewRequester4 = bringIntoViewRequester3;
                                                            final TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager;
                                                            final boolean z19 = z16;
                                                            final WindowInfo windowInfo4 = windowInfo3;
                                                            final CoroutineScope coroutineScope6 = coroutineScope5;
                                                            final Function1 function15 = function12;
                                                            final OffsetMapping offsetMapping6 = offsetMapping5;
                                                            final Density density5 = density4;
                                                            ComposableLambdaImpl.this.f(ComposableLambdaKt.b(-44346382, new Function2() { // from class: androidx.compose.foundation.text.b
                                                                @Override // kotlin.jvm.functions.Function2
                                                                public final Object n(Object obj6, Object obj7) {
                                                                    boolean z20;
                                                                    float f5;
                                                                    Modifier verticalScrollLayoutModifier;
                                                                    Composer composer3 = (Composer) obj6;
                                                                    int intValue2 = ((Integer) obj7).intValue();
                                                                    if ((intValue2 & 3) != 2) {
                                                                        z20 = true;
                                                                    } else {
                                                                        z20 = false;
                                                                    }
                                                                    GapComposer gapComposer7 = (GapComposer) composer3;
                                                                    if (gapComposer7.N(intValue2 & 1, z20)) {
                                                                        final LegacyTextFieldState legacyTextFieldState7 = legacyTextFieldState6;
                                                                        float f6 = ((Dp) ((SnapshotMutableStateImpl) legacyTextFieldState7.g).getValue()).j;
                                                                        if (Dp.b(f6, 0.0f)) {
                                                                            f5 = Float.NaN;
                                                                        } else {
                                                                            f5 = f6;
                                                                        }
                                                                        Modifier f7 = SizeKt.f(Modifier.Companion.b, f6, f5);
                                                                        int i21 = i19;
                                                                        final int i22 = i20;
                                                                        HeightInLinesModifierKt.b(i21, i22);
                                                                        TextStyle textStyle4 = TextStyle.this;
                                                                        if ((i21 != 1 || i22 != Integer.MAX_VALUE) && z18) {
                                                                            f7 = f7.l(new HeightInLinesElement(textStyle4, i21, i22));
                                                                        }
                                                                        boolean h7 = gapComposer7.h(legacyTextFieldState7);
                                                                        Object K19 = gapComposer7.K();
                                                                        if (h7 || K19 == Composer.Companion.a) {
                                                                            K19 = new r1(11, legacyTextFieldState7);
                                                                            gapComposer7.g0(K19);
                                                                        }
                                                                        Function0 function0 = (Function0) K19;
                                                                        TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                        Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition6.f).getValue();
                                                                        final TextFieldValue textFieldValue6 = textFieldValue5;
                                                                        long j7 = textFieldValue6.b;
                                                                        int i23 = TextRange.c;
                                                                        int i24 = (int) (j7 >> 32);
                                                                        long j8 = textFieldScrollerPosition6.e;
                                                                        if (i24 == ((int) (j8 >> 32)) && (i24 = (int) (j7 & 4294967295L)) == ((int) (j8 & 4294967295L))) {
                                                                            i24 = TextRange.f(j7);
                                                                        }
                                                                        textFieldScrollerPosition6.e = textFieldValue6.b;
                                                                        TransformedText a11 = ValidatingOffsetMappingKt.a(visualTransformation2, textFieldValue6.a);
                                                                        int ordinal = orientation2.ordinal();
                                                                        if (ordinal != 0) {
                                                                            if (ordinal == 1) {
                                                                                verticalScrollLayoutModifier = new HorizontalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                                            } else {
                                                                                k8.e();
                                                                                return null;
                                                                            }
                                                                        } else {
                                                                            verticalScrollLayoutModifier = new VerticalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                                        }
                                                                        Modifier l4 = ClipKt.b(OverscrollKt.a(f7)).l(verticalScrollLayoutModifier).l(modifier5).l(modifier6).l(new TextFieldSizeElement(textStyle4)).l(modifier7).l(modifier8);
                                                                        final BringIntoViewRequester bringIntoViewRequester5 = bringIntoViewRequester4;
                                                                        Modifier b4 = BringIntoViewRequesterKt.b(l4, bringIntoViewRequester5);
                                                                        final TextFieldSelectionManager textFieldSelectionManager4 = textFieldSelectionManager3;
                                                                        final boolean z21 = z19;
                                                                        final WindowInfo windowInfo5 = windowInfo4;
                                                                        final CoroutineScope coroutineScope7 = coroutineScope6;
                                                                        final Function1 function16 = function15;
                                                                        final OffsetMapping offsetMapping7 = offsetMapping6;
                                                                        final Density density6 = density5;
                                                                        SimpleLayoutKt.a(b4, ComposableLambdaKt.b(1412697320, new Function2() { // from class: s6
                                                                            /* JADX WARN: Code restructure failed: missing block: B:15:0x009e, code lost:
                                                                            
                                                                                if (r0 != false) goto L21;
                                                                             */
                                                                            @Override // kotlin.jvm.functions.Function2
                                                                            /*
                                                                                Code decompiled incorrectly, please refer to instructions dump.
                                                                            */
                                                                            public final Object n(Object obj8, Object obj9) {
                                                                                boolean z22;
                                                                                Composer composer4 = (Composer) obj8;
                                                                                int intValue3 = ((Integer) obj9).intValue();
                                                                                boolean z23 = true;
                                                                                if ((intValue3 & 3) != 2) {
                                                                                    z22 = true;
                                                                                } else {
                                                                                    z22 = false;
                                                                                }
                                                                                GapComposer gapComposer8 = (GapComposer) composer4;
                                                                                if (gapComposer8.N(intValue3 & 1, z22)) {
                                                                                    final LegacyTextFieldState legacyTextFieldState8 = legacyTextFieldState7;
                                                                                    final TextFieldSelectionManager textFieldSelectionManager5 = TextFieldSelectionManager.this;
                                                                                    final WindowInfo windowInfo6 = windowInfo5;
                                                                                    final CoroutineScope coroutineScope8 = coroutineScope7;
                                                                                    final Function1 function17 = function16;
                                                                                    final TextFieldValue textFieldValue7 = textFieldValue6;
                                                                                    final OffsetMapping offsetMapping8 = offsetMapping7;
                                                                                    final Density density7 = density6;
                                                                                    final BringIntoViewRequester bringIntoViewRequester6 = bringIntoViewRequester5;
                                                                                    final int i25 = i22;
                                                                                    MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2
                                                                                        /* JADX WARN: Removed duplicated region for block: B:38:0x01c8  */
                                                                                        /* JADX WARN: Removed duplicated region for block: B:64:0x0258  */
                                                                                        /* JADX WARN: Removed duplicated region for block: B:67:0x0262  */
                                                                                        /* JADX WARN: Removed duplicated region for block: B:69:0x0251  */
                                                                                        @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                                        /*
                                                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                                                        */
                                                                                        public final MeasureResult a(MeasureScope measureScope, List list, long j9) {
                                                                                            Function1 function18;
                                                                                            TextLayoutResult textLayoutResult;
                                                                                            long j10;
                                                                                            TextLayoutResult textLayoutResult2;
                                                                                            LayoutDirection layoutDirection;
                                                                                            TextLayoutResult textLayoutResult3;
                                                                                            TextLayoutResult textLayoutResult4;
                                                                                            CoreTextFieldKt$CoreTextField$8$1$1$2 coreTextFieldKt$CoreTextField$8$1$1$2;
                                                                                            int i26;
                                                                                            LayoutCoordinates layoutCoordinates;
                                                                                            AnnotatedString annotatedString6;
                                                                                            TextLayoutInput textLayoutInput;
                                                                                            int h8;
                                                                                            int i27;
                                                                                            LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                                            Snapshot a12 = Snapshot.Companion.a();
                                                                                            if (a12 != null) {
                                                                                                function18 = a12.e();
                                                                                            } else {
                                                                                                function18 = null;
                                                                                            }
                                                                                            Snapshot b5 = Snapshot.Companion.b(a12);
                                                                                            try {
                                                                                                TextLayoutResultProxy d2 = legacyTextFieldState9.d();
                                                                                                if (d2 != null) {
                                                                                                    textLayoutResult = d2.a;
                                                                                                } else {
                                                                                                    textLayoutResult = null;
                                                                                                }
                                                                                                TextDelegate textDelegate2 = legacyTextFieldState9.a;
                                                                                                LayoutDirection layoutDirection2 = measureScope.getLayoutDirection();
                                                                                                int i28 = textDelegate2.f;
                                                                                                boolean z24 = textDelegate2.e;
                                                                                                int i29 = textDelegate2.c;
                                                                                                if (textLayoutResult != null) {
                                                                                                    MultiParagraph multiParagraph = textLayoutResult.b;
                                                                                                    TextLayoutInput textLayoutInput2 = textLayoutResult.a;
                                                                                                    AnnotatedString annotatedString7 = textDelegate2.a;
                                                                                                    TextStyle textStyle5 = textDelegate2.b;
                                                                                                    List list2 = textDelegate2.i;
                                                                                                    Density density8 = textDelegate2.g;
                                                                                                    FontFamily.Resolver resolver3 = textDelegate2.h;
                                                                                                    TextLayoutResult textLayoutResult5 = textLayoutResult;
                                                                                                    if (multiParagraph.a.a()) {
                                                                                                        j10 = j9;
                                                                                                        layoutDirection = layoutDirection2;
                                                                                                    } else {
                                                                                                        AnnotatedString annotatedString8 = textLayoutInput2.a;
                                                                                                        long j11 = textLayoutInput2.j;
                                                                                                        if (Intrinsics.a(annotatedString8, annotatedString7) && textLayoutInput2.b.c(textStyle5) && Intrinsics.a(textLayoutInput2.c, list2) && textLayoutInput2.d == i29 && textLayoutInput2.e == z24 && textLayoutInput2.f == i28 && Intrinsics.a(textLayoutInput2.g, density8)) {
                                                                                                            layoutDirection = layoutDirection2;
                                                                                                            if (textLayoutInput2.h == layoutDirection && Intrinsics.a(textLayoutInput2.i, resolver3) && Constraints.j(j9) == Constraints.j(j11) && ((!z24 && i28 != 2) || (Constraints.h(j9) == Constraints.h(j11) && Constraints.g(j9) == Constraints.g(j11)))) {
                                                                                                                textLayoutResult2 = textLayoutResult5;
                                                                                                                textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput2.a, textDelegate2.b, textLayoutInput2.c, textLayoutInput2.d, textLayoutInput2.e, textLayoutInput2.f, textLayoutInput2.g, textLayoutInput2.h, textLayoutInput2.i, j9), multiParagraph, ConstraintsKt.d(j9, (TextDelegateKt.a(multiParagraph.e) & 4294967295L) | (TextDelegateKt.a(multiParagraph.d) << 32)));
                                                                                                                long j12 = textLayoutResult3.c;
                                                                                                                Integer valueOf = Integer.valueOf((int) (j12 >> 32));
                                                                                                                Integer valueOf2 = Integer.valueOf((int) (j12 & 4294967295L));
                                                                                                                int intValue4 = valueOf.intValue();
                                                                                                                int intValue5 = valueOf2.intValue();
                                                                                                                MultiParagraph multiParagraph2 = textLayoutResult3.b;
                                                                                                                multiParagraph2.a.a();
                                                                                                                textLayoutResult4 = textLayoutResult2;
                                                                                                                if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                                                    if (d2 != null) {
                                                                                                                        layoutCoordinates = d2.c;
                                                                                                                    } else {
                                                                                                                        layoutCoordinates = null;
                                                                                                                    }
                                                                                                                    ((SnapshotMutableStateImpl) legacyTextFieldState9.i).setValue(new TextLayoutResultProxy(textLayoutResult3, layoutCoordinates));
                                                                                                                    legacyTextFieldState9.p = false;
                                                                                                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                                                    TextFieldSelectionManager textFieldSelectionManager6 = textFieldSelectionManager5;
                                                                                                                    if (textFieldSelectionManager6.l() && textFieldSelectionManager6.k() && ((LazyWindowInfo) windowInfo6).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.B).getValue()).a) && legacyTextFieldState9.b()) {
                                                                                                                        if (textLayoutResult4 != null && (textLayoutInput = textLayoutResult4.a) != null) {
                                                                                                                            annotatedString6 = textLayoutInput.a;
                                                                                                                        } else {
                                                                                                                            annotatedString6 = null;
                                                                                                                        }
                                                                                                                        if (!Intrinsics.a(annotatedString6, textLayoutResult3.a.a)) {
                                                                                                                            BuildersKt.c(coroutineScope8, null, null, new CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1(textFieldSelectionManager6, bringIntoViewRequester6, null), 3);
                                                                                                                        }
                                                                                                                    }
                                                                                                                    function17.b(textLayoutResult3);
                                                                                                                    CoreTextFieldKt.f(legacyTextFieldState9, textFieldValue7, offsetMapping8);
                                                                                                                } else {
                                                                                                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                                                }
                                                                                                                if (i25 != 1) {
                                                                                                                    i26 = TextDelegateKt.a(multiParagraph2.b(0));
                                                                                                                } else {
                                                                                                                    i26 = 0;
                                                                                                                }
                                                                                                                ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                                                return measureScope.B(intValue4, intValue5, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                                            }
                                                                                                            j10 = j9;
                                                                                                        } else {
                                                                                                            j10 = j9;
                                                                                                            textLayoutResult2 = textLayoutResult5;
                                                                                                            layoutDirection = layoutDirection2;
                                                                                                        }
                                                                                                    }
                                                                                                    textLayoutResult2 = textLayoutResult5;
                                                                                                } else {
                                                                                                    j10 = j9;
                                                                                                    textLayoutResult2 = textLayoutResult;
                                                                                                    layoutDirection = layoutDirection2;
                                                                                                }
                                                                                                textDelegate2.a(layoutDirection);
                                                                                                int j13 = Constraints.j(j10);
                                                                                                if ((z24 || i28 == 2) && Constraints.d(j10)) {
                                                                                                    h8 = Constraints.h(j10);
                                                                                                } else {
                                                                                                    h8 = Integer.MAX_VALUE;
                                                                                                }
                                                                                                if (!z24 && i28 == 2) {
                                                                                                    i27 = 1;
                                                                                                } else {
                                                                                                    i27 = i29;
                                                                                                }
                                                                                                if (j13 != h8) {
                                                                                                    MultiParagraphIntrinsics multiParagraphIntrinsics = textDelegate2.j;
                                                                                                    if (multiParagraphIntrinsics != null) {
                                                                                                        h8 = RangesKt.d(TextDelegateKt.a(multiParagraphIntrinsics.c()), j13, h8);
                                                                                                    } else {
                                                                                                        u2.l("layoutIntrinsics must be called first");
                                                                                                        return null;
                                                                                                    }
                                                                                                }
                                                                                                MultiParagraphIntrinsics multiParagraphIntrinsics2 = textDelegate2.j;
                                                                                                if (multiParagraphIntrinsics2 != null) {
                                                                                                    textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textDelegate2.a, textDelegate2.b, textDelegate2.i, textDelegate2.c, textDelegate2.e, textDelegate2.f, textDelegate2.g, layoutDirection, textDelegate2.h, j10), new MultiParagraph(multiParagraphIntrinsics2, Constraints.Companion.b(0, h8, 0, Constraints.g(j10)), i27, textDelegate2.f), ConstraintsKt.d(j10, (TextDelegateKt.a(r25.d) << 32) | (TextDelegateKt.a(r25.e) & 4294967295L)));
                                                                                                    long j122 = textLayoutResult3.c;
                                                                                                    Integer valueOf3 = Integer.valueOf((int) (j122 >> 32));
                                                                                                    Integer valueOf22 = Integer.valueOf((int) (j122 & 4294967295L));
                                                                                                    int intValue42 = valueOf3.intValue();
                                                                                                    int intValue52 = valueOf22.intValue();
                                                                                                    MultiParagraph multiParagraph22 = textLayoutResult3.b;
                                                                                                    multiParagraph22.a.a();
                                                                                                    textLayoutResult4 = textLayoutResult2;
                                                                                                    if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                                    }
                                                                                                    if (i25 != 1) {
                                                                                                    }
                                                                                                    ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                                    return measureScope.B(intValue42, intValue52, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                                }
                                                                                                u2.l("layoutIntrinsics must be called first");
                                                                                                return null;
                                                                                            } finally {
                                                                                                Snapshot.Companion.e(a12, b5, function18);
                                                                                            }
                                                                                        }

                                                                                        @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                                        public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                                                                                            LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                                            legacyTextFieldState9.a.a(intrinsicMeasureScope.getLayoutDirection());
                                                                                            MultiParagraphIntrinsics multiParagraphIntrinsics = legacyTextFieldState9.a.j;
                                                                                            if (multiParagraphIntrinsics != null) {
                                                                                                return TextDelegateKt.a(multiParagraphIntrinsics.c());
                                                                                            }
                                                                                            u2.l("layoutIntrinsics must be called first");
                                                                                            return 0;
                                                                                        }
                                                                                    };
                                                                                    int hashCode = Long.hashCode(gapComposer8.T);
                                                                                    PersistentCompositionLocalMap l5 = gapComposer8.l();
                                                                                    Modifier c = ComposedModifierKt.c(gapComposer8, Modifier.Companion.b);
                                                                                    ComposeUiNode.b.getClass();
                                                                                    gapComposer8.Z();
                                                                                    if (gapComposer8.S) {
                                                                                        gapComposer8.k(LayoutNode.b0);
                                                                                    } else {
                                                                                        gapComposer8.j0();
                                                                                    }
                                                                                    Updater.c(gapComposer8, measurePolicy, ComposeUiNode.Companion.d);
                                                                                    Updater.c(gapComposer8, l5, ComposeUiNode.Companion.c);
                                                                                    Updater.c(gapComposer8, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                                                                    Updater.b(gapComposer8);
                                                                                    Updater.c(gapComposer8, c, ComposeUiNode.Companion.b);
                                                                                    gapComposer8.p(true);
                                                                                    HandleState a12 = legacyTextFieldState8.a();
                                                                                    HandleState handleState = HandleState.j;
                                                                                    boolean z24 = z21;
                                                                                    if (a12 != handleState && legacyTextFieldState8.c() != null) {
                                                                                        LayoutCoordinates c2 = legacyTextFieldState8.c();
                                                                                        c2.getClass();
                                                                                        if (c2.o()) {
                                                                                        }
                                                                                    }
                                                                                    z23 = false;
                                                                                    CoreTextFieldKt.c(textFieldSelectionManager5, z23, gapComposer8, 0);
                                                                                    if (legacyTextFieldState8.a() == HandleState.l && z24) {
                                                                                        gapComposer8.W(-713510518);
                                                                                        CoreTextFieldKt.d(textFieldSelectionManager5, gapComposer8, 0);
                                                                                        gapComposer8.p(false);
                                                                                    } else {
                                                                                        gapComposer8.W(-713433638);
                                                                                        gapComposer8.p(false);
                                                                                    }
                                                                                } else {
                                                                                    gapComposer8.Q();
                                                                                }
                                                                                return Unit.a;
                                                                            }
                                                                        }, gapComposer7), gapComposer7, 48);
                                                                    } else {
                                                                        gapComposer7.Q();
                                                                    }
                                                                    return Unit.a;
                                                                }
                                                            }, gapComposer6), gapComposer6, 6);
                                                        } else {
                                                            gapComposer6.Q();
                                                        }
                                                        return Unit.a;
                                                    }
                                                }, gapComposer), gapComposer, 384);
                                            }
                                        } else {
                                            legacyTextFieldState2 = legacyTextFieldState;
                                        }
                                        z9 = true;
                                        z10 = f3 | z9;
                                        Object K182 = gapComposer3.K();
                                        if (z10) {
                                        }
                                        focusRequester4 = focusRequester3;
                                        coroutineScope3 = coroutineScope4;
                                        modifier2 = a4;
                                        companion = companion2;
                                        legacyTextFieldState3 = legacyTextFieldState2;
                                        coreTextFieldKt$CoreTextField$5$1 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState3, k, textInputService, textFieldSelectionManager2, imeOptions2, null);
                                        mutableState = k;
                                        textInputService2 = textInputService;
                                        gapComposer3.g0(coreTextFieldKt$CoreTextField$5$1);
                                        EffectsKt.e(gapComposer3, Unit.a, (Function2) coreTextFieldKt$CoreTextField$5$1);
                                        Modifier f42 = SelectionGesturesKt.f(new t6(legacyTextFieldState3, 4));
                                        final OffsetMapping offsetMapping42 = offsetMapping;
                                        FocusRequester focusRequester62 = focusRequester4;
                                        final pb pbVar2 = new pb(legacyTextFieldState3, focusRequester62, z8, textFieldSelectionManager2, offsetMapping42);
                                        Modifier l22 = (z2 ? ComposedModifierKt.a(f42, new Function3() { // from class: androidx.compose.foundation.text.k
                                            @Override // kotlin.jvm.functions.Function3
                                            public final Object f(Object obj4, Object obj5, Object obj6) {
                                                ((Integer) obj6).getClass();
                                                GapComposer gapComposer52 = (GapComposer) ((Composer) obj5);
                                                gapComposer52.W(-102778667);
                                                Object K19 = gapComposer52.K();
                                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                                if (K19 == composer$Companion$Empty$1) {
                                                    K19 = EffectsKt.h(gapComposer52);
                                                    gapComposer52.g0(K19);
                                                }
                                                final CoroutineScope coroutineScope52 = (CoroutineScope) K19;
                                                Object K20 = gapComposer52.K();
                                                if (K20 == composer$Companion$Empty$1) {
                                                    K20 = SnapshotStateKt.g(null);
                                                    gapComposer52.g0(K20);
                                                }
                                                final MutableState mutableState2 = (MutableState) K20;
                                                final MutableState k2 = SnapshotStateKt.k(pb.this, gapComposer52);
                                                final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                                                boolean f5 = gapComposer52.f(mutableInteractionSource3);
                                                Object K21 = gapComposer52.K();
                                                if (f5 || K21 == composer$Companion$Empty$1) {
                                                    K21 = new ec(14, mutableState2, mutableInteractionSource3);
                                                    gapComposer52.g0(K21);
                                                }
                                                EffectsKt.c(mutableInteractionSource3, (Function1) K21, gapComposer52);
                                                boolean h62 = gapComposer52.h(coroutineScope52) | gapComposer52.f(mutableInteractionSource3) | gapComposer52.f(k2);
                                                Object K22 = gapComposer52.K();
                                                if (h62 || K22 == composer$Companion$Empty$1) {
                                                    K22 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1

                                                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                        @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", l = {67}, m = "invokeSuspend", v = 1)
                                                        /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name */
                                                        /* loaded from: classes.dex */
                                                        final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
                                                            public int n;
                                                            public /* synthetic */ PressGestureScope o;
                                                            public /* synthetic */ long p;
                                                            public final /* synthetic */ CoroutineScope q;
                                                            public final /* synthetic */ MutableState r;
                                                            public final /* synthetic */ MutableInteractionSource s;

                                                            /* JADX INFO: Access modifiers changed from: package-private */
                                                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                            @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1", f = "TextFieldPressGestureFilter.kt", l = {60, 64}, m = "invokeSuspend", v = 1)
                                                            /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1, reason: invalid class name and collision with other inner class name */
                                                            /* loaded from: classes.dex */
                                                            public final class C00051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                                public Object n;
                                                                public int o;
                                                                public final /* synthetic */ MutableState p;
                                                                public final /* synthetic */ long q;
                                                                public final /* synthetic */ MutableInteractionSource r;

                                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                public C00051(MutableState mutableState, long j, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                                    super(2, continuation);
                                                                    this.p = mutableState;
                                                                    this.q = j;
                                                                    this.r = mutableInteractionSource;
                                                                }

                                                                @Override // kotlin.jvm.functions.Function2
                                                                public final Object n(Object obj, Object obj2) {
                                                                    return ((C00051) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                                                }

                                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                public final Continuation s(Object obj, Continuation continuation) {
                                                                    return new C00051(this.p, this.q, this.r, continuation);
                                                                }

                                                                /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
                                                                
                                                                    if (r3.a(r1, r7) == r0) goto L23;
                                                                 */
                                                                /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
                                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                /*
                                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                                */
                                                                public final Object v(Object obj) {
                                                                    MutableState mutableState;
                                                                    PressInteraction.Press press;
                                                                    PressInteraction.Press press2;
                                                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                                    int i = this.o;
                                                                    MutableInteractionSource mutableInteractionSource = this.r;
                                                                    MutableState mutableState2 = this.p;
                                                                    if (i != 0) {
                                                                        if (i != 1) {
                                                                            if (i == 2) {
                                                                                press2 = (PressInteraction.Press) this.n;
                                                                                ResultKt.b(obj);
                                                                                press = press2;
                                                                                mutableState2.setValue(press);
                                                                                return Unit.a;
                                                                            }
                                                                            u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                            return null;
                                                                        }
                                                                        mutableState = (MutableState) this.n;
                                                                        ResultKt.b(obj);
                                                                    } else {
                                                                        ResultKt.b(obj);
                                                                        PressInteraction.Press press3 = (PressInteraction.Press) mutableState2.getValue();
                                                                        if (press3 != null) {
                                                                            PressInteraction.Cancel cancel = new PressInteraction.Cancel(press3);
                                                                            if (mutableInteractionSource != null) {
                                                                                this.n = mutableState2;
                                                                                this.o = 1;
                                                                            }
                                                                            mutableState = mutableState2;
                                                                        }
                                                                        press = new PressInteraction.Press(this.q);
                                                                        if (mutableInteractionSource != null) {
                                                                            this.n = press;
                                                                            this.o = 2;
                                                                            if (mutableInteractionSource.a(press, this) != coroutineSingletons) {
                                                                                press2 = press;
                                                                                press = press2;
                                                                            }
                                                                            return coroutineSingletons;
                                                                        }
                                                                        mutableState2.setValue(press);
                                                                        return Unit.a;
                                                                    }
                                                                    mutableState.setValue(null);
                                                                    press = new PressInteraction.Press(this.q);
                                                                    if (mutableInteractionSource != null) {
                                                                    }
                                                                    mutableState2.setValue(press);
                                                                    return Unit.a;
                                                                }
                                                            }

                                                            /* JADX INFO: Access modifiers changed from: package-private */
                                                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                            @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2", f = "TextFieldPressGestureFilter.kt", l = {76}, m = "invokeSuspend", v = 1)
                                                            /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2, reason: invalid class name */
                                                            /* loaded from: classes.dex */
                                                            public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                                public MutableState n;
                                                                public int o;
                                                                public final /* synthetic */ MutableState p;
                                                                public final /* synthetic */ boolean q;
                                                                public final /* synthetic */ MutableInteractionSource r;

                                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                                public AnonymousClass2(MutableState mutableState, boolean z, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                                    super(2, continuation);
                                                                    this.p = mutableState;
                                                                    this.q = z;
                                                                    this.r = mutableInteractionSource;
                                                                }

                                                                @Override // kotlin.jvm.functions.Function2
                                                                public final Object n(Object obj, Object obj2) {
                                                                    return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                                                }

                                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                public final Continuation s(Object obj, Continuation continuation) {
                                                                    return new AnonymousClass2(this.p, this.q, this.r, continuation);
                                                                }

                                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                                public final Object v(Object obj) {
                                                                    MutableState mutableState;
                                                                    Interaction cancel;
                                                                    MutableState mutableState2;
                                                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                                    int i = this.o;
                                                                    if (i != 0) {
                                                                        if (i == 1) {
                                                                            mutableState2 = this.n;
                                                                            ResultKt.b(obj);
                                                                        } else {
                                                                            u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                            return null;
                                                                        }
                                                                    } else {
                                                                        ResultKt.b(obj);
                                                                        mutableState = this.p;
                                                                        PressInteraction.Press press = (PressInteraction.Press) mutableState.getValue();
                                                                        if (press != null) {
                                                                            if (this.q) {
                                                                                cancel = new PressInteraction.Release(press);
                                                                            } else {
                                                                                cancel = new PressInteraction.Cancel(press);
                                                                            }
                                                                            MutableInteractionSource mutableInteractionSource = this.r;
                                                                            if (mutableInteractionSource != null) {
                                                                                this.n = mutableState;
                                                                                this.o = 1;
                                                                                if (mutableInteractionSource.a(cancel, this) == coroutineSingletons) {
                                                                                    return coroutineSingletons;
                                                                                }
                                                                                mutableState2 = mutableState;
                                                                            }
                                                                            mutableState.setValue(null);
                                                                        }
                                                                        return Unit.a;
                                                                    }
                                                                    mutableState = mutableState2;
                                                                    mutableState.setValue(null);
                                                                    return Unit.a;
                                                                }
                                                            }

                                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                            public AnonymousClass1(CoroutineScope coroutineScope, MutableState mutableState, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                                super(3, continuation);
                                                                this.q = coroutineScope;
                                                                this.r = mutableState;
                                                                this.s = mutableInteractionSource;
                                                            }

                                                            @Override // kotlin.jvm.functions.Function3
                                                            public final Object f(Object obj, Object obj2, Object obj3) {
                                                                long j = ((Offset) obj2).a;
                                                                MutableState mutableState = this.r;
                                                                MutableInteractionSource mutableInteractionSource = this.s;
                                                                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, mutableState, mutableInteractionSource, (Continuation) obj3);
                                                                anonymousClass1.o = (PressGestureScope) obj;
                                                                anonymousClass1.p = j;
                                                                return anonymousClass1.v(Unit.a);
                                                            }

                                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                            public final Object v(Object obj) {
                                                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                                int i = this.n;
                                                                CoroutineScope coroutineScope = this.q;
                                                                if (i != 0) {
                                                                    if (i == 1) {
                                                                        ResultKt.b(obj);
                                                                    } else {
                                                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                        return null;
                                                                    }
                                                                } else {
                                                                    ResultKt.b(obj);
                                                                    PressGestureScope pressGestureScope = this.o;
                                                                    BuildersKt.c(coroutineScope, null, null, new C00051(this.r, this.p, this.s, null), 3);
                                                                    this.n = 1;
                                                                    obj = ((PressGestureScopeImpl) pressGestureScope).e(this);
                                                                    if (obj == coroutineSingletons) {
                                                                        return coroutineSingletons;
                                                                    }
                                                                }
                                                                BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.r, ((Boolean) obj).booleanValue(), this.s, null), 3);
                                                                return Unit.a;
                                                            }
                                                        }

                                                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                                            Object d2 = TapGestureDetectorKt.d(pointerInputScope, new AnonymousClass1(CoroutineScope.this, mutableState2, mutableInteractionSource3, null), new i2(k2, 17), continuation);
                                                            if (d2 == CoroutineSingletons.j) {
                                                                return d2;
                                                            }
                                                            return Unit.a;
                                                        }
                                                    };
                                                    gapComposer52.g0(K22);
                                                }
                                                Modifier a52 = SuspendingPointerInputFilterKt.a(Modifier.Companion.b, mutableInteractionSource3, (PointerInputEventHandler) K22);
                                                gapComposer52.p(false);
                                                return a52;
                                            }
                                        }) : f42).l(new SuspendPointerInputElement(textFieldSelectionManager2.z, textFieldSelectionManager2.y, null, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3
                                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                                TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                                                Object c = SelectionGesturesKt.c(pointerInputScope, textFieldSelectionManager3.z, textFieldSelectionManager3.y, continuation);
                                                if (c == CoroutineSingletons.j) {
                                                    return c;
                                                }
                                                return Unit.a;
                                            }
                                        }, 4));
                                        PointerIcon.a.getClass();
                                        Modifier a52 = PointerIconKt.a(l22, PointerIcon_androidKt.b);
                                        final Modifier b32 = DrawModifierKt.b(companion, new p2(legacyTextFieldState3, textFieldValue3, offsetMapping42, 4));
                                        boolean h62 = gapComposer3.h(legacyTextFieldState3) | (i15 == 2048) | gapComposer3.f(windowInfo2) | gapComposer3.h(textFieldSelectionManager2);
                                        int i162 = i10;
                                        h2 = h62 | (i162 == 4) | gapComposer3.h(offsetMapping42);
                                        K6 = gapComposer3.K();
                                        if (h2) {
                                        }
                                        final TextFieldValue textFieldValue42 = textFieldValue3;
                                        textInputService3 = textInputService2;
                                        Function1 function142 = new Function1() { // from class: androidx.compose.foundation.text.d
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object b(Object obj4) {
                                                TextInputSession textInputSession2;
                                                final LayoutCoordinates layoutCoordinates;
                                                LayoutCoordinates layoutCoordinates2;
                                                LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                                                MutableState mutableState2 = legacyTextFieldState6.o;
                                                LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj4;
                                                legacyTextFieldState6.h = layoutCoordinates3;
                                                TextLayoutResultProxy d2 = legacyTextFieldState6.d();
                                                if (d2 != null) {
                                                    d2.b = layoutCoordinates3;
                                                }
                                                if (z2) {
                                                    HandleState a62 = legacyTextFieldState6.a();
                                                    HandleState handleState = HandleState.k;
                                                    TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2;
                                                    TextFieldValue textFieldValue5 = textFieldValue42;
                                                    if (a62 == handleState) {
                                                        if (((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState6.l).getValue()).booleanValue() && ((LazyWindowInfo) windowInfo2).a()) {
                                                            textFieldSelectionManager3.s();
                                                        } else {
                                                            textFieldSelectionManager3.p();
                                                        }
                                                        ((SnapshotMutableStateImpl) legacyTextFieldState6.m).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                                        ((SnapshotMutableStateImpl) legacyTextFieldState6.n).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, false)));
                                                        ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextRange.c(textFieldValue5.b)));
                                                    } else if (legacyTextFieldState6.a() == HandleState.l) {
                                                        ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                                    }
                                                    OffsetMapping offsetMapping52 = offsetMapping42;
                                                    CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue5, offsetMapping52);
                                                    TextLayoutResultProxy d3 = legacyTextFieldState6.d();
                                                    if (d3 != null && (textInputSession2 = legacyTextFieldState6.e) != null && legacyTextFieldState6.b() && (layoutCoordinates = d3.b) != null && layoutCoordinates.o() && (layoutCoordinates2 = d3.c) != null) {
                                                        TextLayoutResult textLayoutResult = d3.a;
                                                        Function1<Matrix, Unit> function15 = new Function1<Matrix, Unit>() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1
                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object b(Object obj5) {
                                                                float[] fArr = ((Matrix) obj5).a;
                                                                LayoutCoordinates layoutCoordinates4 = LayoutCoordinates.this;
                                                                if (layoutCoordinates4.o()) {
                                                                    LayoutCoordinatesKt.c(layoutCoordinates4).I(layoutCoordinates4, fArr);
                                                                }
                                                                return Unit.a;
                                                            }
                                                        };
                                                        Rect a72 = SelectionManagerKt.a(layoutCoordinates);
                                                        Rect l32 = layoutCoordinates.l(layoutCoordinates2, false);
                                                        if (Intrinsics.a((TextInputSession) textInputSession2.a.b.get(), textInputSession2)) {
                                                            textInputSession2.b.g(textFieldValue5, offsetMapping52, textLayoutResult, function15, a72, l32);
                                                        }
                                                    }
                                                }
                                                return Unit.a;
                                            }
                                        };
                                        windowInfo = windowInfo2;
                                        offsetMapping42 = offsetMapping42;
                                        gapComposer3.g0(function142);
                                        K6 = function142;
                                        final Modifier a62 = OnGloballyPositionedModifierKt.a(companion, (Function1) K6);
                                        legacyTextFieldState4 = legacyTextFieldState3;
                                        textFieldSelectionManager = textFieldSelectionManager2;
                                        TextInputService textInputService52 = textInputService3;
                                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier2 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState4, z2, offsetMapping42, textFieldSelectionManager, imeOptions, focusRequester62);
                                        final OffsetMapping offsetMapping52 = offsetMapping42;
                                        if (!z2 && ((LazyWindowInfo) windowInfo).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.B).getValue()).a)) {
                                        }
                                        h3 = gapComposer3.h(textFieldSelectionManager);
                                        K7 = gapComposer3.K();
                                        if (!h3) {
                                        }
                                        K7 = new w6(textFieldSelectionManager, 0);
                                        gapComposer3.g0(K7);
                                        EffectsKt.c(textFieldSelectionManager, (Function1) K7, gapComposer3);
                                        h4 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.h(textInputService52) | (i162 == 4) | ((i9 <= 32 && gapComposer3.f(imeOptions)) || (i11 & 48) == 32);
                                        K8 = gapComposer3.K();
                                        if (h4) {
                                        }
                                        s2 s2Var2 = new s2(legacyTextFieldState4, textInputService52, textFieldValue, imeOptions, 2);
                                        imeOptions3 = imeOptions;
                                        gapComposer3.g0(s2Var2);
                                        K8 = s2Var2;
                                        EffectsKt.c(imeOptions3, (Function1) K8, gapComposer3);
                                        final Function1 t6Var2 = legacyTextFieldState4.v;
                                        if (i == 1) {
                                        }
                                        final int i172 = imeOptions3.e;
                                        final boolean z152 = true;
                                        Modifier a82 = ComposedModifierKt.a(companion, new Function3() { // from class: androidx.compose.foundation.text.j
                                            @Override // kotlin.jvm.functions.Function3
                                            public final Object f(Object obj4, Object obj5, Object obj6) {
                                                ((Integer) obj6).getClass();
                                                GapComposer gapComposer52 = (GapComposer) ((Composer) obj5);
                                                gapComposer52.W(851809892);
                                                Object K19 = gapComposer52.K();
                                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                                if (K19 == composer$Companion$Empty$1) {
                                                    K19 = new Object();
                                                    gapComposer52.g0(K19);
                                                }
                                                TextPreparedSelectionState textPreparedSelectionState = (TextPreparedSelectionState) K19;
                                                Object K20 = gapComposer52.K();
                                                if (K20 == composer$Companion$Empty$1) {
                                                    K20 = new Object();
                                                    gapComposer52.g0(K20);
                                                }
                                                TextFieldKeyInput textFieldKeyInput = new TextFieldKeyInput(LegacyTextFieldState.this, textFieldSelectionManager, textFieldValue, z152, z14, textPreparedSelectionState, offsetMapping52, undoManager, (DeadKeyCombiner) K20, t6Var2, i172);
                                                boolean h7 = gapComposer52.h(textFieldKeyInput);
                                                Object K21 = gapComposer52.K();
                                                if (h7 || K21 == composer$Companion$Empty$1) {
                                                    FunctionReference functionReference = new FunctionReference(1, textFieldKeyInput, TextFieldKeyInput.class, "process", "process-ZmokQxo(Landroid/view/KeyEvent;)Z", 0);
                                                    gapComposer52.g0(functionReference);
                                                    K21 = functionReference;
                                                }
                                                Modifier a92 = KeyInputModifierKt.a(Modifier.Companion.b, (Function1) ((KFunction) K21));
                                                gapComposer52.p(false);
                                                return a92;
                                            }
                                        });
                                        int i182 = imeOptions3.d;
                                        if (i182 == 7) {
                                            boolean booleanValue2 = ((Boolean) mutableState.getValue()).booleanValue();
                                            LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter32 = legacyPlatformTextInputServiceAdapter;
                                            g = gapComposer3.g(z11) | gapComposer3.h(legacyPlatformTextInputServiceAdapter32);
                                            K9 = gapComposer3.K();
                                            if (!g) {
                                            }
                                            K9 = new q6(1, legacyPlatformTextInputServiceAdapter32, z11);
                                            gapComposer3.g0(K9);
                                            Modifier a92 = StylusHandwritingKt.a(booleanValue2, z11, (Function0) K9);
                                            Brush brush2 = (Brush) gapComposer3.j(AutofillHighlightKt.a);
                                            long j62 = ((Color) gapComposer3.j(AutofillHighlightKt.b)).a;
                                            if (Color.c(j62, ColorKt.b(1308617531))) {
                                            }
                                            h5 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.f(solidColor2);
                                            K10 = gapComposer3.K();
                                            if (!h5) {
                                            }
                                            K10 = new defpackage.b(10, legacyTextFieldState4, solidColor2);
                                            gapComposer3.g0(K10);
                                            final FocusManager focusManager32 = focusManager;
                                            Modifier l32 = KeyInputModifierKt.b(KeyInputModifierKt.b(LegacyAdaptingPlatformTextInputModifierNodeKt.a(modifier.l(DrawModifierKt.d(companion, (Function1) K10)), legacyPlatformTextInputServiceAdapter32, legacyTextFieldState4, textFieldSelectionManager).l(a92).l(modifier2), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object b(Object obj4) {
                                                    android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                                    InputDevice device = keyEvent.getDevice();
                                                    boolean z162 = false;
                                                    if (device != null && device.supportsSource(513) && ((!device.isVirtual() || keyEvent.getSource() == 33554433) && KeyEvent_androidKt.b(keyEvent) == 2 && keyEvent.getSource() != 257)) {
                                                        boolean a102 = TextFieldFocusModifier_androidKt.a(19, keyEvent);
                                                        FocusManager focusManager4 = FocusManager.this;
                                                        if (a102) {
                                                            z162 = ((FocusOwnerImpl) focusManager4).h(5, true);
                                                        } else if (TextFieldFocusModifier_androidKt.a(20, keyEvent)) {
                                                            z162 = ((FocusOwnerImpl) focusManager4).h(6, true);
                                                        } else if (TextFieldFocusModifier_androidKt.a(21, keyEvent)) {
                                                            z162 = ((FocusOwnerImpl) focusManager4).h(3, true);
                                                        } else if (TextFieldFocusModifier_androidKt.a(22, keyEvent)) {
                                                            z162 = ((FocusOwnerImpl) focusManager4).h(4, true);
                                                        } else if (TextFieldFocusModifier_androidKt.a(23, keyEvent)) {
                                                            SoftwareKeyboardController softwareKeyboardController2 = legacyTextFieldState4.c;
                                                            if (softwareKeyboardController2 != null) {
                                                                ((DelegatingSoftwareKeyboardController) softwareKeyboardController2).b();
                                                            }
                                                            z162 = true;
                                                        }
                                                    }
                                                    return Boolean.valueOf(z162);
                                                }
                                            }), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object b(Object obj4) {
                                                    boolean z162;
                                                    android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                                    if (LegacyTextFieldState.this.a() == HandleState.k && keyEvent.getKeyCode() == 4) {
                                                        z162 = true;
                                                        if (KeyEvent_androidKt.b(keyEvent) == 1) {
                                                            textFieldSelectionManager.g(null);
                                                            return Boolean.valueOf(z162);
                                                        }
                                                    }
                                                    z162 = false;
                                                    return Boolean.valueOf(z162);
                                                }
                                            }).l(a82);
                                            final TextFieldScrollerPosition textFieldScrollerPosition42 = textFieldScrollerPosition2;
                                            final CoroutineScope coroutineScope52 = coroutineScope3;
                                            Modifier a102 = TextContextMenuModifier_androidKt.a(OnGloballyPositionedModifierKt.a(ComposedModifierKt.a(l32, new Function3() { // from class: dh
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object f(Object obj4, Object obj5, Object obj6) {
                                                    boolean z162;
                                                    boolean z17;
                                                    TextFieldScrollerPosition textFieldScrollerPosition5 = TextFieldScrollerPosition.this;
                                                    MutableState mutableState2 = textFieldScrollerPosition5.f;
                                                    ((Integer) obj6).getClass();
                                                    GapComposer gapComposer52 = (GapComposer) ((Composer) obj5);
                                                    gapComposer52.W(-2137546592);
                                                    boolean z18 = true;
                                                    if (gapComposer52.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                                                        z162 = true;
                                                    } else {
                                                        z162 = false;
                                                    }
                                                    if (((Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue()) != Orientation.j && z162) {
                                                        z17 = false;
                                                    } else {
                                                        z17 = true;
                                                    }
                                                    boolean f5 = gapComposer52.f(textFieldScrollerPosition5);
                                                    Object K19 = gapComposer52.K();
                                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                                    if (f5 || K19 == composer$Companion$Empty$1) {
                                                        K19 = new ma(29, textFieldScrollerPosition5);
                                                        gapComposer52.g0(K19);
                                                    }
                                                    ScrollableState b4 = ScrollableStateKt.b((Function1) K19, gapComposer52);
                                                    boolean f6 = gapComposer52.f(b4) | gapComposer52.f(textFieldScrollerPosition5);
                                                    Object K20 = gapComposer52.K();
                                                    if (f6 || K20 == composer$Companion$Empty$1) {
                                                        K20 = new ScrollableState(textFieldScrollerPosition5) { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1
                                                            public final State b;
                                                            public final State c;

                                                            {
                                                                final int i19 = 0;
                                                                this.b = SnapshotStateKt.e(new Function0() { // from class: eh
                                                                    @Override // kotlin.jvm.functions.Function0
                                                                    public final Object a() {
                                                                        int i202 = i19;
                                                                        boolean z19 = false;
                                                                        TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                        switch (i202) {
                                                                            case 0:
                                                                                if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                                    z19 = true;
                                                                                }
                                                                                return Boolean.valueOf(z19);
                                                                            default:
                                                                                if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                                    z19 = true;
                                                                                }
                                                                                return Boolean.valueOf(z19);
                                                                        }
                                                                    }
                                                                });
                                                                final int i20 = 1;
                                                                this.c = SnapshotStateKt.e(new Function0() { // from class: eh
                                                                    @Override // kotlin.jvm.functions.Function0
                                                                    public final Object a() {
                                                                        int i202 = i20;
                                                                        boolean z19 = false;
                                                                        TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                        switch (i202) {
                                                                            case 0:
                                                                                if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                                    z19 = true;
                                                                                }
                                                                                return Boolean.valueOf(z19);
                                                                            default:
                                                                                if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                                    z19 = true;
                                                                                }
                                                                                return Boolean.valueOf(z19);
                                                                        }
                                                                    }
                                                                });
                                                            }

                                                            @Override // androidx.compose.foundation.gestures.ScrollableState
                                                            public final boolean a() {
                                                                return ScrollableState.this.a();
                                                            }

                                                            @Override // androidx.compose.foundation.gestures.ScrollableState
                                                            public final boolean b() {
                                                                return ((Boolean) this.c.getValue()).booleanValue();
                                                            }

                                                            @Override // androidx.compose.foundation.gestures.ScrollableState
                                                            public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
                                                                return ScrollableState.this.c(mutatePriority, function2, continuationImpl);
                                                            }

                                                            @Override // androidx.compose.foundation.gestures.ScrollableState
                                                            public final boolean d() {
                                                                return ((Boolean) this.b.getValue()).booleanValue();
                                                            }

                                                            @Override // androidx.compose.foundation.gestures.ScrollableState
                                                            public final float e(float f7) {
                                                                return ScrollableState.this.e(f7);
                                                            }
                                                        };
                                                        gapComposer52.g0(K20);
                                                    }
                                                    TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 = (TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1) K20;
                                                    Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue();
                                                    if (!z2 || ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition5.b).j() == 0.0f) {
                                                        z18 = false;
                                                    }
                                                    Modifier b5 = ScrollableKt.b(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation2, z18, z17, mutableInteractionSource2);
                                                    gapComposer52.p(false);
                                                    return b5;
                                                }
                                            }).l(a52).l(coreTextFieldSemanticsModifier2), new t6(legacyTextFieldState4, 0)), new zc(8, textFieldSelectionManager, coroutineScope52));
                                            if (z2) {
                                            }
                                            if (z12) {
                                            }
                                            GapComposer gapComposer52 = gapComposer3;
                                            final Modifier companion32 = a7;
                                            final BringIntoViewRequester bringIntoViewRequester32 = bringIntoViewRequester2;
                                            final WindowInfo windowInfo32 = windowInfo;
                                            final Modifier modifier42 = modifier3;
                                            final Density density42 = density2;
                                            final boolean z162 = z12;
                                            gapComposer = gapComposer52;
                                            b(a102, textFieldSelectionManager, ComposableLambdaKt.b(-814563849, new Function2() { // from class: u6
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object n(Object obj4, Object obj5) {
                                                    boolean z17;
                                                    Composer composer2 = (Composer) obj4;
                                                    int intValue = ((Integer) obj5).intValue();
                                                    if ((intValue & 3) != 2) {
                                                        z17 = true;
                                                    } else {
                                                        z17 = false;
                                                    }
                                                    GapComposer gapComposer6 = (GapComposer) composer2;
                                                    if (gapComposer6.N(intValue & 1, z17)) {
                                                        final TextStyle textStyle3 = textStyle;
                                                        final LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState4;
                                                        final int i19 = i2;
                                                        final int i20 = i;
                                                        final boolean z18 = z;
                                                        final TextFieldScrollerPosition textFieldScrollerPosition5 = textFieldScrollerPosition42;
                                                        final TextFieldValue textFieldValue5 = textFieldValue;
                                                        final VisualTransformation visualTransformation2 = visualTransformation;
                                                        final Modifier modifier5 = companion32;
                                                        final Modifier modifier6 = b32;
                                                        final Modifier modifier7 = a62;
                                                        final Modifier modifier8 = modifier42;
                                                        final BringIntoViewRequester bringIntoViewRequester4 = bringIntoViewRequester32;
                                                        final TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager;
                                                        final boolean z19 = z162;
                                                        final WindowInfo windowInfo4 = windowInfo32;
                                                        final CoroutineScope coroutineScope6 = coroutineScope52;
                                                        final Function1 function15 = function12;
                                                        final OffsetMapping offsetMapping6 = offsetMapping52;
                                                        final Density density5 = density42;
                                                        ComposableLambdaImpl.this.f(ComposableLambdaKt.b(-44346382, new Function2() { // from class: androidx.compose.foundation.text.b
                                                            @Override // kotlin.jvm.functions.Function2
                                                            public final Object n(Object obj6, Object obj7) {
                                                                boolean z20;
                                                                float f5;
                                                                Modifier verticalScrollLayoutModifier;
                                                                Composer composer3 = (Composer) obj6;
                                                                int intValue2 = ((Integer) obj7).intValue();
                                                                if ((intValue2 & 3) != 2) {
                                                                    z20 = true;
                                                                } else {
                                                                    z20 = false;
                                                                }
                                                                GapComposer gapComposer7 = (GapComposer) composer3;
                                                                if (gapComposer7.N(intValue2 & 1, z20)) {
                                                                    final LegacyTextFieldState legacyTextFieldState7 = legacyTextFieldState6;
                                                                    float f6 = ((Dp) ((SnapshotMutableStateImpl) legacyTextFieldState7.g).getValue()).j;
                                                                    if (Dp.b(f6, 0.0f)) {
                                                                        f5 = Float.NaN;
                                                                    } else {
                                                                        f5 = f6;
                                                                    }
                                                                    Modifier f7 = SizeKt.f(Modifier.Companion.b, f6, f5);
                                                                    int i21 = i19;
                                                                    final int i22 = i20;
                                                                    HeightInLinesModifierKt.b(i21, i22);
                                                                    TextStyle textStyle4 = TextStyle.this;
                                                                    if ((i21 != 1 || i22 != Integer.MAX_VALUE) && z18) {
                                                                        f7 = f7.l(new HeightInLinesElement(textStyle4, i21, i22));
                                                                    }
                                                                    boolean h7 = gapComposer7.h(legacyTextFieldState7);
                                                                    Object K19 = gapComposer7.K();
                                                                    if (h7 || K19 == Composer.Companion.a) {
                                                                        K19 = new r1(11, legacyTextFieldState7);
                                                                        gapComposer7.g0(K19);
                                                                    }
                                                                    Function0 function0 = (Function0) K19;
                                                                    TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                    Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition6.f).getValue();
                                                                    final TextFieldValue textFieldValue6 = textFieldValue5;
                                                                    long j7 = textFieldValue6.b;
                                                                    int i23 = TextRange.c;
                                                                    int i24 = (int) (j7 >> 32);
                                                                    long j8 = textFieldScrollerPosition6.e;
                                                                    if (i24 == ((int) (j8 >> 32)) && (i24 = (int) (j7 & 4294967295L)) == ((int) (j8 & 4294967295L))) {
                                                                        i24 = TextRange.f(j7);
                                                                    }
                                                                    textFieldScrollerPosition6.e = textFieldValue6.b;
                                                                    TransformedText a11 = ValidatingOffsetMappingKt.a(visualTransformation2, textFieldValue6.a);
                                                                    int ordinal = orientation2.ordinal();
                                                                    if (ordinal != 0) {
                                                                        if (ordinal == 1) {
                                                                            verticalScrollLayoutModifier = new HorizontalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                                        } else {
                                                                            k8.e();
                                                                            return null;
                                                                        }
                                                                    } else {
                                                                        verticalScrollLayoutModifier = new VerticalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                                    }
                                                                    Modifier l4 = ClipKt.b(OverscrollKt.a(f7)).l(verticalScrollLayoutModifier).l(modifier5).l(modifier6).l(new TextFieldSizeElement(textStyle4)).l(modifier7).l(modifier8);
                                                                    final BringIntoViewRequester bringIntoViewRequester5 = bringIntoViewRequester4;
                                                                    Modifier b4 = BringIntoViewRequesterKt.b(l4, bringIntoViewRequester5);
                                                                    final TextFieldSelectionManager textFieldSelectionManager4 = textFieldSelectionManager3;
                                                                    final boolean z21 = z19;
                                                                    final WindowInfo windowInfo5 = windowInfo4;
                                                                    final CoroutineScope coroutineScope7 = coroutineScope6;
                                                                    final Function1 function16 = function15;
                                                                    final OffsetMapping offsetMapping7 = offsetMapping6;
                                                                    final Density density6 = density5;
                                                                    SimpleLayoutKt.a(b4, ComposableLambdaKt.b(1412697320, new Function2() { // from class: s6
                                                                        /* JADX WARN: Code restructure failed: missing block: B:15:0x009e, code lost:
                                                                        
                                                                            if (r0 != false) goto L21;
                                                                         */
                                                                        @Override // kotlin.jvm.functions.Function2
                                                                        /*
                                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                                        */
                                                                        public final Object n(Object obj8, Object obj9) {
                                                                            boolean z22;
                                                                            Composer composer4 = (Composer) obj8;
                                                                            int intValue3 = ((Integer) obj9).intValue();
                                                                            boolean z23 = true;
                                                                            if ((intValue3 & 3) != 2) {
                                                                                z22 = true;
                                                                            } else {
                                                                                z22 = false;
                                                                            }
                                                                            GapComposer gapComposer8 = (GapComposer) composer4;
                                                                            if (gapComposer8.N(intValue3 & 1, z22)) {
                                                                                final LegacyTextFieldState legacyTextFieldState8 = legacyTextFieldState7;
                                                                                final TextFieldSelectionManager textFieldSelectionManager5 = TextFieldSelectionManager.this;
                                                                                final WindowInfo windowInfo6 = windowInfo5;
                                                                                final CoroutineScope coroutineScope8 = coroutineScope7;
                                                                                final Function1 function17 = function16;
                                                                                final TextFieldValue textFieldValue7 = textFieldValue6;
                                                                                final OffsetMapping offsetMapping8 = offsetMapping7;
                                                                                final Density density7 = density6;
                                                                                final BringIntoViewRequester bringIntoViewRequester6 = bringIntoViewRequester5;
                                                                                final int i25 = i22;
                                                                                MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2
                                                                                    /* JADX WARN: Removed duplicated region for block: B:38:0x01c8  */
                                                                                    /* JADX WARN: Removed duplicated region for block: B:64:0x0258  */
                                                                                    /* JADX WARN: Removed duplicated region for block: B:67:0x0262  */
                                                                                    /* JADX WARN: Removed duplicated region for block: B:69:0x0251  */
                                                                                    @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                                    /*
                                                                                        Code decompiled incorrectly, please refer to instructions dump.
                                                                                    */
                                                                                    public final MeasureResult a(MeasureScope measureScope, List list, long j9) {
                                                                                        Function1 function18;
                                                                                        TextLayoutResult textLayoutResult;
                                                                                        long j10;
                                                                                        TextLayoutResult textLayoutResult2;
                                                                                        LayoutDirection layoutDirection;
                                                                                        TextLayoutResult textLayoutResult3;
                                                                                        TextLayoutResult textLayoutResult4;
                                                                                        CoreTextFieldKt$CoreTextField$8$1$1$2 coreTextFieldKt$CoreTextField$8$1$1$2;
                                                                                        int i26;
                                                                                        LayoutCoordinates layoutCoordinates;
                                                                                        AnnotatedString annotatedString6;
                                                                                        TextLayoutInput textLayoutInput;
                                                                                        int h8;
                                                                                        int i27;
                                                                                        LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                                        Snapshot a12 = Snapshot.Companion.a();
                                                                                        if (a12 != null) {
                                                                                            function18 = a12.e();
                                                                                        } else {
                                                                                            function18 = null;
                                                                                        }
                                                                                        Snapshot b5 = Snapshot.Companion.b(a12);
                                                                                        try {
                                                                                            TextLayoutResultProxy d2 = legacyTextFieldState9.d();
                                                                                            if (d2 != null) {
                                                                                                textLayoutResult = d2.a;
                                                                                            } else {
                                                                                                textLayoutResult = null;
                                                                                            }
                                                                                            TextDelegate textDelegate2 = legacyTextFieldState9.a;
                                                                                            LayoutDirection layoutDirection2 = measureScope.getLayoutDirection();
                                                                                            int i28 = textDelegate2.f;
                                                                                            boolean z24 = textDelegate2.e;
                                                                                            int i29 = textDelegate2.c;
                                                                                            if (textLayoutResult != null) {
                                                                                                MultiParagraph multiParagraph = textLayoutResult.b;
                                                                                                TextLayoutInput textLayoutInput2 = textLayoutResult.a;
                                                                                                AnnotatedString annotatedString7 = textDelegate2.a;
                                                                                                TextStyle textStyle5 = textDelegate2.b;
                                                                                                List list2 = textDelegate2.i;
                                                                                                Density density8 = textDelegate2.g;
                                                                                                FontFamily.Resolver resolver3 = textDelegate2.h;
                                                                                                TextLayoutResult textLayoutResult5 = textLayoutResult;
                                                                                                if (multiParagraph.a.a()) {
                                                                                                    j10 = j9;
                                                                                                    layoutDirection = layoutDirection2;
                                                                                                } else {
                                                                                                    AnnotatedString annotatedString8 = textLayoutInput2.a;
                                                                                                    long j11 = textLayoutInput2.j;
                                                                                                    if (Intrinsics.a(annotatedString8, annotatedString7) && textLayoutInput2.b.c(textStyle5) && Intrinsics.a(textLayoutInput2.c, list2) && textLayoutInput2.d == i29 && textLayoutInput2.e == z24 && textLayoutInput2.f == i28 && Intrinsics.a(textLayoutInput2.g, density8)) {
                                                                                                        layoutDirection = layoutDirection2;
                                                                                                        if (textLayoutInput2.h == layoutDirection && Intrinsics.a(textLayoutInput2.i, resolver3) && Constraints.j(j9) == Constraints.j(j11) && ((!z24 && i28 != 2) || (Constraints.h(j9) == Constraints.h(j11) && Constraints.g(j9) == Constraints.g(j11)))) {
                                                                                                            textLayoutResult2 = textLayoutResult5;
                                                                                                            textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput2.a, textDelegate2.b, textLayoutInput2.c, textLayoutInput2.d, textLayoutInput2.e, textLayoutInput2.f, textLayoutInput2.g, textLayoutInput2.h, textLayoutInput2.i, j9), multiParagraph, ConstraintsKt.d(j9, (TextDelegateKt.a(multiParagraph.e) & 4294967295L) | (TextDelegateKt.a(multiParagraph.d) << 32)));
                                                                                                            long j122 = textLayoutResult3.c;
                                                                                                            Integer valueOf3 = Integer.valueOf((int) (j122 >> 32));
                                                                                                            Integer valueOf22 = Integer.valueOf((int) (j122 & 4294967295L));
                                                                                                            int intValue42 = valueOf3.intValue();
                                                                                                            int intValue52 = valueOf22.intValue();
                                                                                                            MultiParagraph multiParagraph22 = textLayoutResult3.b;
                                                                                                            multiParagraph22.a.a();
                                                                                                            textLayoutResult4 = textLayoutResult2;
                                                                                                            if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                                                if (d2 != null) {
                                                                                                                    layoutCoordinates = d2.c;
                                                                                                                } else {
                                                                                                                    layoutCoordinates = null;
                                                                                                                }
                                                                                                                ((SnapshotMutableStateImpl) legacyTextFieldState9.i).setValue(new TextLayoutResultProxy(textLayoutResult3, layoutCoordinates));
                                                                                                                legacyTextFieldState9.p = false;
                                                                                                                coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                                                TextFieldSelectionManager textFieldSelectionManager6 = textFieldSelectionManager5;
                                                                                                                if (textFieldSelectionManager6.l() && textFieldSelectionManager6.k() && ((LazyWindowInfo) windowInfo6).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.B).getValue()).a) && legacyTextFieldState9.b()) {
                                                                                                                    if (textLayoutResult4 != null && (textLayoutInput = textLayoutResult4.a) != null) {
                                                                                                                        annotatedString6 = textLayoutInput.a;
                                                                                                                    } else {
                                                                                                                        annotatedString6 = null;
                                                                                                                    }
                                                                                                                    if (!Intrinsics.a(annotatedString6, textLayoutResult3.a.a)) {
                                                                                                                        BuildersKt.c(coroutineScope8, null, null, new CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1(textFieldSelectionManager6, bringIntoViewRequester6, null), 3);
                                                                                                                    }
                                                                                                                }
                                                                                                                function17.b(textLayoutResult3);
                                                                                                                CoreTextFieldKt.f(legacyTextFieldState9, textFieldValue7, offsetMapping8);
                                                                                                            } else {
                                                                                                                coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                                            }
                                                                                                            if (i25 != 1) {
                                                                                                                i26 = TextDelegateKt.a(multiParagraph22.b(0));
                                                                                                            } else {
                                                                                                                i26 = 0;
                                                                                                            }
                                                                                                            ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                                            return measureScope.B(intValue42, intValue52, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                                        }
                                                                                                        j10 = j9;
                                                                                                    } else {
                                                                                                        j10 = j9;
                                                                                                        textLayoutResult2 = textLayoutResult5;
                                                                                                        layoutDirection = layoutDirection2;
                                                                                                    }
                                                                                                }
                                                                                                textLayoutResult2 = textLayoutResult5;
                                                                                            } else {
                                                                                                j10 = j9;
                                                                                                textLayoutResult2 = textLayoutResult;
                                                                                                layoutDirection = layoutDirection2;
                                                                                            }
                                                                                            textDelegate2.a(layoutDirection);
                                                                                            int j13 = Constraints.j(j10);
                                                                                            if ((z24 || i28 == 2) && Constraints.d(j10)) {
                                                                                                h8 = Constraints.h(j10);
                                                                                            } else {
                                                                                                h8 = Integer.MAX_VALUE;
                                                                                            }
                                                                                            if (!z24 && i28 == 2) {
                                                                                                i27 = 1;
                                                                                            } else {
                                                                                                i27 = i29;
                                                                                            }
                                                                                            if (j13 != h8) {
                                                                                                MultiParagraphIntrinsics multiParagraphIntrinsics = textDelegate2.j;
                                                                                                if (multiParagraphIntrinsics != null) {
                                                                                                    h8 = RangesKt.d(TextDelegateKt.a(multiParagraphIntrinsics.c()), j13, h8);
                                                                                                } else {
                                                                                                    u2.l("layoutIntrinsics must be called first");
                                                                                                    return null;
                                                                                                }
                                                                                            }
                                                                                            MultiParagraphIntrinsics multiParagraphIntrinsics2 = textDelegate2.j;
                                                                                            if (multiParagraphIntrinsics2 != null) {
                                                                                                textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textDelegate2.a, textDelegate2.b, textDelegate2.i, textDelegate2.c, textDelegate2.e, textDelegate2.f, textDelegate2.g, layoutDirection, textDelegate2.h, j10), new MultiParagraph(multiParagraphIntrinsics2, Constraints.Companion.b(0, h8, 0, Constraints.g(j10)), i27, textDelegate2.f), ConstraintsKt.d(j10, (TextDelegateKt.a(r25.d) << 32) | (TextDelegateKt.a(r25.e) & 4294967295L)));
                                                                                                long j1222 = textLayoutResult3.c;
                                                                                                Integer valueOf32 = Integer.valueOf((int) (j1222 >> 32));
                                                                                                Integer valueOf222 = Integer.valueOf((int) (j1222 & 4294967295L));
                                                                                                int intValue422 = valueOf32.intValue();
                                                                                                int intValue522 = valueOf222.intValue();
                                                                                                MultiParagraph multiParagraph222 = textLayoutResult3.b;
                                                                                                multiParagraph222.a.a();
                                                                                                textLayoutResult4 = textLayoutResult2;
                                                                                                if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                                }
                                                                                                if (i25 != 1) {
                                                                                                }
                                                                                                ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                                return measureScope.B(intValue422, intValue522, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                            }
                                                                                            u2.l("layoutIntrinsics must be called first");
                                                                                            return null;
                                                                                        } finally {
                                                                                            Snapshot.Companion.e(a12, b5, function18);
                                                                                        }
                                                                                    }

                                                                                    @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                                    public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                                                                                        LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                                        legacyTextFieldState9.a.a(intrinsicMeasureScope.getLayoutDirection());
                                                                                        MultiParagraphIntrinsics multiParagraphIntrinsics = legacyTextFieldState9.a.j;
                                                                                        if (multiParagraphIntrinsics != null) {
                                                                                            return TextDelegateKt.a(multiParagraphIntrinsics.c());
                                                                                        }
                                                                                        u2.l("layoutIntrinsics must be called first");
                                                                                        return 0;
                                                                                    }
                                                                                };
                                                                                int hashCode = Long.hashCode(gapComposer8.T);
                                                                                PersistentCompositionLocalMap l5 = gapComposer8.l();
                                                                                Modifier c = ComposedModifierKt.c(gapComposer8, Modifier.Companion.b);
                                                                                ComposeUiNode.b.getClass();
                                                                                gapComposer8.Z();
                                                                                if (gapComposer8.S) {
                                                                                    gapComposer8.k(LayoutNode.b0);
                                                                                } else {
                                                                                    gapComposer8.j0();
                                                                                }
                                                                                Updater.c(gapComposer8, measurePolicy, ComposeUiNode.Companion.d);
                                                                                Updater.c(gapComposer8, l5, ComposeUiNode.Companion.c);
                                                                                Updater.c(gapComposer8, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                                                                Updater.b(gapComposer8);
                                                                                Updater.c(gapComposer8, c, ComposeUiNode.Companion.b);
                                                                                gapComposer8.p(true);
                                                                                HandleState a12 = legacyTextFieldState8.a();
                                                                                HandleState handleState = HandleState.j;
                                                                                boolean z24 = z21;
                                                                                if (a12 != handleState && legacyTextFieldState8.c() != null) {
                                                                                    LayoutCoordinates c2 = legacyTextFieldState8.c();
                                                                                    c2.getClass();
                                                                                    if (c2.o()) {
                                                                                    }
                                                                                }
                                                                                z23 = false;
                                                                                CoreTextFieldKt.c(textFieldSelectionManager5, z23, gapComposer8, 0);
                                                                                if (legacyTextFieldState8.a() == HandleState.l && z24) {
                                                                                    gapComposer8.W(-713510518);
                                                                                    CoreTextFieldKt.d(textFieldSelectionManager5, gapComposer8, 0);
                                                                                    gapComposer8.p(false);
                                                                                } else {
                                                                                    gapComposer8.W(-713433638);
                                                                                    gapComposer8.p(false);
                                                                                }
                                                                            } else {
                                                                                gapComposer8.Q();
                                                                            }
                                                                            return Unit.a;
                                                                        }
                                                                    }, gapComposer7), gapComposer7, 48);
                                                                } else {
                                                                    gapComposer7.Q();
                                                                }
                                                                return Unit.a;
                                                            }
                                                        }, gapComposer6), gapComposer6, 6);
                                                    } else {
                                                        gapComposer6.Q();
                                                    }
                                                    return Unit.a;
                                                }
                                            }, gapComposer), gapComposer, 384);
                                        }
                                        boolean booleanValue22 = ((Boolean) mutableState.getValue()).booleanValue();
                                        LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter322 = legacyPlatformTextInputServiceAdapter;
                                        g = gapComposer3.g(z11) | gapComposer3.h(legacyPlatformTextInputServiceAdapter322);
                                        K9 = gapComposer3.K();
                                        if (!g) {
                                        }
                                        K9 = new q6(1, legacyPlatformTextInputServiceAdapter322, z11);
                                        gapComposer3.g0(K9);
                                        Modifier a922 = StylusHandwritingKt.a(booleanValue22, z11, (Function0) K9);
                                        Brush brush22 = (Brush) gapComposer3.j(AutofillHighlightKt.a);
                                        long j622 = ((Color) gapComposer3.j(AutofillHighlightKt.b)).a;
                                        if (Color.c(j622, ColorKt.b(1308617531))) {
                                        }
                                        h5 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.f(solidColor2);
                                        K10 = gapComposer3.K();
                                        if (!h5) {
                                        }
                                        K10 = new defpackage.b(10, legacyTextFieldState4, solidColor2);
                                        gapComposer3.g0(K10);
                                        final FocusManager focusManager322 = focusManager;
                                        Modifier l322 = KeyInputModifierKt.b(KeyInputModifierKt.b(LegacyAdaptingPlatformTextInputModifierNodeKt.a(modifier.l(DrawModifierKt.d(companion, (Function1) K10)), legacyPlatformTextInputServiceAdapter322, legacyTextFieldState4, textFieldSelectionManager).l(a922).l(modifier2), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object b(Object obj4) {
                                                android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                                InputDevice device = keyEvent.getDevice();
                                                boolean z1622 = false;
                                                if (device != null && device.supportsSource(513) && ((!device.isVirtual() || keyEvent.getSource() == 33554433) && KeyEvent_androidKt.b(keyEvent) == 2 && keyEvent.getSource() != 257)) {
                                                    boolean a1022 = TextFieldFocusModifier_androidKt.a(19, keyEvent);
                                                    FocusManager focusManager4 = FocusManager.this;
                                                    if (a1022) {
                                                        z1622 = ((FocusOwnerImpl) focusManager4).h(5, true);
                                                    } else if (TextFieldFocusModifier_androidKt.a(20, keyEvent)) {
                                                        z1622 = ((FocusOwnerImpl) focusManager4).h(6, true);
                                                    } else if (TextFieldFocusModifier_androidKt.a(21, keyEvent)) {
                                                        z1622 = ((FocusOwnerImpl) focusManager4).h(3, true);
                                                    } else if (TextFieldFocusModifier_androidKt.a(22, keyEvent)) {
                                                        z1622 = ((FocusOwnerImpl) focusManager4).h(4, true);
                                                    } else if (TextFieldFocusModifier_androidKt.a(23, keyEvent)) {
                                                        SoftwareKeyboardController softwareKeyboardController2 = legacyTextFieldState4.c;
                                                        if (softwareKeyboardController2 != null) {
                                                            ((DelegatingSoftwareKeyboardController) softwareKeyboardController2).b();
                                                        }
                                                        z1622 = true;
                                                    }
                                                }
                                                return Boolean.valueOf(z1622);
                                            }
                                        }), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object b(Object obj4) {
                                                boolean z1622;
                                                android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                                if (LegacyTextFieldState.this.a() == HandleState.k && keyEvent.getKeyCode() == 4) {
                                                    z1622 = true;
                                                    if (KeyEvent_androidKt.b(keyEvent) == 1) {
                                                        textFieldSelectionManager.g(null);
                                                        return Boolean.valueOf(z1622);
                                                    }
                                                }
                                                z1622 = false;
                                                return Boolean.valueOf(z1622);
                                            }
                                        }).l(a82);
                                        final TextFieldScrollerPosition textFieldScrollerPosition422 = textFieldScrollerPosition2;
                                        final CoroutineScope coroutineScope522 = coroutineScope3;
                                        Modifier a1022 = TextContextMenuModifier_androidKt.a(OnGloballyPositionedModifierKt.a(ComposedModifierKt.a(l322, new Function3() { // from class: dh
                                            @Override // kotlin.jvm.functions.Function3
                                            public final Object f(Object obj4, Object obj5, Object obj6) {
                                                boolean z1622;
                                                boolean z17;
                                                TextFieldScrollerPosition textFieldScrollerPosition5 = TextFieldScrollerPosition.this;
                                                MutableState mutableState2 = textFieldScrollerPosition5.f;
                                                ((Integer) obj6).getClass();
                                                GapComposer gapComposer522 = (GapComposer) ((Composer) obj5);
                                                gapComposer522.W(-2137546592);
                                                boolean z18 = true;
                                                if (gapComposer522.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                                                    z1622 = true;
                                                } else {
                                                    z1622 = false;
                                                }
                                                if (((Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue()) != Orientation.j && z1622) {
                                                    z17 = false;
                                                } else {
                                                    z17 = true;
                                                }
                                                boolean f5 = gapComposer522.f(textFieldScrollerPosition5);
                                                Object K19 = gapComposer522.K();
                                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                                if (f5 || K19 == composer$Companion$Empty$1) {
                                                    K19 = new ma(29, textFieldScrollerPosition5);
                                                    gapComposer522.g0(K19);
                                                }
                                                ScrollableState b4 = ScrollableStateKt.b((Function1) K19, gapComposer522);
                                                boolean f6 = gapComposer522.f(b4) | gapComposer522.f(textFieldScrollerPosition5);
                                                Object K20 = gapComposer522.K();
                                                if (f6 || K20 == composer$Companion$Empty$1) {
                                                    K20 = new ScrollableState(textFieldScrollerPosition5) { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1
                                                        public final State b;
                                                        public final State c;

                                                        {
                                                            final int i19 = 0;
                                                            this.b = SnapshotStateKt.e(new Function0() { // from class: eh
                                                                @Override // kotlin.jvm.functions.Function0
                                                                public final Object a() {
                                                                    int i202 = i19;
                                                                    boolean z19 = false;
                                                                    TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                    switch (i202) {
                                                                        case 0:
                                                                            if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                                z19 = true;
                                                                            }
                                                                            return Boolean.valueOf(z19);
                                                                        default:
                                                                            if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                                z19 = true;
                                                                            }
                                                                            return Boolean.valueOf(z19);
                                                                    }
                                                                }
                                                            });
                                                            final int i20 = 1;
                                                            this.c = SnapshotStateKt.e(new Function0() { // from class: eh
                                                                @Override // kotlin.jvm.functions.Function0
                                                                public final Object a() {
                                                                    int i202 = i20;
                                                                    boolean z19 = false;
                                                                    TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                    switch (i202) {
                                                                        case 0:
                                                                            if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                                z19 = true;
                                                                            }
                                                                            return Boolean.valueOf(z19);
                                                                        default:
                                                                            if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                                z19 = true;
                                                                            }
                                                                            return Boolean.valueOf(z19);
                                                                    }
                                                                }
                                                            });
                                                        }

                                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                                        public final boolean a() {
                                                            return ScrollableState.this.a();
                                                        }

                                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                                        public final boolean b() {
                                                            return ((Boolean) this.c.getValue()).booleanValue();
                                                        }

                                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                                        public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
                                                            return ScrollableState.this.c(mutatePriority, function2, continuationImpl);
                                                        }

                                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                                        public final boolean d() {
                                                            return ((Boolean) this.b.getValue()).booleanValue();
                                                        }

                                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                                        public final float e(float f7) {
                                                            return ScrollableState.this.e(f7);
                                                        }
                                                    };
                                                    gapComposer522.g0(K20);
                                                }
                                                TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 = (TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1) K20;
                                                Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue();
                                                if (!z2 || ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition5.b).j() == 0.0f) {
                                                    z18 = false;
                                                }
                                                Modifier b5 = ScrollableKt.b(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation2, z18, z17, mutableInteractionSource2);
                                                gapComposer522.p(false);
                                                return b5;
                                            }
                                        }).l(a52).l(coreTextFieldSemanticsModifier2), new t6(legacyTextFieldState4, 0)), new zc(8, textFieldSelectionManager, coroutineScope522));
                                        if (z2) {
                                        }
                                        if (z12) {
                                        }
                                        GapComposer gapComposer522 = gapComposer3;
                                        final Modifier companion322 = a7;
                                        final BringIntoViewRequester bringIntoViewRequester322 = bringIntoViewRequester2;
                                        final WindowInfo windowInfo322 = windowInfo;
                                        final Modifier modifier422 = modifier3;
                                        final Density density422 = density2;
                                        final boolean z1622 = z12;
                                        gapComposer = gapComposer522;
                                        b(a1022, textFieldSelectionManager, ComposableLambdaKt.b(-814563849, new Function2() { // from class: u6
                                            @Override // kotlin.jvm.functions.Function2
                                            public final Object n(Object obj4, Object obj5) {
                                                boolean z17;
                                                Composer composer2 = (Composer) obj4;
                                                int intValue = ((Integer) obj5).intValue();
                                                if ((intValue & 3) != 2) {
                                                    z17 = true;
                                                } else {
                                                    z17 = false;
                                                }
                                                GapComposer gapComposer6 = (GapComposer) composer2;
                                                if (gapComposer6.N(intValue & 1, z17)) {
                                                    final TextStyle textStyle3 = textStyle;
                                                    final LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState4;
                                                    final int i19 = i2;
                                                    final int i20 = i;
                                                    final boolean z18 = z;
                                                    final TextFieldScrollerPosition textFieldScrollerPosition5 = textFieldScrollerPosition422;
                                                    final TextFieldValue textFieldValue5 = textFieldValue;
                                                    final VisualTransformation visualTransformation2 = visualTransformation;
                                                    final Modifier modifier5 = companion322;
                                                    final Modifier modifier6 = b32;
                                                    final Modifier modifier7 = a62;
                                                    final Modifier modifier8 = modifier422;
                                                    final BringIntoViewRequester bringIntoViewRequester4 = bringIntoViewRequester322;
                                                    final TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager;
                                                    final boolean z19 = z1622;
                                                    final WindowInfo windowInfo4 = windowInfo322;
                                                    final CoroutineScope coroutineScope6 = coroutineScope522;
                                                    final Function1 function15 = function12;
                                                    final OffsetMapping offsetMapping6 = offsetMapping52;
                                                    final Density density5 = density422;
                                                    ComposableLambdaImpl.this.f(ComposableLambdaKt.b(-44346382, new Function2() { // from class: androidx.compose.foundation.text.b
                                                        @Override // kotlin.jvm.functions.Function2
                                                        public final Object n(Object obj6, Object obj7) {
                                                            boolean z20;
                                                            float f5;
                                                            Modifier verticalScrollLayoutModifier;
                                                            Composer composer3 = (Composer) obj6;
                                                            int intValue2 = ((Integer) obj7).intValue();
                                                            if ((intValue2 & 3) != 2) {
                                                                z20 = true;
                                                            } else {
                                                                z20 = false;
                                                            }
                                                            GapComposer gapComposer7 = (GapComposer) composer3;
                                                            if (gapComposer7.N(intValue2 & 1, z20)) {
                                                                final LegacyTextFieldState legacyTextFieldState7 = legacyTextFieldState6;
                                                                float f6 = ((Dp) ((SnapshotMutableStateImpl) legacyTextFieldState7.g).getValue()).j;
                                                                if (Dp.b(f6, 0.0f)) {
                                                                    f5 = Float.NaN;
                                                                } else {
                                                                    f5 = f6;
                                                                }
                                                                Modifier f7 = SizeKt.f(Modifier.Companion.b, f6, f5);
                                                                int i21 = i19;
                                                                final int i22 = i20;
                                                                HeightInLinesModifierKt.b(i21, i22);
                                                                TextStyle textStyle4 = TextStyle.this;
                                                                if ((i21 != 1 || i22 != Integer.MAX_VALUE) && z18) {
                                                                    f7 = f7.l(new HeightInLinesElement(textStyle4, i21, i22));
                                                                }
                                                                boolean h7 = gapComposer7.h(legacyTextFieldState7);
                                                                Object K19 = gapComposer7.K();
                                                                if (h7 || K19 == Composer.Companion.a) {
                                                                    K19 = new r1(11, legacyTextFieldState7);
                                                                    gapComposer7.g0(K19);
                                                                }
                                                                Function0 function0 = (Function0) K19;
                                                                TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                                Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition6.f).getValue();
                                                                final TextFieldValue textFieldValue6 = textFieldValue5;
                                                                long j7 = textFieldValue6.b;
                                                                int i23 = TextRange.c;
                                                                int i24 = (int) (j7 >> 32);
                                                                long j8 = textFieldScrollerPosition6.e;
                                                                if (i24 == ((int) (j8 >> 32)) && (i24 = (int) (j7 & 4294967295L)) == ((int) (j8 & 4294967295L))) {
                                                                    i24 = TextRange.f(j7);
                                                                }
                                                                textFieldScrollerPosition6.e = textFieldValue6.b;
                                                                TransformedText a11 = ValidatingOffsetMappingKt.a(visualTransformation2, textFieldValue6.a);
                                                                int ordinal = orientation2.ordinal();
                                                                if (ordinal != 0) {
                                                                    if (ordinal == 1) {
                                                                        verticalScrollLayoutModifier = new HorizontalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                                    } else {
                                                                        k8.e();
                                                                        return null;
                                                                    }
                                                                } else {
                                                                    verticalScrollLayoutModifier = new VerticalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                                }
                                                                Modifier l4 = ClipKt.b(OverscrollKt.a(f7)).l(verticalScrollLayoutModifier).l(modifier5).l(modifier6).l(new TextFieldSizeElement(textStyle4)).l(modifier7).l(modifier8);
                                                                final BringIntoViewRequester bringIntoViewRequester5 = bringIntoViewRequester4;
                                                                Modifier b4 = BringIntoViewRequesterKt.b(l4, bringIntoViewRequester5);
                                                                final TextFieldSelectionManager textFieldSelectionManager4 = textFieldSelectionManager3;
                                                                final boolean z21 = z19;
                                                                final WindowInfo windowInfo5 = windowInfo4;
                                                                final CoroutineScope coroutineScope7 = coroutineScope6;
                                                                final Function1 function16 = function15;
                                                                final OffsetMapping offsetMapping7 = offsetMapping6;
                                                                final Density density6 = density5;
                                                                SimpleLayoutKt.a(b4, ComposableLambdaKt.b(1412697320, new Function2() { // from class: s6
                                                                    /* JADX WARN: Code restructure failed: missing block: B:15:0x009e, code lost:
                                                                    
                                                                        if (r0 != false) goto L21;
                                                                     */
                                                                    @Override // kotlin.jvm.functions.Function2
                                                                    /*
                                                                        Code decompiled incorrectly, please refer to instructions dump.
                                                                    */
                                                                    public final Object n(Object obj8, Object obj9) {
                                                                        boolean z22;
                                                                        Composer composer4 = (Composer) obj8;
                                                                        int intValue3 = ((Integer) obj9).intValue();
                                                                        boolean z23 = true;
                                                                        if ((intValue3 & 3) != 2) {
                                                                            z22 = true;
                                                                        } else {
                                                                            z22 = false;
                                                                        }
                                                                        GapComposer gapComposer8 = (GapComposer) composer4;
                                                                        if (gapComposer8.N(intValue3 & 1, z22)) {
                                                                            final LegacyTextFieldState legacyTextFieldState8 = legacyTextFieldState7;
                                                                            final TextFieldSelectionManager textFieldSelectionManager5 = TextFieldSelectionManager.this;
                                                                            final WindowInfo windowInfo6 = windowInfo5;
                                                                            final CoroutineScope coroutineScope8 = coroutineScope7;
                                                                            final Function1 function17 = function16;
                                                                            final TextFieldValue textFieldValue7 = textFieldValue6;
                                                                            final OffsetMapping offsetMapping8 = offsetMapping7;
                                                                            final Density density7 = density6;
                                                                            final BringIntoViewRequester bringIntoViewRequester6 = bringIntoViewRequester5;
                                                                            final int i25 = i22;
                                                                            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2
                                                                                /* JADX WARN: Removed duplicated region for block: B:38:0x01c8  */
                                                                                /* JADX WARN: Removed duplicated region for block: B:64:0x0258  */
                                                                                /* JADX WARN: Removed duplicated region for block: B:67:0x0262  */
                                                                                /* JADX WARN: Removed duplicated region for block: B:69:0x0251  */
                                                                                @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                                /*
                                                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                                                */
                                                                                public final MeasureResult a(MeasureScope measureScope, List list, long j9) {
                                                                                    Function1 function18;
                                                                                    TextLayoutResult textLayoutResult;
                                                                                    long j10;
                                                                                    TextLayoutResult textLayoutResult2;
                                                                                    LayoutDirection layoutDirection;
                                                                                    TextLayoutResult textLayoutResult3;
                                                                                    TextLayoutResult textLayoutResult4;
                                                                                    CoreTextFieldKt$CoreTextField$8$1$1$2 coreTextFieldKt$CoreTextField$8$1$1$2;
                                                                                    int i26;
                                                                                    LayoutCoordinates layoutCoordinates;
                                                                                    AnnotatedString annotatedString6;
                                                                                    TextLayoutInput textLayoutInput;
                                                                                    int h8;
                                                                                    int i27;
                                                                                    LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                                    Snapshot a12 = Snapshot.Companion.a();
                                                                                    if (a12 != null) {
                                                                                        function18 = a12.e();
                                                                                    } else {
                                                                                        function18 = null;
                                                                                    }
                                                                                    Snapshot b5 = Snapshot.Companion.b(a12);
                                                                                    try {
                                                                                        TextLayoutResultProxy d2 = legacyTextFieldState9.d();
                                                                                        if (d2 != null) {
                                                                                            textLayoutResult = d2.a;
                                                                                        } else {
                                                                                            textLayoutResult = null;
                                                                                        }
                                                                                        TextDelegate textDelegate2 = legacyTextFieldState9.a;
                                                                                        LayoutDirection layoutDirection2 = measureScope.getLayoutDirection();
                                                                                        int i28 = textDelegate2.f;
                                                                                        boolean z24 = textDelegate2.e;
                                                                                        int i29 = textDelegate2.c;
                                                                                        if (textLayoutResult != null) {
                                                                                            MultiParagraph multiParagraph = textLayoutResult.b;
                                                                                            TextLayoutInput textLayoutInput2 = textLayoutResult.a;
                                                                                            AnnotatedString annotatedString7 = textDelegate2.a;
                                                                                            TextStyle textStyle5 = textDelegate2.b;
                                                                                            List list2 = textDelegate2.i;
                                                                                            Density density8 = textDelegate2.g;
                                                                                            FontFamily.Resolver resolver3 = textDelegate2.h;
                                                                                            TextLayoutResult textLayoutResult5 = textLayoutResult;
                                                                                            if (multiParagraph.a.a()) {
                                                                                                j10 = j9;
                                                                                                layoutDirection = layoutDirection2;
                                                                                            } else {
                                                                                                AnnotatedString annotatedString8 = textLayoutInput2.a;
                                                                                                long j11 = textLayoutInput2.j;
                                                                                                if (Intrinsics.a(annotatedString8, annotatedString7) && textLayoutInput2.b.c(textStyle5) && Intrinsics.a(textLayoutInput2.c, list2) && textLayoutInput2.d == i29 && textLayoutInput2.e == z24 && textLayoutInput2.f == i28 && Intrinsics.a(textLayoutInput2.g, density8)) {
                                                                                                    layoutDirection = layoutDirection2;
                                                                                                    if (textLayoutInput2.h == layoutDirection && Intrinsics.a(textLayoutInput2.i, resolver3) && Constraints.j(j9) == Constraints.j(j11) && ((!z24 && i28 != 2) || (Constraints.h(j9) == Constraints.h(j11) && Constraints.g(j9) == Constraints.g(j11)))) {
                                                                                                        textLayoutResult2 = textLayoutResult5;
                                                                                                        textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput2.a, textDelegate2.b, textLayoutInput2.c, textLayoutInput2.d, textLayoutInput2.e, textLayoutInput2.f, textLayoutInput2.g, textLayoutInput2.h, textLayoutInput2.i, j9), multiParagraph, ConstraintsKt.d(j9, (TextDelegateKt.a(multiParagraph.e) & 4294967295L) | (TextDelegateKt.a(multiParagraph.d) << 32)));
                                                                                                        long j1222 = textLayoutResult3.c;
                                                                                                        Integer valueOf32 = Integer.valueOf((int) (j1222 >> 32));
                                                                                                        Integer valueOf222 = Integer.valueOf((int) (j1222 & 4294967295L));
                                                                                                        int intValue422 = valueOf32.intValue();
                                                                                                        int intValue522 = valueOf222.intValue();
                                                                                                        MultiParagraph multiParagraph222 = textLayoutResult3.b;
                                                                                                        multiParagraph222.a.a();
                                                                                                        textLayoutResult4 = textLayoutResult2;
                                                                                                        if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                                            if (d2 != null) {
                                                                                                                layoutCoordinates = d2.c;
                                                                                                            } else {
                                                                                                                layoutCoordinates = null;
                                                                                                            }
                                                                                                            ((SnapshotMutableStateImpl) legacyTextFieldState9.i).setValue(new TextLayoutResultProxy(textLayoutResult3, layoutCoordinates));
                                                                                                            legacyTextFieldState9.p = false;
                                                                                                            coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                                            TextFieldSelectionManager textFieldSelectionManager6 = textFieldSelectionManager5;
                                                                                                            if (textFieldSelectionManager6.l() && textFieldSelectionManager6.k() && ((LazyWindowInfo) windowInfo6).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.B).getValue()).a) && legacyTextFieldState9.b()) {
                                                                                                                if (textLayoutResult4 != null && (textLayoutInput = textLayoutResult4.a) != null) {
                                                                                                                    annotatedString6 = textLayoutInput.a;
                                                                                                                } else {
                                                                                                                    annotatedString6 = null;
                                                                                                                }
                                                                                                                if (!Intrinsics.a(annotatedString6, textLayoutResult3.a.a)) {
                                                                                                                    BuildersKt.c(coroutineScope8, null, null, new CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1(textFieldSelectionManager6, bringIntoViewRequester6, null), 3);
                                                                                                                }
                                                                                                            }
                                                                                                            function17.b(textLayoutResult3);
                                                                                                            CoreTextFieldKt.f(legacyTextFieldState9, textFieldValue7, offsetMapping8);
                                                                                                        } else {
                                                                                                            coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                                        }
                                                                                                        if (i25 != 1) {
                                                                                                            i26 = TextDelegateKt.a(multiParagraph222.b(0));
                                                                                                        } else {
                                                                                                            i26 = 0;
                                                                                                        }
                                                                                                        ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                                        return measureScope.B(intValue422, intValue522, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                                    }
                                                                                                    j10 = j9;
                                                                                                } else {
                                                                                                    j10 = j9;
                                                                                                    textLayoutResult2 = textLayoutResult5;
                                                                                                    layoutDirection = layoutDirection2;
                                                                                                }
                                                                                            }
                                                                                            textLayoutResult2 = textLayoutResult5;
                                                                                        } else {
                                                                                            j10 = j9;
                                                                                            textLayoutResult2 = textLayoutResult;
                                                                                            layoutDirection = layoutDirection2;
                                                                                        }
                                                                                        textDelegate2.a(layoutDirection);
                                                                                        int j13 = Constraints.j(j10);
                                                                                        if ((z24 || i28 == 2) && Constraints.d(j10)) {
                                                                                            h8 = Constraints.h(j10);
                                                                                        } else {
                                                                                            h8 = Integer.MAX_VALUE;
                                                                                        }
                                                                                        if (!z24 && i28 == 2) {
                                                                                            i27 = 1;
                                                                                        } else {
                                                                                            i27 = i29;
                                                                                        }
                                                                                        if (j13 != h8) {
                                                                                            MultiParagraphIntrinsics multiParagraphIntrinsics = textDelegate2.j;
                                                                                            if (multiParagraphIntrinsics != null) {
                                                                                                h8 = RangesKt.d(TextDelegateKt.a(multiParagraphIntrinsics.c()), j13, h8);
                                                                                            } else {
                                                                                                u2.l("layoutIntrinsics must be called first");
                                                                                                return null;
                                                                                            }
                                                                                        }
                                                                                        MultiParagraphIntrinsics multiParagraphIntrinsics2 = textDelegate2.j;
                                                                                        if (multiParagraphIntrinsics2 != null) {
                                                                                            textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textDelegate2.a, textDelegate2.b, textDelegate2.i, textDelegate2.c, textDelegate2.e, textDelegate2.f, textDelegate2.g, layoutDirection, textDelegate2.h, j10), new MultiParagraph(multiParagraphIntrinsics2, Constraints.Companion.b(0, h8, 0, Constraints.g(j10)), i27, textDelegate2.f), ConstraintsKt.d(j10, (TextDelegateKt.a(r25.d) << 32) | (TextDelegateKt.a(r25.e) & 4294967295L)));
                                                                                            long j12222 = textLayoutResult3.c;
                                                                                            Integer valueOf322 = Integer.valueOf((int) (j12222 >> 32));
                                                                                            Integer valueOf2222 = Integer.valueOf((int) (j12222 & 4294967295L));
                                                                                            int intValue4222 = valueOf322.intValue();
                                                                                            int intValue5222 = valueOf2222.intValue();
                                                                                            MultiParagraph multiParagraph2222 = textLayoutResult3.b;
                                                                                            multiParagraph2222.a.a();
                                                                                            textLayoutResult4 = textLayoutResult2;
                                                                                            if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                            }
                                                                                            if (i25 != 1) {
                                                                                            }
                                                                                            ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                            return measureScope.B(intValue4222, intValue5222, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                        }
                                                                                        u2.l("layoutIntrinsics must be called first");
                                                                                        return null;
                                                                                    } finally {
                                                                                        Snapshot.Companion.e(a12, b5, function18);
                                                                                    }
                                                                                }

                                                                                @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                                public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                                                                                    LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                                    legacyTextFieldState9.a.a(intrinsicMeasureScope.getLayoutDirection());
                                                                                    MultiParagraphIntrinsics multiParagraphIntrinsics = legacyTextFieldState9.a.j;
                                                                                    if (multiParagraphIntrinsics != null) {
                                                                                        return TextDelegateKt.a(multiParagraphIntrinsics.c());
                                                                                    }
                                                                                    u2.l("layoutIntrinsics must be called first");
                                                                                    return 0;
                                                                                }
                                                                            };
                                                                            int hashCode = Long.hashCode(gapComposer8.T);
                                                                            PersistentCompositionLocalMap l5 = gapComposer8.l();
                                                                            Modifier c = ComposedModifierKt.c(gapComposer8, Modifier.Companion.b);
                                                                            ComposeUiNode.b.getClass();
                                                                            gapComposer8.Z();
                                                                            if (gapComposer8.S) {
                                                                                gapComposer8.k(LayoutNode.b0);
                                                                            } else {
                                                                                gapComposer8.j0();
                                                                            }
                                                                            Updater.c(gapComposer8, measurePolicy, ComposeUiNode.Companion.d);
                                                                            Updater.c(gapComposer8, l5, ComposeUiNode.Companion.c);
                                                                            Updater.c(gapComposer8, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                                                            Updater.b(gapComposer8);
                                                                            Updater.c(gapComposer8, c, ComposeUiNode.Companion.b);
                                                                            gapComposer8.p(true);
                                                                            HandleState a12 = legacyTextFieldState8.a();
                                                                            HandleState handleState = HandleState.j;
                                                                            boolean z24 = z21;
                                                                            if (a12 != handleState && legacyTextFieldState8.c() != null) {
                                                                                LayoutCoordinates c2 = legacyTextFieldState8.c();
                                                                                c2.getClass();
                                                                                if (c2.o()) {
                                                                                }
                                                                            }
                                                                            z23 = false;
                                                                            CoreTextFieldKt.c(textFieldSelectionManager5, z23, gapComposer8, 0);
                                                                            if (legacyTextFieldState8.a() == HandleState.l && z24) {
                                                                                gapComposer8.W(-713510518);
                                                                                CoreTextFieldKt.d(textFieldSelectionManager5, gapComposer8, 0);
                                                                                gapComposer8.p(false);
                                                                            } else {
                                                                                gapComposer8.W(-713433638);
                                                                                gapComposer8.p(false);
                                                                            }
                                                                        } else {
                                                                            gapComposer8.Q();
                                                                        }
                                                                        return Unit.a;
                                                                    }
                                                                }, gapComposer7), gapComposer7, 48);
                                                            } else {
                                                                gapComposer7.Q();
                                                            }
                                                            return Unit.a;
                                                        }
                                                    }, gapComposer6), gapComposer6, 6);
                                                } else {
                                                    gapComposer6.Q();
                                                }
                                                return Unit.a;
                                            }
                                        }, gapComposer), gapComposer, 384);
                                    }
                                }
                                z7 = z5;
                                if (z7) {
                                }
                                EditingBuffer editingBuffer22 = editProcessor.b;
                                editingBuffer22.d = -1;
                                editingBuffer22.e = -1;
                                a = TextFieldValue.a(textFieldValue, null, 0L, 3);
                                textFieldValue2 = editProcessor.a;
                                editProcessor.a = a;
                                if (textInputSession != null) {
                                    textInputSession.b.f(textFieldValue2, a);
                                }
                                K = gapComposer2.K();
                                if (K == obj3) {
                                }
                                undoManager = (UndoManager) K;
                                long currentTimeMillis2 = System.currentTimeMillis();
                                if (!undoManager.e) {
                                }
                                undoManager.d = Long.valueOf(currentTimeMillis2);
                                undoManager.a(textFieldValue);
                                K2 = gapComposer2.K();
                                if (K2 == obj3) {
                                }
                                coroutineScope = (CoroutineScope) K2;
                                K3 = gapComposer2.K();
                                if (K3 == obj3) {
                                }
                                bringIntoViewRequester = (BringIntoViewRequester) K3;
                                K4 = gapComposer2.K();
                                if (K4 == obj3) {
                                }
                                final TextFieldSelectionManager textFieldSelectionManager22 = (TextFieldSelectionManager) K4;
                                textFieldSelectionManager22.b = offsetMapping3;
                                textFieldSelectionManager22.c = legacyTextFieldState5.v;
                                textFieldSelectionManager22.d = legacyTextFieldState5;
                                ((SnapshotMutableStateImpl) textFieldSelectionManager22.e).setValue(textFieldValue);
                                textFieldSelectionManager22.v = new TextRange(j4);
                                textFieldSelectionManager22.g = (Clipboard) gapComposer2.j(CompositionLocalsKt.f);
                                textFieldSelectionManager22.h = coroutineScope;
                                textFieldSelectionManager22.j = (HapticFeedback) gapComposer2.j(CompositionLocalsKt.l);
                                focusRequester2 = focusRequester;
                                textFieldSelectionManager22.k = focusRequester2;
                                ((SnapshotMutableStateImpl) textFieldSelectionManager22.l).setValue(true);
                                ((SnapshotMutableStateImpl) textFieldSelectionManager22.m).setValue(Boolean.valueOf(z2));
                                gapComposer2.W(1966756105);
                                SelectedTextType selectedTextType2 = SelectedTextType.j;
                                LocaleList localeList2 = textStyle.a.k;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = PlatformSelectionBehaviors_androidKt.a;
                                gapComposer2.W(430530635);
                                Context context2 = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
                                CoroutineContext coroutineContext2 = (CoroutineContext) gapComposer2.j(PlatformSelectionBehaviors_androidKt.a);
                                f = gapComposer2.f(coroutineContext2) | gapComposer2.f(context2) | gapComposer2.f(localeList2);
                                K5 = gapComposer2.K();
                                if (!f) {
                                }
                                K5 = (PlatformSelectionBehaviors) PlatformSelectionBehaviors_androidKt.b.j(coroutineContext2, context2, selectedTextType2, localeList2);
                                gapComposer2.g0(K5);
                                gapComposer2.p(false);
                                textFieldSelectionManager22.i = (PlatformSelectionBehaviors) K5;
                                gapComposer2.p(false);
                                legacyTextFieldState5.b();
                                i8 = i7;
                                int i152 = i8 & 7168;
                                i9 = (i8 & 112) ^ 48;
                                h = gapComposer2.h(legacyTextFieldState5) | (i152 != 2048) | ((i8 & 57344) != 16384) | gapComposer2.h(textInputService4) | (i13 != 4) | ((i9 <= 32 && gapComposer2.f(imeOptions)) || (i8 & 48) == 32) | gapComposer2.h(offsetMapping3) | gapComposer2.h(coroutineScope) | gapComposer2.h(bringIntoViewRequester) | gapComposer2.h(textFieldSelectionManager22);
                                Object K172 = gapComposer2.K();
                                if (h) {
                                }
                                mutableInteractionSource2 = mutableInteractionSource;
                                gapComposer3 = gapComposer2;
                                legacyTextFieldState = legacyTextFieldState5;
                                textInputService = textInputService4;
                                i10 = i13;
                                focusManager = focusManager2;
                                i11 = i8;
                                legacyPlatformTextInputServiceAdapter = legacyPlatformTextInputServiceAdapter2;
                                focusRequester3 = focusRequester2;
                                textFieldScrollerPosition2 = textFieldScrollerPosition;
                                imeOptions2 = imeOptions;
                                transformedText2 = transformedText;
                                obj2 = obj3;
                                obj = new Function1() { // from class: androidx.compose.foundation.text.c
                                    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        TextLayoutResultProxy d2;
                                        LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                                        boolean b33 = legacyTextFieldState6.b();
                                        FocusStateImpl focusStateImpl = (FocusStateImpl) ((FocusState) obj4);
                                        boolean b4 = focusStateImpl.b();
                                        Unit unit = Unit.a;
                                        if (b33 != b4) {
                                            ((SnapshotMutableStateImpl) legacyTextFieldState6.f).setValue(Boolean.valueOf(focusStateImpl.b()));
                                            boolean b5 = legacyTextFieldState6.b();
                                            TextFieldValue textFieldValue43 = textFieldValue;
                                            OffsetMapping offsetMapping43 = offsetMapping3;
                                            if (b5 && z2) {
                                                EditProcessor editProcessor2 = legacyTextFieldState6.d;
                                                t6 t6Var3 = legacyTextFieldState6.v;
                                                t6 t6Var22 = legacyTextFieldState6.w;
                                                ?? obj5 = new Object();
                                                p2 p2Var = new p2(editProcessor2, t6Var3, (Object) obj5, 17);
                                                TextInputService textInputService53 = textInputService;
                                                PlatformTextInputService platformTextInputService = textInputService53.a;
                                                platformTextInputService.c(textFieldValue43, imeOptions2, p2Var, t6Var22);
                                                TextInputSession textInputSession2 = new TextInputSession(textInputService53, platformTextInputService);
                                                textInputService53.b.set(textInputSession2);
                                                obj5.j = textInputSession2;
                                                legacyTextFieldState6.e = textInputSession2;
                                                CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue43, offsetMapping43);
                                            } else {
                                                CoreTextFieldKt.e(legacyTextFieldState6);
                                            }
                                            if (focusStateImpl.b() && (d2 = legacyTextFieldState6.d()) != null) {
                                                BuildersKt.c(coroutineScope, null, null, new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(bringIntoViewRequester, textFieldValue43, legacyTextFieldState6, d2, offsetMapping43, null), 3);
                                            }
                                            if (!focusStateImpl.b()) {
                                                textFieldSelectionManager22.g(null);
                                            }
                                        }
                                        return unit;
                                    }
                                };
                                z8 = z2;
                                coroutineScope2 = coroutineScope;
                                textFieldValue3 = textFieldValue;
                                textFieldSelectionManager22 = textFieldSelectionManager22;
                                bringIntoViewRequester2 = bringIntoViewRequester;
                                offsetMapping = offsetMapping3;
                                gapComposer3.g0(obj);
                                Modifier.Companion companion22 = Modifier.Companion.b;
                                CoroutineScope coroutineScope42 = coroutineScope2;
                                Modifier a42 = FocusableKt.a(FocusChangedModifierKt.a(FocusRequesterModifierKt.a(companion22, focusRequester3), (Function1) obj), z8, mutableInteractionSource2);
                                MutableState k2 = SnapshotStateKt.k(Boolean.valueOf(z8), gapComposer3);
                                boolean f32 = gapComposer3.f(k2) | gapComposer3.h(legacyTextFieldState) | gapComposer3.h(textInputService) | gapComposer3.h(textFieldSelectionManager22);
                                if (i9 > 32) {
                                }
                                legacyTextFieldState2 = legacyTextFieldState;
                                if ((i11 & 48) != 32) {
                                }
                                z9 = true;
                                z10 = f32 | z9;
                                Object K1822 = gapComposer3.K();
                                if (z10) {
                                }
                                focusRequester4 = focusRequester3;
                                coroutineScope3 = coroutineScope42;
                                modifier2 = a42;
                                companion = companion22;
                                legacyTextFieldState3 = legacyTextFieldState2;
                                coreTextFieldKt$CoreTextField$5$1 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState3, k2, textInputService, textFieldSelectionManager22, imeOptions2, null);
                                mutableState = k2;
                                textInputService2 = textInputService;
                                gapComposer3.g0(coreTextFieldKt$CoreTextField$5$1);
                                EffectsKt.e(gapComposer3, Unit.a, (Function2) coreTextFieldKt$CoreTextField$5$1);
                                Modifier f422 = SelectionGesturesKt.f(new t6(legacyTextFieldState3, 4));
                                final OffsetMapping offsetMapping422 = offsetMapping;
                                FocusRequester focusRequester622 = focusRequester4;
                                final pb pbVar22 = new pb(legacyTextFieldState3, focusRequester622, z8, textFieldSelectionManager22, offsetMapping422);
                                Modifier l222 = (z2 ? ComposedModifierKt.a(f422, new Function3() { // from class: androidx.compose.foundation.text.k
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object f(Object obj4, Object obj5, Object obj6) {
                                        ((Integer) obj6).getClass();
                                        GapComposer gapComposer523 = (GapComposer) ((Composer) obj5);
                                        gapComposer523.W(-102778667);
                                        Object K19 = gapComposer523.K();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                        if (K19 == composer$Companion$Empty$1) {
                                            K19 = EffectsKt.h(gapComposer523);
                                            gapComposer523.g0(K19);
                                        }
                                        final CoroutineScope coroutineScope523 = (CoroutineScope) K19;
                                        Object K20 = gapComposer523.K();
                                        if (K20 == composer$Companion$Empty$1) {
                                            K20 = SnapshotStateKt.g(null);
                                            gapComposer523.g0(K20);
                                        }
                                        final MutableState mutableState2 = (MutableState) K20;
                                        final MutableState k22 = SnapshotStateKt.k(pb.this, gapComposer523);
                                        final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                                        boolean f5 = gapComposer523.f(mutableInteractionSource3);
                                        Object K21 = gapComposer523.K();
                                        if (f5 || K21 == composer$Companion$Empty$1) {
                                            K21 = new ec(14, mutableState2, mutableInteractionSource3);
                                            gapComposer523.g0(K21);
                                        }
                                        EffectsKt.c(mutableInteractionSource3, (Function1) K21, gapComposer523);
                                        boolean h622 = gapComposer523.h(coroutineScope523) | gapComposer523.f(mutableInteractionSource3) | gapComposer523.f(k22);
                                        Object K22 = gapComposer523.K();
                                        if (h622 || K22 == composer$Companion$Empty$1) {
                                            K22 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1

                                                /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", l = {67}, m = "invokeSuspend", v = 1)
                                                /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name */
                                                /* loaded from: classes.dex */
                                                final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
                                                    public int n;
                                                    public /* synthetic */ PressGestureScope o;
                                                    public /* synthetic */ long p;
                                                    public final /* synthetic */ CoroutineScope q;
                                                    public final /* synthetic */ MutableState r;
                                                    public final /* synthetic */ MutableInteractionSource s;

                                                    /* JADX INFO: Access modifiers changed from: package-private */
                                                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                    @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1", f = "TextFieldPressGestureFilter.kt", l = {60, 64}, m = "invokeSuspend", v = 1)
                                                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1, reason: invalid class name and collision with other inner class name */
                                                    /* loaded from: classes.dex */
                                                    public final class C00051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                        public Object n;
                                                        public int o;
                                                        public final /* synthetic */ MutableState p;
                                                        public final /* synthetic */ long q;
                                                        public final /* synthetic */ MutableInteractionSource r;

                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                        public C00051(MutableState mutableState, long j, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                            super(2, continuation);
                                                            this.p = mutableState;
                                                            this.q = j;
                                                            this.r = mutableInteractionSource;
                                                        }

                                                        @Override // kotlin.jvm.functions.Function2
                                                        public final Object n(Object obj, Object obj2) {
                                                            return ((C00051) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Continuation s(Object obj, Continuation continuation) {
                                                            return new C00051(this.p, this.q, this.r, continuation);
                                                        }

                                                        /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
                                                        
                                                            if (r3.a(r1, r7) == r0) goto L23;
                                                         */
                                                        /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        /*
                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                        */
                                                        public final Object v(Object obj) {
                                                            MutableState mutableState;
                                                            PressInteraction.Press press;
                                                            PressInteraction.Press press2;
                                                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                            int i = this.o;
                                                            MutableInteractionSource mutableInteractionSource = this.r;
                                                            MutableState mutableState2 = this.p;
                                                            if (i != 0) {
                                                                if (i != 1) {
                                                                    if (i == 2) {
                                                                        press2 = (PressInteraction.Press) this.n;
                                                                        ResultKt.b(obj);
                                                                        press = press2;
                                                                        mutableState2.setValue(press);
                                                                        return Unit.a;
                                                                    }
                                                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                    return null;
                                                                }
                                                                mutableState = (MutableState) this.n;
                                                                ResultKt.b(obj);
                                                            } else {
                                                                ResultKt.b(obj);
                                                                PressInteraction.Press press3 = (PressInteraction.Press) mutableState2.getValue();
                                                                if (press3 != null) {
                                                                    PressInteraction.Cancel cancel = new PressInteraction.Cancel(press3);
                                                                    if (mutableInteractionSource != null) {
                                                                        this.n = mutableState2;
                                                                        this.o = 1;
                                                                    }
                                                                    mutableState = mutableState2;
                                                                }
                                                                press = new PressInteraction.Press(this.q);
                                                                if (mutableInteractionSource != null) {
                                                                    this.n = press;
                                                                    this.o = 2;
                                                                    if (mutableInteractionSource.a(press, this) != coroutineSingletons) {
                                                                        press2 = press;
                                                                        press = press2;
                                                                    }
                                                                    return coroutineSingletons;
                                                                }
                                                                mutableState2.setValue(press);
                                                                return Unit.a;
                                                            }
                                                            mutableState.setValue(null);
                                                            press = new PressInteraction.Press(this.q);
                                                            if (mutableInteractionSource != null) {
                                                            }
                                                            mutableState2.setValue(press);
                                                            return Unit.a;
                                                        }
                                                    }

                                                    /* JADX INFO: Access modifiers changed from: package-private */
                                                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                                    @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2", f = "TextFieldPressGestureFilter.kt", l = {76}, m = "invokeSuspend", v = 1)
                                                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2, reason: invalid class name */
                                                    /* loaded from: classes.dex */
                                                    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                        public MutableState n;
                                                        public int o;
                                                        public final /* synthetic */ MutableState p;
                                                        public final /* synthetic */ boolean q;
                                                        public final /* synthetic */ MutableInteractionSource r;

                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                        public AnonymousClass2(MutableState mutableState, boolean z, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                            super(2, continuation);
                                                            this.p = mutableState;
                                                            this.q = z;
                                                            this.r = mutableInteractionSource;
                                                        }

                                                        @Override // kotlin.jvm.functions.Function2
                                                        public final Object n(Object obj, Object obj2) {
                                                            return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Continuation s(Object obj, Continuation continuation) {
                                                            return new AnonymousClass2(this.p, this.q, this.r, continuation);
                                                        }

                                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                        public final Object v(Object obj) {
                                                            MutableState mutableState;
                                                            Interaction cancel;
                                                            MutableState mutableState2;
                                                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                            int i = this.o;
                                                            if (i != 0) {
                                                                if (i == 1) {
                                                                    mutableState2 = this.n;
                                                                    ResultKt.b(obj);
                                                                } else {
                                                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                    return null;
                                                                }
                                                            } else {
                                                                ResultKt.b(obj);
                                                                mutableState = this.p;
                                                                PressInteraction.Press press = (PressInteraction.Press) mutableState.getValue();
                                                                if (press != null) {
                                                                    if (this.q) {
                                                                        cancel = new PressInteraction.Release(press);
                                                                    } else {
                                                                        cancel = new PressInteraction.Cancel(press);
                                                                    }
                                                                    MutableInteractionSource mutableInteractionSource = this.r;
                                                                    if (mutableInteractionSource != null) {
                                                                        this.n = mutableState;
                                                                        this.o = 1;
                                                                        if (mutableInteractionSource.a(cancel, this) == coroutineSingletons) {
                                                                            return coroutineSingletons;
                                                                        }
                                                                        mutableState2 = mutableState;
                                                                    }
                                                                    mutableState.setValue(null);
                                                                }
                                                                return Unit.a;
                                                            }
                                                            mutableState = mutableState2;
                                                            mutableState.setValue(null);
                                                            return Unit.a;
                                                        }
                                                    }

                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    public AnonymousClass1(CoroutineScope coroutineScope, MutableState mutableState, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                        super(3, continuation);
                                                        this.q = coroutineScope;
                                                        this.r = mutableState;
                                                        this.s = mutableInteractionSource;
                                                    }

                                                    @Override // kotlin.jvm.functions.Function3
                                                    public final Object f(Object obj, Object obj2, Object obj3) {
                                                        long j = ((Offset) obj2).a;
                                                        MutableState mutableState = this.r;
                                                        MutableInteractionSource mutableInteractionSource = this.s;
                                                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, mutableState, mutableInteractionSource, (Continuation) obj3);
                                                        anonymousClass1.o = (PressGestureScope) obj;
                                                        anonymousClass1.p = j;
                                                        return anonymousClass1.v(Unit.a);
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Object v(Object obj) {
                                                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                        int i = this.n;
                                                        CoroutineScope coroutineScope = this.q;
                                                        if (i != 0) {
                                                            if (i == 1) {
                                                                ResultKt.b(obj);
                                                            } else {
                                                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                return null;
                                                            }
                                                        } else {
                                                            ResultKt.b(obj);
                                                            PressGestureScope pressGestureScope = this.o;
                                                            BuildersKt.c(coroutineScope, null, null, new C00051(this.r, this.p, this.s, null), 3);
                                                            this.n = 1;
                                                            obj = ((PressGestureScopeImpl) pressGestureScope).e(this);
                                                            if (obj == coroutineSingletons) {
                                                                return coroutineSingletons;
                                                            }
                                                        }
                                                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.r, ((Boolean) obj).booleanValue(), this.s, null), 3);
                                                        return Unit.a;
                                                    }
                                                }

                                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                                    Object d2 = TapGestureDetectorKt.d(pointerInputScope, new AnonymousClass1(CoroutineScope.this, mutableState2, mutableInteractionSource3, null), new i2(k22, 17), continuation);
                                                    if (d2 == CoroutineSingletons.j) {
                                                        return d2;
                                                    }
                                                    return Unit.a;
                                                }
                                            };
                                            gapComposer523.g0(K22);
                                        }
                                        Modifier a522 = SuspendingPointerInputFilterKt.a(Modifier.Companion.b, mutableInteractionSource3, (PointerInputEventHandler) K22);
                                        gapComposer523.p(false);
                                        return a522;
                                    }
                                }) : f422).l(new SuspendPointerInputElement(textFieldSelectionManager22.z, textFieldSelectionManager22.y, null, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                                        Object c = SelectionGesturesKt.c(pointerInputScope, textFieldSelectionManager3.z, textFieldSelectionManager3.y, continuation);
                                        if (c == CoroutineSingletons.j) {
                                            return c;
                                        }
                                        return Unit.a;
                                    }
                                }, 4));
                                PointerIcon.a.getClass();
                                Modifier a522 = PointerIconKt.a(l222, PointerIcon_androidKt.b);
                                final Modifier b322 = DrawModifierKt.b(companion, new p2(legacyTextFieldState3, textFieldValue3, offsetMapping422, 4));
                                boolean h622 = gapComposer3.h(legacyTextFieldState3) | (i152 == 2048) | gapComposer3.f(windowInfo2) | gapComposer3.h(textFieldSelectionManager22);
                                int i1622 = i10;
                                h2 = h622 | (i1622 == 4) | gapComposer3.h(offsetMapping422);
                                K6 = gapComposer3.K();
                                if (h2) {
                                }
                                final TextFieldValue textFieldValue422 = textFieldValue3;
                                textInputService3 = textInputService2;
                                Function1 function1422 = new Function1() { // from class: androidx.compose.foundation.text.d
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        TextInputSession textInputSession2;
                                        final LayoutCoordinates layoutCoordinates;
                                        LayoutCoordinates layoutCoordinates2;
                                        LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                                        MutableState mutableState2 = legacyTextFieldState6.o;
                                        LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj4;
                                        legacyTextFieldState6.h = layoutCoordinates3;
                                        TextLayoutResultProxy d2 = legacyTextFieldState6.d();
                                        if (d2 != null) {
                                            d2.b = layoutCoordinates3;
                                        }
                                        if (z2) {
                                            HandleState a622 = legacyTextFieldState6.a();
                                            HandleState handleState = HandleState.k;
                                            TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager22;
                                            TextFieldValue textFieldValue5 = textFieldValue422;
                                            if (a622 == handleState) {
                                                if (((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState6.l).getValue()).booleanValue() && ((LazyWindowInfo) windowInfo2).a()) {
                                                    textFieldSelectionManager3.s();
                                                } else {
                                                    textFieldSelectionManager3.p();
                                                }
                                                ((SnapshotMutableStateImpl) legacyTextFieldState6.m).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                                ((SnapshotMutableStateImpl) legacyTextFieldState6.n).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, false)));
                                                ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextRange.c(textFieldValue5.b)));
                                            } else if (legacyTextFieldState6.a() == HandleState.l) {
                                                ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                            }
                                            OffsetMapping offsetMapping522 = offsetMapping422;
                                            CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue5, offsetMapping522);
                                            TextLayoutResultProxy d3 = legacyTextFieldState6.d();
                                            if (d3 != null && (textInputSession2 = legacyTextFieldState6.e) != null && legacyTextFieldState6.b() && (layoutCoordinates = d3.b) != null && layoutCoordinates.o() && (layoutCoordinates2 = d3.c) != null) {
                                                TextLayoutResult textLayoutResult = d3.a;
                                                Function1<Matrix, Unit> function15 = new Function1<Matrix, Unit>() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object b(Object obj5) {
                                                        float[] fArr = ((Matrix) obj5).a;
                                                        LayoutCoordinates layoutCoordinates4 = LayoutCoordinates.this;
                                                        if (layoutCoordinates4.o()) {
                                                            LayoutCoordinatesKt.c(layoutCoordinates4).I(layoutCoordinates4, fArr);
                                                        }
                                                        return Unit.a;
                                                    }
                                                };
                                                Rect a72 = SelectionManagerKt.a(layoutCoordinates);
                                                Rect l323 = layoutCoordinates.l(layoutCoordinates2, false);
                                                if (Intrinsics.a((TextInputSession) textInputSession2.a.b.get(), textInputSession2)) {
                                                    textInputSession2.b.g(textFieldValue5, offsetMapping522, textLayoutResult, function15, a72, l323);
                                                }
                                            }
                                        }
                                        return Unit.a;
                                    }
                                };
                                windowInfo = windowInfo2;
                                offsetMapping422 = offsetMapping422;
                                gapComposer3.g0(function1422);
                                K6 = function1422;
                                final Modifier a622 = OnGloballyPositionedModifierKt.a(companion, (Function1) K6);
                                legacyTextFieldState4 = legacyTextFieldState3;
                                textFieldSelectionManager = textFieldSelectionManager22;
                                TextInputService textInputService522 = textInputService3;
                                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier22 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState4, z2, offsetMapping422, textFieldSelectionManager, imeOptions, focusRequester622);
                                final OffsetMapping offsetMapping522 = offsetMapping422;
                                if (!z2 && ((LazyWindowInfo) windowInfo).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.B).getValue()).a)) {
                                }
                                h3 = gapComposer3.h(textFieldSelectionManager);
                                K7 = gapComposer3.K();
                                if (!h3) {
                                }
                                K7 = new w6(textFieldSelectionManager, 0);
                                gapComposer3.g0(K7);
                                EffectsKt.c(textFieldSelectionManager, (Function1) K7, gapComposer3);
                                h4 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.h(textInputService522) | (i1622 == 4) | ((i9 <= 32 && gapComposer3.f(imeOptions)) || (i11 & 48) == 32);
                                K8 = gapComposer3.K();
                                if (h4) {
                                }
                                s2 s2Var22 = new s2(legacyTextFieldState4, textInputService522, textFieldValue, imeOptions, 2);
                                imeOptions3 = imeOptions;
                                gapComposer3.g0(s2Var22);
                                K8 = s2Var22;
                                EffectsKt.c(imeOptions3, (Function1) K8, gapComposer3);
                                final Function1 t6Var22 = legacyTextFieldState4.v;
                                if (i == 1) {
                                }
                                final int i1722 = imeOptions3.e;
                                final boolean z1522 = true;
                                Modifier a822 = ComposedModifierKt.a(companion, new Function3() { // from class: androidx.compose.foundation.text.j
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object f(Object obj4, Object obj5, Object obj6) {
                                        ((Integer) obj6).getClass();
                                        GapComposer gapComposer523 = (GapComposer) ((Composer) obj5);
                                        gapComposer523.W(851809892);
                                        Object K19 = gapComposer523.K();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                        if (K19 == composer$Companion$Empty$1) {
                                            K19 = new Object();
                                            gapComposer523.g0(K19);
                                        }
                                        TextPreparedSelectionState textPreparedSelectionState = (TextPreparedSelectionState) K19;
                                        Object K20 = gapComposer523.K();
                                        if (K20 == composer$Companion$Empty$1) {
                                            K20 = new Object();
                                            gapComposer523.g0(K20);
                                        }
                                        TextFieldKeyInput textFieldKeyInput = new TextFieldKeyInput(LegacyTextFieldState.this, textFieldSelectionManager, textFieldValue, z1522, z14, textPreparedSelectionState, offsetMapping522, undoManager, (DeadKeyCombiner) K20, t6Var22, i1722);
                                        boolean h7 = gapComposer523.h(textFieldKeyInput);
                                        Object K21 = gapComposer523.K();
                                        if (h7 || K21 == composer$Companion$Empty$1) {
                                            FunctionReference functionReference = new FunctionReference(1, textFieldKeyInput, TextFieldKeyInput.class, "process", "process-ZmokQxo(Landroid/view/KeyEvent;)Z", 0);
                                            gapComposer523.g0(functionReference);
                                            K21 = functionReference;
                                        }
                                        Modifier a923 = KeyInputModifierKt.a(Modifier.Companion.b, (Function1) ((KFunction) K21));
                                        gapComposer523.p(false);
                                        return a923;
                                    }
                                });
                                int i1822 = imeOptions3.d;
                                if (i1822 == 7) {
                                }
                                boolean booleanValue222 = ((Boolean) mutableState.getValue()).booleanValue();
                                LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter3222 = legacyPlatformTextInputServiceAdapter;
                                g = gapComposer3.g(z11) | gapComposer3.h(legacyPlatformTextInputServiceAdapter3222);
                                K9 = gapComposer3.K();
                                if (!g) {
                                }
                                K9 = new q6(1, legacyPlatformTextInputServiceAdapter3222, z11);
                                gapComposer3.g0(K9);
                                Modifier a9222 = StylusHandwritingKt.a(booleanValue222, z11, (Function0) K9);
                                Brush brush222 = (Brush) gapComposer3.j(AutofillHighlightKt.a);
                                long j6222 = ((Color) gapComposer3.j(AutofillHighlightKt.b)).a;
                                if (Color.c(j6222, ColorKt.b(1308617531))) {
                                }
                                h5 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.f(solidColor2);
                                K10 = gapComposer3.K();
                                if (!h5) {
                                }
                                K10 = new defpackage.b(10, legacyTextFieldState4, solidColor2);
                                gapComposer3.g0(K10);
                                final FocusManager focusManager3222 = focusManager;
                                Modifier l3222 = KeyInputModifierKt.b(KeyInputModifierKt.b(LegacyAdaptingPlatformTextInputModifierNodeKt.a(modifier.l(DrawModifierKt.d(companion, (Function1) K10)), legacyPlatformTextInputServiceAdapter3222, legacyTextFieldState4, textFieldSelectionManager).l(a9222).l(modifier2), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                        InputDevice device = keyEvent.getDevice();
                                        boolean z16222 = false;
                                        if (device != null && device.supportsSource(513) && ((!device.isVirtual() || keyEvent.getSource() == 33554433) && KeyEvent_androidKt.b(keyEvent) == 2 && keyEvent.getSource() != 257)) {
                                            boolean a10222 = TextFieldFocusModifier_androidKt.a(19, keyEvent);
                                            FocusManager focusManager4 = FocusManager.this;
                                            if (a10222) {
                                                z16222 = ((FocusOwnerImpl) focusManager4).h(5, true);
                                            } else if (TextFieldFocusModifier_androidKt.a(20, keyEvent)) {
                                                z16222 = ((FocusOwnerImpl) focusManager4).h(6, true);
                                            } else if (TextFieldFocusModifier_androidKt.a(21, keyEvent)) {
                                                z16222 = ((FocusOwnerImpl) focusManager4).h(3, true);
                                            } else if (TextFieldFocusModifier_androidKt.a(22, keyEvent)) {
                                                z16222 = ((FocusOwnerImpl) focusManager4).h(4, true);
                                            } else if (TextFieldFocusModifier_androidKt.a(23, keyEvent)) {
                                                SoftwareKeyboardController softwareKeyboardController2 = legacyTextFieldState4.c;
                                                if (softwareKeyboardController2 != null) {
                                                    ((DelegatingSoftwareKeyboardController) softwareKeyboardController2).b();
                                                }
                                                z16222 = true;
                                            }
                                        }
                                        return Boolean.valueOf(z16222);
                                    }
                                }), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        boolean z16222;
                                        android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                        if (LegacyTextFieldState.this.a() == HandleState.k && keyEvent.getKeyCode() == 4) {
                                            z16222 = true;
                                            if (KeyEvent_androidKt.b(keyEvent) == 1) {
                                                textFieldSelectionManager.g(null);
                                                return Boolean.valueOf(z16222);
                                            }
                                        }
                                        z16222 = false;
                                        return Boolean.valueOf(z16222);
                                    }
                                }).l(a822);
                                final TextFieldScrollerPosition textFieldScrollerPosition4222 = textFieldScrollerPosition2;
                                final CoroutineScope coroutineScope5222 = coroutineScope3;
                                Modifier a10222 = TextContextMenuModifier_androidKt.a(OnGloballyPositionedModifierKt.a(ComposedModifierKt.a(l3222, new Function3() { // from class: dh
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object f(Object obj4, Object obj5, Object obj6) {
                                        boolean z16222;
                                        boolean z17;
                                        TextFieldScrollerPosition textFieldScrollerPosition5 = TextFieldScrollerPosition.this;
                                        MutableState mutableState2 = textFieldScrollerPosition5.f;
                                        ((Integer) obj6).getClass();
                                        GapComposer gapComposer5222 = (GapComposer) ((Composer) obj5);
                                        gapComposer5222.W(-2137546592);
                                        boolean z18 = true;
                                        if (gapComposer5222.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                                            z16222 = true;
                                        } else {
                                            z16222 = false;
                                        }
                                        if (((Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue()) != Orientation.j && z16222) {
                                            z17 = false;
                                        } else {
                                            z17 = true;
                                        }
                                        boolean f5 = gapComposer5222.f(textFieldScrollerPosition5);
                                        Object K19 = gapComposer5222.K();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                        if (f5 || K19 == composer$Companion$Empty$1) {
                                            K19 = new ma(29, textFieldScrollerPosition5);
                                            gapComposer5222.g0(K19);
                                        }
                                        ScrollableState b4 = ScrollableStateKt.b((Function1) K19, gapComposer5222);
                                        boolean f6 = gapComposer5222.f(b4) | gapComposer5222.f(textFieldScrollerPosition5);
                                        Object K20 = gapComposer5222.K();
                                        if (f6 || K20 == composer$Companion$Empty$1) {
                                            K20 = new ScrollableState(textFieldScrollerPosition5) { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1
                                                public final State b;
                                                public final State c;

                                                {
                                                    final int i19 = 0;
                                                    this.b = SnapshotStateKt.e(new Function0() { // from class: eh
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object a() {
                                                            int i202 = i19;
                                                            boolean z19 = false;
                                                            TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                            switch (i202) {
                                                                case 0:
                                                                    if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                        z19 = true;
                                                                    }
                                                                    return Boolean.valueOf(z19);
                                                                default:
                                                                    if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                        z19 = true;
                                                                    }
                                                                    return Boolean.valueOf(z19);
                                                            }
                                                        }
                                                    });
                                                    final int i20 = 1;
                                                    this.c = SnapshotStateKt.e(new Function0() { // from class: eh
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object a() {
                                                            int i202 = i20;
                                                            boolean z19 = false;
                                                            TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                            switch (i202) {
                                                                case 0:
                                                                    if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                        z19 = true;
                                                                    }
                                                                    return Boolean.valueOf(z19);
                                                                default:
                                                                    if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                        z19 = true;
                                                                    }
                                                                    return Boolean.valueOf(z19);
                                                            }
                                                        }
                                                    });
                                                }

                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                public final boolean a() {
                                                    return ScrollableState.this.a();
                                                }

                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                public final boolean b() {
                                                    return ((Boolean) this.c.getValue()).booleanValue();
                                                }

                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
                                                    return ScrollableState.this.c(mutatePriority, function2, continuationImpl);
                                                }

                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                public final boolean d() {
                                                    return ((Boolean) this.b.getValue()).booleanValue();
                                                }

                                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                                public final float e(float f7) {
                                                    return ScrollableState.this.e(f7);
                                                }
                                            };
                                            gapComposer5222.g0(K20);
                                        }
                                        TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 = (TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1) K20;
                                        Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue();
                                        if (!z2 || ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition5.b).j() == 0.0f) {
                                            z18 = false;
                                        }
                                        Modifier b5 = ScrollableKt.b(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation2, z18, z17, mutableInteractionSource2);
                                        gapComposer5222.p(false);
                                        return b5;
                                    }
                                }).l(a522).l(coreTextFieldSemanticsModifier22), new t6(legacyTextFieldState4, 0)), new zc(8, textFieldSelectionManager, coroutineScope5222));
                                if (z2) {
                                }
                                if (z12) {
                                }
                                GapComposer gapComposer5222 = gapComposer3;
                                final Modifier companion3222 = a7;
                                final BringIntoViewRequester bringIntoViewRequester3222 = bringIntoViewRequester2;
                                final WindowInfo windowInfo3222 = windowInfo;
                                final Modifier modifier4222 = modifier3;
                                final Density density4222 = density2;
                                final boolean z16222 = z12;
                                gapComposer = gapComposer5222;
                                b(a10222, textFieldSelectionManager, ComposableLambdaKt.b(-814563849, new Function2() { // from class: u6
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object n(Object obj4, Object obj5) {
                                        boolean z17;
                                        Composer composer2 = (Composer) obj4;
                                        int intValue = ((Integer) obj5).intValue();
                                        if ((intValue & 3) != 2) {
                                            z17 = true;
                                        } else {
                                            z17 = false;
                                        }
                                        GapComposer gapComposer6 = (GapComposer) composer2;
                                        if (gapComposer6.N(intValue & 1, z17)) {
                                            final TextStyle textStyle3 = textStyle;
                                            final LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState4;
                                            final int i19 = i2;
                                            final int i20 = i;
                                            final boolean z18 = z;
                                            final TextFieldScrollerPosition textFieldScrollerPosition5 = textFieldScrollerPosition4222;
                                            final TextFieldValue textFieldValue5 = textFieldValue;
                                            final VisualTransformation visualTransformation2 = visualTransformation;
                                            final Modifier modifier5 = companion3222;
                                            final Modifier modifier6 = b322;
                                            final Modifier modifier7 = a622;
                                            final Modifier modifier8 = modifier4222;
                                            final BringIntoViewRequester bringIntoViewRequester4 = bringIntoViewRequester3222;
                                            final TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager;
                                            final boolean z19 = z16222;
                                            final WindowInfo windowInfo4 = windowInfo3222;
                                            final CoroutineScope coroutineScope6 = coroutineScope5222;
                                            final Function1 function15 = function12;
                                            final OffsetMapping offsetMapping6 = offsetMapping522;
                                            final Density density5 = density4222;
                                            ComposableLambdaImpl.this.f(ComposableLambdaKt.b(-44346382, new Function2() { // from class: androidx.compose.foundation.text.b
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object n(Object obj6, Object obj7) {
                                                    boolean z20;
                                                    float f5;
                                                    Modifier verticalScrollLayoutModifier;
                                                    Composer composer3 = (Composer) obj6;
                                                    int intValue2 = ((Integer) obj7).intValue();
                                                    if ((intValue2 & 3) != 2) {
                                                        z20 = true;
                                                    } else {
                                                        z20 = false;
                                                    }
                                                    GapComposer gapComposer7 = (GapComposer) composer3;
                                                    if (gapComposer7.N(intValue2 & 1, z20)) {
                                                        final LegacyTextFieldState legacyTextFieldState7 = legacyTextFieldState6;
                                                        float f6 = ((Dp) ((SnapshotMutableStateImpl) legacyTextFieldState7.g).getValue()).j;
                                                        if (Dp.b(f6, 0.0f)) {
                                                            f5 = Float.NaN;
                                                        } else {
                                                            f5 = f6;
                                                        }
                                                        Modifier f7 = SizeKt.f(Modifier.Companion.b, f6, f5);
                                                        int i21 = i19;
                                                        final int i22 = i20;
                                                        HeightInLinesModifierKt.b(i21, i22);
                                                        TextStyle textStyle4 = TextStyle.this;
                                                        if ((i21 != 1 || i22 != Integer.MAX_VALUE) && z18) {
                                                            f7 = f7.l(new HeightInLinesElement(textStyle4, i21, i22));
                                                        }
                                                        boolean h7 = gapComposer7.h(legacyTextFieldState7);
                                                        Object K19 = gapComposer7.K();
                                                        if (h7 || K19 == Composer.Companion.a) {
                                                            K19 = new r1(11, legacyTextFieldState7);
                                                            gapComposer7.g0(K19);
                                                        }
                                                        Function0 function0 = (Function0) K19;
                                                        TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                        Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition6.f).getValue();
                                                        final TextFieldValue textFieldValue6 = textFieldValue5;
                                                        long j7 = textFieldValue6.b;
                                                        int i23 = TextRange.c;
                                                        int i24 = (int) (j7 >> 32);
                                                        long j8 = textFieldScrollerPosition6.e;
                                                        if (i24 == ((int) (j8 >> 32)) && (i24 = (int) (j7 & 4294967295L)) == ((int) (j8 & 4294967295L))) {
                                                            i24 = TextRange.f(j7);
                                                        }
                                                        textFieldScrollerPosition6.e = textFieldValue6.b;
                                                        TransformedText a11 = ValidatingOffsetMappingKt.a(visualTransformation2, textFieldValue6.a);
                                                        int ordinal = orientation2.ordinal();
                                                        if (ordinal != 0) {
                                                            if (ordinal == 1) {
                                                                verticalScrollLayoutModifier = new HorizontalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                            } else {
                                                                k8.e();
                                                                return null;
                                                            }
                                                        } else {
                                                            verticalScrollLayoutModifier = new VerticalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                        }
                                                        Modifier l4 = ClipKt.b(OverscrollKt.a(f7)).l(verticalScrollLayoutModifier).l(modifier5).l(modifier6).l(new TextFieldSizeElement(textStyle4)).l(modifier7).l(modifier8);
                                                        final BringIntoViewRequester bringIntoViewRequester5 = bringIntoViewRequester4;
                                                        Modifier b4 = BringIntoViewRequesterKt.b(l4, bringIntoViewRequester5);
                                                        final TextFieldSelectionManager textFieldSelectionManager4 = textFieldSelectionManager3;
                                                        final boolean z21 = z19;
                                                        final WindowInfo windowInfo5 = windowInfo4;
                                                        final CoroutineScope coroutineScope7 = coroutineScope6;
                                                        final Function1 function16 = function15;
                                                        final OffsetMapping offsetMapping7 = offsetMapping6;
                                                        final Density density6 = density5;
                                                        SimpleLayoutKt.a(b4, ComposableLambdaKt.b(1412697320, new Function2() { // from class: s6
                                                            /* JADX WARN: Code restructure failed: missing block: B:15:0x009e, code lost:
                                                            
                                                                if (r0 != false) goto L21;
                                                             */
                                                            @Override // kotlin.jvm.functions.Function2
                                                            /*
                                                                Code decompiled incorrectly, please refer to instructions dump.
                                                            */
                                                            public final Object n(Object obj8, Object obj9) {
                                                                boolean z22;
                                                                Composer composer4 = (Composer) obj8;
                                                                int intValue3 = ((Integer) obj9).intValue();
                                                                boolean z23 = true;
                                                                if ((intValue3 & 3) != 2) {
                                                                    z22 = true;
                                                                } else {
                                                                    z22 = false;
                                                                }
                                                                GapComposer gapComposer8 = (GapComposer) composer4;
                                                                if (gapComposer8.N(intValue3 & 1, z22)) {
                                                                    final LegacyTextFieldState legacyTextFieldState8 = legacyTextFieldState7;
                                                                    final TextFieldSelectionManager textFieldSelectionManager5 = TextFieldSelectionManager.this;
                                                                    final WindowInfo windowInfo6 = windowInfo5;
                                                                    final CoroutineScope coroutineScope8 = coroutineScope7;
                                                                    final Function1 function17 = function16;
                                                                    final TextFieldValue textFieldValue7 = textFieldValue6;
                                                                    final OffsetMapping offsetMapping8 = offsetMapping7;
                                                                    final Density density7 = density6;
                                                                    final BringIntoViewRequester bringIntoViewRequester6 = bringIntoViewRequester5;
                                                                    final int i25 = i22;
                                                                    MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2
                                                                        /* JADX WARN: Removed duplicated region for block: B:38:0x01c8  */
                                                                        /* JADX WARN: Removed duplicated region for block: B:64:0x0258  */
                                                                        /* JADX WARN: Removed duplicated region for block: B:67:0x0262  */
                                                                        /* JADX WARN: Removed duplicated region for block: B:69:0x0251  */
                                                                        @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                        /*
                                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                                        */
                                                                        public final MeasureResult a(MeasureScope measureScope, List list, long j9) {
                                                                            Function1 function18;
                                                                            TextLayoutResult textLayoutResult;
                                                                            long j10;
                                                                            TextLayoutResult textLayoutResult2;
                                                                            LayoutDirection layoutDirection;
                                                                            TextLayoutResult textLayoutResult3;
                                                                            TextLayoutResult textLayoutResult4;
                                                                            CoreTextFieldKt$CoreTextField$8$1$1$2 coreTextFieldKt$CoreTextField$8$1$1$2;
                                                                            int i26;
                                                                            LayoutCoordinates layoutCoordinates;
                                                                            AnnotatedString annotatedString6;
                                                                            TextLayoutInput textLayoutInput;
                                                                            int h8;
                                                                            int i27;
                                                                            LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                            Snapshot a12 = Snapshot.Companion.a();
                                                                            if (a12 != null) {
                                                                                function18 = a12.e();
                                                                            } else {
                                                                                function18 = null;
                                                                            }
                                                                            Snapshot b5 = Snapshot.Companion.b(a12);
                                                                            try {
                                                                                TextLayoutResultProxy d2 = legacyTextFieldState9.d();
                                                                                if (d2 != null) {
                                                                                    textLayoutResult = d2.a;
                                                                                } else {
                                                                                    textLayoutResult = null;
                                                                                }
                                                                                TextDelegate textDelegate2 = legacyTextFieldState9.a;
                                                                                LayoutDirection layoutDirection2 = measureScope.getLayoutDirection();
                                                                                int i28 = textDelegate2.f;
                                                                                boolean z24 = textDelegate2.e;
                                                                                int i29 = textDelegate2.c;
                                                                                if (textLayoutResult != null) {
                                                                                    MultiParagraph multiParagraph = textLayoutResult.b;
                                                                                    TextLayoutInput textLayoutInput2 = textLayoutResult.a;
                                                                                    AnnotatedString annotatedString7 = textDelegate2.a;
                                                                                    TextStyle textStyle5 = textDelegate2.b;
                                                                                    List list2 = textDelegate2.i;
                                                                                    Density density8 = textDelegate2.g;
                                                                                    FontFamily.Resolver resolver3 = textDelegate2.h;
                                                                                    TextLayoutResult textLayoutResult5 = textLayoutResult;
                                                                                    if (multiParagraph.a.a()) {
                                                                                        j10 = j9;
                                                                                        layoutDirection = layoutDirection2;
                                                                                    } else {
                                                                                        AnnotatedString annotatedString8 = textLayoutInput2.a;
                                                                                        long j11 = textLayoutInput2.j;
                                                                                        if (Intrinsics.a(annotatedString8, annotatedString7) && textLayoutInput2.b.c(textStyle5) && Intrinsics.a(textLayoutInput2.c, list2) && textLayoutInput2.d == i29 && textLayoutInput2.e == z24 && textLayoutInput2.f == i28 && Intrinsics.a(textLayoutInput2.g, density8)) {
                                                                                            layoutDirection = layoutDirection2;
                                                                                            if (textLayoutInput2.h == layoutDirection && Intrinsics.a(textLayoutInput2.i, resolver3) && Constraints.j(j9) == Constraints.j(j11) && ((!z24 && i28 != 2) || (Constraints.h(j9) == Constraints.h(j11) && Constraints.g(j9) == Constraints.g(j11)))) {
                                                                                                textLayoutResult2 = textLayoutResult5;
                                                                                                textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput2.a, textDelegate2.b, textLayoutInput2.c, textLayoutInput2.d, textLayoutInput2.e, textLayoutInput2.f, textLayoutInput2.g, textLayoutInput2.h, textLayoutInput2.i, j9), multiParagraph, ConstraintsKt.d(j9, (TextDelegateKt.a(multiParagraph.e) & 4294967295L) | (TextDelegateKt.a(multiParagraph.d) << 32)));
                                                                                                long j12222 = textLayoutResult3.c;
                                                                                                Integer valueOf322 = Integer.valueOf((int) (j12222 >> 32));
                                                                                                Integer valueOf2222 = Integer.valueOf((int) (j12222 & 4294967295L));
                                                                                                int intValue4222 = valueOf322.intValue();
                                                                                                int intValue5222 = valueOf2222.intValue();
                                                                                                MultiParagraph multiParagraph2222 = textLayoutResult3.b;
                                                                                                multiParagraph2222.a.a();
                                                                                                textLayoutResult4 = textLayoutResult2;
                                                                                                if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                                    if (d2 != null) {
                                                                                                        layoutCoordinates = d2.c;
                                                                                                    } else {
                                                                                                        layoutCoordinates = null;
                                                                                                    }
                                                                                                    ((SnapshotMutableStateImpl) legacyTextFieldState9.i).setValue(new TextLayoutResultProxy(textLayoutResult3, layoutCoordinates));
                                                                                                    legacyTextFieldState9.p = false;
                                                                                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                                    TextFieldSelectionManager textFieldSelectionManager6 = textFieldSelectionManager5;
                                                                                                    if (textFieldSelectionManager6.l() && textFieldSelectionManager6.k() && ((LazyWindowInfo) windowInfo6).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.B).getValue()).a) && legacyTextFieldState9.b()) {
                                                                                                        if (textLayoutResult4 != null && (textLayoutInput = textLayoutResult4.a) != null) {
                                                                                                            annotatedString6 = textLayoutInput.a;
                                                                                                        } else {
                                                                                                            annotatedString6 = null;
                                                                                                        }
                                                                                                        if (!Intrinsics.a(annotatedString6, textLayoutResult3.a.a)) {
                                                                                                            BuildersKt.c(coroutineScope8, null, null, new CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1(textFieldSelectionManager6, bringIntoViewRequester6, null), 3);
                                                                                                        }
                                                                                                    }
                                                                                                    function17.b(textLayoutResult3);
                                                                                                    CoreTextFieldKt.f(legacyTextFieldState9, textFieldValue7, offsetMapping8);
                                                                                                } else {
                                                                                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                                }
                                                                                                if (i25 != 1) {
                                                                                                    i26 = TextDelegateKt.a(multiParagraph2222.b(0));
                                                                                                } else {
                                                                                                    i26 = 0;
                                                                                                }
                                                                                                ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                                return measureScope.B(intValue4222, intValue5222, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                            }
                                                                                            j10 = j9;
                                                                                        } else {
                                                                                            j10 = j9;
                                                                                            textLayoutResult2 = textLayoutResult5;
                                                                                            layoutDirection = layoutDirection2;
                                                                                        }
                                                                                    }
                                                                                    textLayoutResult2 = textLayoutResult5;
                                                                                } else {
                                                                                    j10 = j9;
                                                                                    textLayoutResult2 = textLayoutResult;
                                                                                    layoutDirection = layoutDirection2;
                                                                                }
                                                                                textDelegate2.a(layoutDirection);
                                                                                int j13 = Constraints.j(j10);
                                                                                if ((z24 || i28 == 2) && Constraints.d(j10)) {
                                                                                    h8 = Constraints.h(j10);
                                                                                } else {
                                                                                    h8 = Integer.MAX_VALUE;
                                                                                }
                                                                                if (!z24 && i28 == 2) {
                                                                                    i27 = 1;
                                                                                } else {
                                                                                    i27 = i29;
                                                                                }
                                                                                if (j13 != h8) {
                                                                                    MultiParagraphIntrinsics multiParagraphIntrinsics = textDelegate2.j;
                                                                                    if (multiParagraphIntrinsics != null) {
                                                                                        h8 = RangesKt.d(TextDelegateKt.a(multiParagraphIntrinsics.c()), j13, h8);
                                                                                    } else {
                                                                                        u2.l("layoutIntrinsics must be called first");
                                                                                        return null;
                                                                                    }
                                                                                }
                                                                                MultiParagraphIntrinsics multiParagraphIntrinsics2 = textDelegate2.j;
                                                                                if (multiParagraphIntrinsics2 != null) {
                                                                                    textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textDelegate2.a, textDelegate2.b, textDelegate2.i, textDelegate2.c, textDelegate2.e, textDelegate2.f, textDelegate2.g, layoutDirection, textDelegate2.h, j10), new MultiParagraph(multiParagraphIntrinsics2, Constraints.Companion.b(0, h8, 0, Constraints.g(j10)), i27, textDelegate2.f), ConstraintsKt.d(j10, (TextDelegateKt.a(r25.d) << 32) | (TextDelegateKt.a(r25.e) & 4294967295L)));
                                                                                    long j122222 = textLayoutResult3.c;
                                                                                    Integer valueOf3222 = Integer.valueOf((int) (j122222 >> 32));
                                                                                    Integer valueOf22222 = Integer.valueOf((int) (j122222 & 4294967295L));
                                                                                    int intValue42222 = valueOf3222.intValue();
                                                                                    int intValue52222 = valueOf22222.intValue();
                                                                                    MultiParagraph multiParagraph22222 = textLayoutResult3.b;
                                                                                    multiParagraph22222.a.a();
                                                                                    textLayoutResult4 = textLayoutResult2;
                                                                                    if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                    }
                                                                                    if (i25 != 1) {
                                                                                    }
                                                                                    ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                    return measureScope.B(intValue42222, intValue52222, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                }
                                                                                u2.l("layoutIntrinsics must be called first");
                                                                                return null;
                                                                            } finally {
                                                                                Snapshot.Companion.e(a12, b5, function18);
                                                                            }
                                                                        }

                                                                        @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                        public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                                                                            LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                            legacyTextFieldState9.a.a(intrinsicMeasureScope.getLayoutDirection());
                                                                            MultiParagraphIntrinsics multiParagraphIntrinsics = legacyTextFieldState9.a.j;
                                                                            if (multiParagraphIntrinsics != null) {
                                                                                return TextDelegateKt.a(multiParagraphIntrinsics.c());
                                                                            }
                                                                            u2.l("layoutIntrinsics must be called first");
                                                                            return 0;
                                                                        }
                                                                    };
                                                                    int hashCode = Long.hashCode(gapComposer8.T);
                                                                    PersistentCompositionLocalMap l5 = gapComposer8.l();
                                                                    Modifier c = ComposedModifierKt.c(gapComposer8, Modifier.Companion.b);
                                                                    ComposeUiNode.b.getClass();
                                                                    gapComposer8.Z();
                                                                    if (gapComposer8.S) {
                                                                        gapComposer8.k(LayoutNode.b0);
                                                                    } else {
                                                                        gapComposer8.j0();
                                                                    }
                                                                    Updater.c(gapComposer8, measurePolicy, ComposeUiNode.Companion.d);
                                                                    Updater.c(gapComposer8, l5, ComposeUiNode.Companion.c);
                                                                    Updater.c(gapComposer8, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                                                    Updater.b(gapComposer8);
                                                                    Updater.c(gapComposer8, c, ComposeUiNode.Companion.b);
                                                                    gapComposer8.p(true);
                                                                    HandleState a12 = legacyTextFieldState8.a();
                                                                    HandleState handleState = HandleState.j;
                                                                    boolean z24 = z21;
                                                                    if (a12 != handleState && legacyTextFieldState8.c() != null) {
                                                                        LayoutCoordinates c2 = legacyTextFieldState8.c();
                                                                        c2.getClass();
                                                                        if (c2.o()) {
                                                                        }
                                                                    }
                                                                    z23 = false;
                                                                    CoreTextFieldKt.c(textFieldSelectionManager5, z23, gapComposer8, 0);
                                                                    if (legacyTextFieldState8.a() == HandleState.l && z24) {
                                                                        gapComposer8.W(-713510518);
                                                                        CoreTextFieldKt.d(textFieldSelectionManager5, gapComposer8, 0);
                                                                        gapComposer8.p(false);
                                                                    } else {
                                                                        gapComposer8.W(-713433638);
                                                                        gapComposer8.p(false);
                                                                    }
                                                                } else {
                                                                    gapComposer8.Q();
                                                                }
                                                                return Unit.a;
                                                            }
                                                        }, gapComposer7), gapComposer7, 48);
                                                    } else {
                                                        gapComposer7.Q();
                                                    }
                                                    return Unit.a;
                                                }
                                            }, gapComposer6), gapComposer6, 6);
                                        } else {
                                            gapComposer6.Q();
                                        }
                                        return Unit.a;
                                    }
                                }, gapComposer), gapComposer, 384);
                            }
                        }
                        z6 = false;
                        if (textRange == null) {
                        }
                        z7 = z5;
                        if (z7) {
                        }
                        EditingBuffer editingBuffer222 = editProcessor.b;
                        editingBuffer222.d = -1;
                        editingBuffer222.e = -1;
                        a = TextFieldValue.a(textFieldValue, null, 0L, 3);
                        textFieldValue2 = editProcessor.a;
                        editProcessor.a = a;
                        if (textInputSession != null) {
                        }
                        K = gapComposer2.K();
                        if (K == obj3) {
                        }
                        undoManager = (UndoManager) K;
                        long currentTimeMillis22 = System.currentTimeMillis();
                        if (!undoManager.e) {
                        }
                        undoManager.d = Long.valueOf(currentTimeMillis22);
                        undoManager.a(textFieldValue);
                        K2 = gapComposer2.K();
                        if (K2 == obj3) {
                        }
                        coroutineScope = (CoroutineScope) K2;
                        K3 = gapComposer2.K();
                        if (K3 == obj3) {
                        }
                        bringIntoViewRequester = (BringIntoViewRequester) K3;
                        K4 = gapComposer2.K();
                        if (K4 == obj3) {
                        }
                        final TextFieldSelectionManager textFieldSelectionManager222 = (TextFieldSelectionManager) K4;
                        textFieldSelectionManager222.b = offsetMapping3;
                        textFieldSelectionManager222.c = legacyTextFieldState5.v;
                        textFieldSelectionManager222.d = legacyTextFieldState5;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager222.e).setValue(textFieldValue);
                        textFieldSelectionManager222.v = new TextRange(j4);
                        textFieldSelectionManager222.g = (Clipboard) gapComposer2.j(CompositionLocalsKt.f);
                        textFieldSelectionManager222.h = coroutineScope;
                        textFieldSelectionManager222.j = (HapticFeedback) gapComposer2.j(CompositionLocalsKt.l);
                        focusRequester2 = focusRequester;
                        textFieldSelectionManager222.k = focusRequester2;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager222.l).setValue(true);
                        ((SnapshotMutableStateImpl) textFieldSelectionManager222.m).setValue(Boolean.valueOf(z2));
                        gapComposer2.W(1966756105);
                        SelectedTextType selectedTextType22 = SelectedTextType.j;
                        LocaleList localeList22 = textStyle.a.k;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal22 = PlatformSelectionBehaviors_androidKt.a;
                        gapComposer2.W(430530635);
                        Context context22 = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
                        CoroutineContext coroutineContext22 = (CoroutineContext) gapComposer2.j(PlatformSelectionBehaviors_androidKt.a);
                        f = gapComposer2.f(coroutineContext22) | gapComposer2.f(context22) | gapComposer2.f(localeList22);
                        K5 = gapComposer2.K();
                        if (!f) {
                        }
                        K5 = (PlatformSelectionBehaviors) PlatformSelectionBehaviors_androidKt.b.j(coroutineContext22, context22, selectedTextType22, localeList22);
                        gapComposer2.g0(K5);
                        gapComposer2.p(false);
                        textFieldSelectionManager222.i = (PlatformSelectionBehaviors) K5;
                        gapComposer2.p(false);
                        legacyTextFieldState5.b();
                        i8 = i7;
                        int i1522 = i8 & 7168;
                        i9 = (i8 & 112) ^ 48;
                        h = gapComposer2.h(legacyTextFieldState5) | (i1522 != 2048) | ((i8 & 57344) != 16384) | gapComposer2.h(textInputService4) | (i13 != 4) | ((i9 <= 32 && gapComposer2.f(imeOptions)) || (i8 & 48) == 32) | gapComposer2.h(offsetMapping3) | gapComposer2.h(coroutineScope) | gapComposer2.h(bringIntoViewRequester) | gapComposer2.h(textFieldSelectionManager222);
                        Object K1722 = gapComposer2.K();
                        if (h) {
                        }
                        mutableInteractionSource2 = mutableInteractionSource;
                        gapComposer3 = gapComposer2;
                        legacyTextFieldState = legacyTextFieldState5;
                        textInputService = textInputService4;
                        i10 = i13;
                        focusManager = focusManager2;
                        i11 = i8;
                        legacyPlatformTextInputServiceAdapter = legacyPlatformTextInputServiceAdapter2;
                        focusRequester3 = focusRequester2;
                        textFieldScrollerPosition2 = textFieldScrollerPosition;
                        imeOptions2 = imeOptions;
                        transformedText2 = transformedText;
                        obj2 = obj3;
                        obj = new Function1() { // from class: androidx.compose.foundation.text.c
                            /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj4) {
                                TextLayoutResultProxy d2;
                                LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                                boolean b33 = legacyTextFieldState6.b();
                                FocusStateImpl focusStateImpl = (FocusStateImpl) ((FocusState) obj4);
                                boolean b4 = focusStateImpl.b();
                                Unit unit = Unit.a;
                                if (b33 != b4) {
                                    ((SnapshotMutableStateImpl) legacyTextFieldState6.f).setValue(Boolean.valueOf(focusStateImpl.b()));
                                    boolean b5 = legacyTextFieldState6.b();
                                    TextFieldValue textFieldValue43 = textFieldValue;
                                    OffsetMapping offsetMapping43 = offsetMapping3;
                                    if (b5 && z2) {
                                        EditProcessor editProcessor2 = legacyTextFieldState6.d;
                                        t6 t6Var3 = legacyTextFieldState6.v;
                                        t6 t6Var222 = legacyTextFieldState6.w;
                                        ?? obj5 = new Object();
                                        p2 p2Var = new p2(editProcessor2, t6Var3, (Object) obj5, 17);
                                        TextInputService textInputService53 = textInputService;
                                        PlatformTextInputService platformTextInputService = textInputService53.a;
                                        platformTextInputService.c(textFieldValue43, imeOptions2, p2Var, t6Var222);
                                        TextInputSession textInputSession2 = new TextInputSession(textInputService53, platformTextInputService);
                                        textInputService53.b.set(textInputSession2);
                                        obj5.j = textInputSession2;
                                        legacyTextFieldState6.e = textInputSession2;
                                        CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue43, offsetMapping43);
                                    } else {
                                        CoreTextFieldKt.e(legacyTextFieldState6);
                                    }
                                    if (focusStateImpl.b() && (d2 = legacyTextFieldState6.d()) != null) {
                                        BuildersKt.c(coroutineScope, null, null, new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(bringIntoViewRequester, textFieldValue43, legacyTextFieldState6, d2, offsetMapping43, null), 3);
                                    }
                                    if (!focusStateImpl.b()) {
                                        textFieldSelectionManager222.g(null);
                                    }
                                }
                                return unit;
                            }
                        };
                        z8 = z2;
                        coroutineScope2 = coroutineScope;
                        textFieldValue3 = textFieldValue;
                        textFieldSelectionManager222 = textFieldSelectionManager222;
                        bringIntoViewRequester2 = bringIntoViewRequester;
                        offsetMapping = offsetMapping3;
                        gapComposer3.g0(obj);
                        Modifier.Companion companion222 = Modifier.Companion.b;
                        CoroutineScope coroutineScope422 = coroutineScope2;
                        Modifier a422 = FocusableKt.a(FocusChangedModifierKt.a(FocusRequesterModifierKt.a(companion222, focusRequester3), (Function1) obj), z8, mutableInteractionSource2);
                        MutableState k22 = SnapshotStateKt.k(Boolean.valueOf(z8), gapComposer3);
                        boolean f322 = gapComposer3.f(k22) | gapComposer3.h(legacyTextFieldState) | gapComposer3.h(textInputService) | gapComposer3.h(textFieldSelectionManager222);
                        if (i9 > 32) {
                        }
                        legacyTextFieldState2 = legacyTextFieldState;
                        if ((i11 & 48) != 32) {
                        }
                        z9 = true;
                        z10 = f322 | z9;
                        Object K18222 = gapComposer3.K();
                        if (z10) {
                        }
                        focusRequester4 = focusRequester3;
                        coroutineScope3 = coroutineScope422;
                        modifier2 = a422;
                        companion = companion222;
                        legacyTextFieldState3 = legacyTextFieldState2;
                        coreTextFieldKt$CoreTextField$5$1 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState3, k22, textInputService, textFieldSelectionManager222, imeOptions2, null);
                        mutableState = k22;
                        textInputService2 = textInputService;
                        gapComposer3.g0(coreTextFieldKt$CoreTextField$5$1);
                        EffectsKt.e(gapComposer3, Unit.a, (Function2) coreTextFieldKt$CoreTextField$5$1);
                        Modifier f4222 = SelectionGesturesKt.f(new t6(legacyTextFieldState3, 4));
                        final OffsetMapping offsetMapping4222 = offsetMapping;
                        FocusRequester focusRequester6222 = focusRequester4;
                        final pb pbVar222 = new pb(legacyTextFieldState3, focusRequester6222, z8, textFieldSelectionManager222, offsetMapping4222);
                        Modifier l2222 = (z2 ? ComposedModifierKt.a(f4222, new Function3() { // from class: androidx.compose.foundation.text.k
                            @Override // kotlin.jvm.functions.Function3
                            public final Object f(Object obj4, Object obj5, Object obj6) {
                                ((Integer) obj6).getClass();
                                GapComposer gapComposer523 = (GapComposer) ((Composer) obj5);
                                gapComposer523.W(-102778667);
                                Object K19 = gapComposer523.K();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                if (K19 == composer$Companion$Empty$1) {
                                    K19 = EffectsKt.h(gapComposer523);
                                    gapComposer523.g0(K19);
                                }
                                final CoroutineScope coroutineScope523 = (CoroutineScope) K19;
                                Object K20 = gapComposer523.K();
                                if (K20 == composer$Companion$Empty$1) {
                                    K20 = SnapshotStateKt.g(null);
                                    gapComposer523.g0(K20);
                                }
                                final MutableState mutableState2 = (MutableState) K20;
                                final MutableState k222 = SnapshotStateKt.k(pb.this, gapComposer523);
                                final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                                boolean f5 = gapComposer523.f(mutableInteractionSource3);
                                Object K21 = gapComposer523.K();
                                if (f5 || K21 == composer$Companion$Empty$1) {
                                    K21 = new ec(14, mutableState2, mutableInteractionSource3);
                                    gapComposer523.g0(K21);
                                }
                                EffectsKt.c(mutableInteractionSource3, (Function1) K21, gapComposer523);
                                boolean h6222 = gapComposer523.h(coroutineScope523) | gapComposer523.f(mutableInteractionSource3) | gapComposer523.f(k222);
                                Object K22 = gapComposer523.K();
                                if (h6222 || K22 == composer$Companion$Empty$1) {
                                    K22 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1

                                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                        @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", l = {67}, m = "invokeSuspend", v = 1)
                                        /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name */
                                        /* loaded from: classes.dex */
                                        final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
                                            public int n;
                                            public /* synthetic */ PressGestureScope o;
                                            public /* synthetic */ long p;
                                            public final /* synthetic */ CoroutineScope q;
                                            public final /* synthetic */ MutableState r;
                                            public final /* synthetic */ MutableInteractionSource s;

                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                            @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1", f = "TextFieldPressGestureFilter.kt", l = {60, 64}, m = "invokeSuspend", v = 1)
                                            /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1, reason: invalid class name and collision with other inner class name */
                                            /* loaded from: classes.dex */
                                            public final class C00051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                public Object n;
                                                public int o;
                                                public final /* synthetic */ MutableState p;
                                                public final /* synthetic */ long q;
                                                public final /* synthetic */ MutableInteractionSource r;

                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                public C00051(MutableState mutableState, long j, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                    super(2, continuation);
                                                    this.p = mutableState;
                                                    this.q = j;
                                                    this.r = mutableInteractionSource;
                                                }

                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object n(Object obj, Object obj2) {
                                                    return ((C00051) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Continuation s(Object obj, Continuation continuation) {
                                                    return new C00051(this.p, this.q, this.r, continuation);
                                                }

                                                /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
                                                
                                                    if (r3.a(r1, r7) == r0) goto L23;
                                                 */
                                                /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                /*
                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                */
                                                public final Object v(Object obj) {
                                                    MutableState mutableState;
                                                    PressInteraction.Press press;
                                                    PressInteraction.Press press2;
                                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                    int i = this.o;
                                                    MutableInteractionSource mutableInteractionSource = this.r;
                                                    MutableState mutableState2 = this.p;
                                                    if (i != 0) {
                                                        if (i != 1) {
                                                            if (i == 2) {
                                                                press2 = (PressInteraction.Press) this.n;
                                                                ResultKt.b(obj);
                                                                press = press2;
                                                                mutableState2.setValue(press);
                                                                return Unit.a;
                                                            }
                                                            u2.l("call to 'resume' before 'invoke' with coroutine");
                                                            return null;
                                                        }
                                                        mutableState = (MutableState) this.n;
                                                        ResultKt.b(obj);
                                                    } else {
                                                        ResultKt.b(obj);
                                                        PressInteraction.Press press3 = (PressInteraction.Press) mutableState2.getValue();
                                                        if (press3 != null) {
                                                            PressInteraction.Cancel cancel = new PressInteraction.Cancel(press3);
                                                            if (mutableInteractionSource != null) {
                                                                this.n = mutableState2;
                                                                this.o = 1;
                                                            }
                                                            mutableState = mutableState2;
                                                        }
                                                        press = new PressInteraction.Press(this.q);
                                                        if (mutableInteractionSource != null) {
                                                            this.n = press;
                                                            this.o = 2;
                                                            if (mutableInteractionSource.a(press, this) != coroutineSingletons) {
                                                                press2 = press;
                                                                press = press2;
                                                            }
                                                            return coroutineSingletons;
                                                        }
                                                        mutableState2.setValue(press);
                                                        return Unit.a;
                                                    }
                                                    mutableState.setValue(null);
                                                    press = new PressInteraction.Press(this.q);
                                                    if (mutableInteractionSource != null) {
                                                    }
                                                    mutableState2.setValue(press);
                                                    return Unit.a;
                                                }
                                            }

                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                            @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2", f = "TextFieldPressGestureFilter.kt", l = {76}, m = "invokeSuspend", v = 1)
                                            /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2, reason: invalid class name */
                                            /* loaded from: classes.dex */
                                            public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                public MutableState n;
                                                public int o;
                                                public final /* synthetic */ MutableState p;
                                                public final /* synthetic */ boolean q;
                                                public final /* synthetic */ MutableInteractionSource r;

                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                public AnonymousClass2(MutableState mutableState, boolean z, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                    super(2, continuation);
                                                    this.p = mutableState;
                                                    this.q = z;
                                                    this.r = mutableInteractionSource;
                                                }

                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object n(Object obj, Object obj2) {
                                                    return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Continuation s(Object obj, Continuation continuation) {
                                                    return new AnonymousClass2(this.p, this.q, this.r, continuation);
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Object v(Object obj) {
                                                    MutableState mutableState;
                                                    Interaction cancel;
                                                    MutableState mutableState2;
                                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                    int i = this.o;
                                                    if (i != 0) {
                                                        if (i == 1) {
                                                            mutableState2 = this.n;
                                                            ResultKt.b(obj);
                                                        } else {
                                                            u2.l("call to 'resume' before 'invoke' with coroutine");
                                                            return null;
                                                        }
                                                    } else {
                                                        ResultKt.b(obj);
                                                        mutableState = this.p;
                                                        PressInteraction.Press press = (PressInteraction.Press) mutableState.getValue();
                                                        if (press != null) {
                                                            if (this.q) {
                                                                cancel = new PressInteraction.Release(press);
                                                            } else {
                                                                cancel = new PressInteraction.Cancel(press);
                                                            }
                                                            MutableInteractionSource mutableInteractionSource = this.r;
                                                            if (mutableInteractionSource != null) {
                                                                this.n = mutableState;
                                                                this.o = 1;
                                                                if (mutableInteractionSource.a(cancel, this) == coroutineSingletons) {
                                                                    return coroutineSingletons;
                                                                }
                                                                mutableState2 = mutableState;
                                                            }
                                                            mutableState.setValue(null);
                                                        }
                                                        return Unit.a;
                                                    }
                                                    mutableState = mutableState2;
                                                    mutableState.setValue(null);
                                                    return Unit.a;
                                                }
                                            }

                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            public AnonymousClass1(CoroutineScope coroutineScope, MutableState mutableState, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                                super(3, continuation);
                                                this.q = coroutineScope;
                                                this.r = mutableState;
                                                this.s = mutableInteractionSource;
                                            }

                                            @Override // kotlin.jvm.functions.Function3
                                            public final Object f(Object obj, Object obj2, Object obj3) {
                                                long j = ((Offset) obj2).a;
                                                MutableState mutableState = this.r;
                                                MutableInteractionSource mutableInteractionSource = this.s;
                                                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, mutableState, mutableInteractionSource, (Continuation) obj3);
                                                anonymousClass1.o = (PressGestureScope) obj;
                                                anonymousClass1.p = j;
                                                return anonymousClass1.v(Unit.a);
                                            }

                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                            public final Object v(Object obj) {
                                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                int i = this.n;
                                                CoroutineScope coroutineScope = this.q;
                                                if (i != 0) {
                                                    if (i == 1) {
                                                        ResultKt.b(obj);
                                                    } else {
                                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                                        return null;
                                                    }
                                                } else {
                                                    ResultKt.b(obj);
                                                    PressGestureScope pressGestureScope = this.o;
                                                    BuildersKt.c(coroutineScope, null, null, new C00051(this.r, this.p, this.s, null), 3);
                                                    this.n = 1;
                                                    obj = ((PressGestureScopeImpl) pressGestureScope).e(this);
                                                    if (obj == coroutineSingletons) {
                                                        return coroutineSingletons;
                                                    }
                                                }
                                                BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.r, ((Boolean) obj).booleanValue(), this.s, null), 3);
                                                return Unit.a;
                                            }
                                        }

                                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                            Object d2 = TapGestureDetectorKt.d(pointerInputScope, new AnonymousClass1(CoroutineScope.this, mutableState2, mutableInteractionSource3, null), new i2(k222, 17), continuation);
                                            if (d2 == CoroutineSingletons.j) {
                                                return d2;
                                            }
                                            return Unit.a;
                                        }
                                    };
                                    gapComposer523.g0(K22);
                                }
                                Modifier a5222 = SuspendingPointerInputFilterKt.a(Modifier.Companion.b, mutableInteractionSource3, (PointerInputEventHandler) K22);
                                gapComposer523.p(false);
                                return a5222;
                            }
                        }) : f4222).l(new SuspendPointerInputElement(textFieldSelectionManager222.z, textFieldSelectionManager222.y, null, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                                Object c = SelectionGesturesKt.c(pointerInputScope, textFieldSelectionManager3.z, textFieldSelectionManager3.y, continuation);
                                if (c == CoroutineSingletons.j) {
                                    return c;
                                }
                                return Unit.a;
                            }
                        }, 4));
                        PointerIcon.a.getClass();
                        Modifier a5222 = PointerIconKt.a(l2222, PointerIcon_androidKt.b);
                        final Modifier b3222 = DrawModifierKt.b(companion, new p2(legacyTextFieldState3, textFieldValue3, offsetMapping4222, 4));
                        boolean h6222 = gapComposer3.h(legacyTextFieldState3) | (i1522 == 2048) | gapComposer3.f(windowInfo2) | gapComposer3.h(textFieldSelectionManager222);
                        int i16222 = i10;
                        h2 = h6222 | (i16222 == 4) | gapComposer3.h(offsetMapping4222);
                        K6 = gapComposer3.K();
                        if (h2) {
                        }
                        final TextFieldValue textFieldValue4222 = textFieldValue3;
                        textInputService3 = textInputService2;
                        Function1 function14222 = new Function1() { // from class: androidx.compose.foundation.text.d
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj4) {
                                TextInputSession textInputSession2;
                                final LayoutCoordinates layoutCoordinates;
                                LayoutCoordinates layoutCoordinates2;
                                LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                                MutableState mutableState2 = legacyTextFieldState6.o;
                                LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj4;
                                legacyTextFieldState6.h = layoutCoordinates3;
                                TextLayoutResultProxy d2 = legacyTextFieldState6.d();
                                if (d2 != null) {
                                    d2.b = layoutCoordinates3;
                                }
                                if (z2) {
                                    HandleState a6222 = legacyTextFieldState6.a();
                                    HandleState handleState = HandleState.k;
                                    TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager222;
                                    TextFieldValue textFieldValue5 = textFieldValue4222;
                                    if (a6222 == handleState) {
                                        if (((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState6.l).getValue()).booleanValue() && ((LazyWindowInfo) windowInfo2).a()) {
                                            textFieldSelectionManager3.s();
                                        } else {
                                            textFieldSelectionManager3.p();
                                        }
                                        ((SnapshotMutableStateImpl) legacyTextFieldState6.m).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                        ((SnapshotMutableStateImpl) legacyTextFieldState6.n).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, false)));
                                        ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextRange.c(textFieldValue5.b)));
                                    } else if (legacyTextFieldState6.a() == HandleState.l) {
                                        ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                    }
                                    OffsetMapping offsetMapping5222 = offsetMapping4222;
                                    CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue5, offsetMapping5222);
                                    TextLayoutResultProxy d3 = legacyTextFieldState6.d();
                                    if (d3 != null && (textInputSession2 = legacyTextFieldState6.e) != null && legacyTextFieldState6.b() && (layoutCoordinates = d3.b) != null && layoutCoordinates.o() && (layoutCoordinates2 = d3.c) != null) {
                                        TextLayoutResult textLayoutResult = d3.a;
                                        Function1<Matrix, Unit> function15 = new Function1<Matrix, Unit>() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object b(Object obj5) {
                                                float[] fArr = ((Matrix) obj5).a;
                                                LayoutCoordinates layoutCoordinates4 = LayoutCoordinates.this;
                                                if (layoutCoordinates4.o()) {
                                                    LayoutCoordinatesKt.c(layoutCoordinates4).I(layoutCoordinates4, fArr);
                                                }
                                                return Unit.a;
                                            }
                                        };
                                        Rect a72 = SelectionManagerKt.a(layoutCoordinates);
                                        Rect l323 = layoutCoordinates.l(layoutCoordinates2, false);
                                        if (Intrinsics.a((TextInputSession) textInputSession2.a.b.get(), textInputSession2)) {
                                            textInputSession2.b.g(textFieldValue5, offsetMapping5222, textLayoutResult, function15, a72, l323);
                                        }
                                    }
                                }
                                return Unit.a;
                            }
                        };
                        windowInfo = windowInfo2;
                        offsetMapping4222 = offsetMapping4222;
                        gapComposer3.g0(function14222);
                        K6 = function14222;
                        final Modifier a6222 = OnGloballyPositionedModifierKt.a(companion, (Function1) K6);
                        legacyTextFieldState4 = legacyTextFieldState3;
                        textFieldSelectionManager = textFieldSelectionManager222;
                        TextInputService textInputService5222 = textInputService3;
                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier222 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState4, z2, offsetMapping4222, textFieldSelectionManager, imeOptions, focusRequester6222);
                        final OffsetMapping offsetMapping5222 = offsetMapping4222;
                        if (!z2 && ((LazyWindowInfo) windowInfo).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.B).getValue()).a)) {
                        }
                        h3 = gapComposer3.h(textFieldSelectionManager);
                        K7 = gapComposer3.K();
                        if (!h3) {
                        }
                        K7 = new w6(textFieldSelectionManager, 0);
                        gapComposer3.g0(K7);
                        EffectsKt.c(textFieldSelectionManager, (Function1) K7, gapComposer3);
                        h4 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.h(textInputService5222) | (i16222 == 4) | ((i9 <= 32 && gapComposer3.f(imeOptions)) || (i11 & 48) == 32);
                        K8 = gapComposer3.K();
                        if (h4) {
                        }
                        s2 s2Var222 = new s2(legacyTextFieldState4, textInputService5222, textFieldValue, imeOptions, 2);
                        imeOptions3 = imeOptions;
                        gapComposer3.g0(s2Var222);
                        K8 = s2Var222;
                        EffectsKt.c(imeOptions3, (Function1) K8, gapComposer3);
                        final Function1 t6Var222 = legacyTextFieldState4.v;
                        if (i == 1) {
                        }
                        final int i17222 = imeOptions3.e;
                        final boolean z15222 = true;
                        Modifier a8222 = ComposedModifierKt.a(companion, new Function3() { // from class: androidx.compose.foundation.text.j
                            @Override // kotlin.jvm.functions.Function3
                            public final Object f(Object obj4, Object obj5, Object obj6) {
                                ((Integer) obj6).getClass();
                                GapComposer gapComposer523 = (GapComposer) ((Composer) obj5);
                                gapComposer523.W(851809892);
                                Object K19 = gapComposer523.K();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                if (K19 == composer$Companion$Empty$1) {
                                    K19 = new Object();
                                    gapComposer523.g0(K19);
                                }
                                TextPreparedSelectionState textPreparedSelectionState = (TextPreparedSelectionState) K19;
                                Object K20 = gapComposer523.K();
                                if (K20 == composer$Companion$Empty$1) {
                                    K20 = new Object();
                                    gapComposer523.g0(K20);
                                }
                                TextFieldKeyInput textFieldKeyInput = new TextFieldKeyInput(LegacyTextFieldState.this, textFieldSelectionManager, textFieldValue, z15222, z14, textPreparedSelectionState, offsetMapping5222, undoManager, (DeadKeyCombiner) K20, t6Var222, i17222);
                                boolean h7 = gapComposer523.h(textFieldKeyInput);
                                Object K21 = gapComposer523.K();
                                if (h7 || K21 == composer$Companion$Empty$1) {
                                    FunctionReference functionReference = new FunctionReference(1, textFieldKeyInput, TextFieldKeyInput.class, "process", "process-ZmokQxo(Landroid/view/KeyEvent;)Z", 0);
                                    gapComposer523.g0(functionReference);
                                    K21 = functionReference;
                                }
                                Modifier a923 = KeyInputModifierKt.a(Modifier.Companion.b, (Function1) ((KFunction) K21));
                                gapComposer523.p(false);
                                return a923;
                            }
                        });
                        int i18222 = imeOptions3.d;
                        if (i18222 == 7) {
                        }
                        boolean booleanValue2222 = ((Boolean) mutableState.getValue()).booleanValue();
                        LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter32222 = legacyPlatformTextInputServiceAdapter;
                        g = gapComposer3.g(z11) | gapComposer3.h(legacyPlatformTextInputServiceAdapter32222);
                        K9 = gapComposer3.K();
                        if (!g) {
                        }
                        K9 = new q6(1, legacyPlatformTextInputServiceAdapter32222, z11);
                        gapComposer3.g0(K9);
                        Modifier a92222 = StylusHandwritingKt.a(booleanValue2222, z11, (Function0) K9);
                        Brush brush2222 = (Brush) gapComposer3.j(AutofillHighlightKt.a);
                        long j62222 = ((Color) gapComposer3.j(AutofillHighlightKt.b)).a;
                        if (Color.c(j62222, ColorKt.b(1308617531))) {
                        }
                        h5 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.f(solidColor2);
                        K10 = gapComposer3.K();
                        if (!h5) {
                        }
                        K10 = new defpackage.b(10, legacyTextFieldState4, solidColor2);
                        gapComposer3.g0(K10);
                        final FocusManager focusManager32222 = focusManager;
                        Modifier l32222 = KeyInputModifierKt.b(KeyInputModifierKt.b(LegacyAdaptingPlatformTextInputModifierNodeKt.a(modifier.l(DrawModifierKt.d(companion, (Function1) K10)), legacyPlatformTextInputServiceAdapter32222, legacyTextFieldState4, textFieldSelectionManager).l(a92222).l(modifier2), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj4) {
                                android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                InputDevice device = keyEvent.getDevice();
                                boolean z162222 = false;
                                if (device != null && device.supportsSource(513) && ((!device.isVirtual() || keyEvent.getSource() == 33554433) && KeyEvent_androidKt.b(keyEvent) == 2 && keyEvent.getSource() != 257)) {
                                    boolean a102222 = TextFieldFocusModifier_androidKt.a(19, keyEvent);
                                    FocusManager focusManager4 = FocusManager.this;
                                    if (a102222) {
                                        z162222 = ((FocusOwnerImpl) focusManager4).h(5, true);
                                    } else if (TextFieldFocusModifier_androidKt.a(20, keyEvent)) {
                                        z162222 = ((FocusOwnerImpl) focusManager4).h(6, true);
                                    } else if (TextFieldFocusModifier_androidKt.a(21, keyEvent)) {
                                        z162222 = ((FocusOwnerImpl) focusManager4).h(3, true);
                                    } else if (TextFieldFocusModifier_androidKt.a(22, keyEvent)) {
                                        z162222 = ((FocusOwnerImpl) focusManager4).h(4, true);
                                    } else if (TextFieldFocusModifier_androidKt.a(23, keyEvent)) {
                                        SoftwareKeyboardController softwareKeyboardController2 = legacyTextFieldState4.c;
                                        if (softwareKeyboardController2 != null) {
                                            ((DelegatingSoftwareKeyboardController) softwareKeyboardController2).b();
                                        }
                                        z162222 = true;
                                    }
                                }
                                return Boolean.valueOf(z162222);
                            }
                        }), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj4) {
                                boolean z162222;
                                android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                                if (LegacyTextFieldState.this.a() == HandleState.k && keyEvent.getKeyCode() == 4) {
                                    z162222 = true;
                                    if (KeyEvent_androidKt.b(keyEvent) == 1) {
                                        textFieldSelectionManager.g(null);
                                        return Boolean.valueOf(z162222);
                                    }
                                }
                                z162222 = false;
                                return Boolean.valueOf(z162222);
                            }
                        }).l(a8222);
                        final TextFieldScrollerPosition textFieldScrollerPosition42222 = textFieldScrollerPosition2;
                        final CoroutineScope coroutineScope52222 = coroutineScope3;
                        Modifier a102222 = TextContextMenuModifier_androidKt.a(OnGloballyPositionedModifierKt.a(ComposedModifierKt.a(l32222, new Function3() { // from class: dh
                            @Override // kotlin.jvm.functions.Function3
                            public final Object f(Object obj4, Object obj5, Object obj6) {
                                boolean z162222;
                                boolean z17;
                                TextFieldScrollerPosition textFieldScrollerPosition5 = TextFieldScrollerPosition.this;
                                MutableState mutableState2 = textFieldScrollerPosition5.f;
                                ((Integer) obj6).getClass();
                                GapComposer gapComposer52222 = (GapComposer) ((Composer) obj5);
                                gapComposer52222.W(-2137546592);
                                boolean z18 = true;
                                if (gapComposer52222.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                                    z162222 = true;
                                } else {
                                    z162222 = false;
                                }
                                if (((Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue()) != Orientation.j && z162222) {
                                    z17 = false;
                                } else {
                                    z17 = true;
                                }
                                boolean f5 = gapComposer52222.f(textFieldScrollerPosition5);
                                Object K19 = gapComposer52222.K();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                if (f5 || K19 == composer$Companion$Empty$1) {
                                    K19 = new ma(29, textFieldScrollerPosition5);
                                    gapComposer52222.g0(K19);
                                }
                                ScrollableState b4 = ScrollableStateKt.b((Function1) K19, gapComposer52222);
                                boolean f6 = gapComposer52222.f(b4) | gapComposer52222.f(textFieldScrollerPosition5);
                                Object K20 = gapComposer52222.K();
                                if (f6 || K20 == composer$Companion$Empty$1) {
                                    K20 = new ScrollableState(textFieldScrollerPosition5) { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1
                                        public final State b;
                                        public final State c;

                                        {
                                            final int i19 = 0;
                                            this.b = SnapshotStateKt.e(new Function0() { // from class: eh
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object a() {
                                                    int i202 = i19;
                                                    boolean z19 = false;
                                                    TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                    switch (i202) {
                                                        case 0:
                                                            if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                z19 = true;
                                                            }
                                                            return Boolean.valueOf(z19);
                                                        default:
                                                            if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                z19 = true;
                                                            }
                                                            return Boolean.valueOf(z19);
                                                    }
                                                }
                                            });
                                            final int i20 = 1;
                                            this.c = SnapshotStateKt.e(new Function0() { // from class: eh
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object a() {
                                                    int i202 = i20;
                                                    boolean z19 = false;
                                                    TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                    switch (i202) {
                                                        case 0:
                                                            if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                                z19 = true;
                                                            }
                                                            return Boolean.valueOf(z19);
                                                        default:
                                                            if (textFieldScrollerPosition6.a() > 0.0f) {
                                                                z19 = true;
                                                            }
                                                            return Boolean.valueOf(z19);
                                                    }
                                                }
                                            });
                                        }

                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                        public final boolean a() {
                                            return ScrollableState.this.a();
                                        }

                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                        public final boolean b() {
                                            return ((Boolean) this.c.getValue()).booleanValue();
                                        }

                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                        public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
                                            return ScrollableState.this.c(mutatePriority, function2, continuationImpl);
                                        }

                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                        public final boolean d() {
                                            return ((Boolean) this.b.getValue()).booleanValue();
                                        }

                                        @Override // androidx.compose.foundation.gestures.ScrollableState
                                        public final float e(float f7) {
                                            return ScrollableState.this.e(f7);
                                        }
                                    };
                                    gapComposer52222.g0(K20);
                                }
                                TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 = (TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1) K20;
                                Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue();
                                if (!z2 || ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition5.b).j() == 0.0f) {
                                    z18 = false;
                                }
                                Modifier b5 = ScrollableKt.b(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation2, z18, z17, mutableInteractionSource2);
                                gapComposer52222.p(false);
                                return b5;
                            }
                        }).l(a5222).l(coreTextFieldSemanticsModifier222), new t6(legacyTextFieldState4, 0)), new zc(8, textFieldSelectionManager, coroutineScope52222));
                        if (z2) {
                        }
                        if (z12) {
                        }
                        GapComposer gapComposer52222 = gapComposer3;
                        final Modifier companion32222 = a7;
                        final BringIntoViewRequester bringIntoViewRequester32222 = bringIntoViewRequester2;
                        final WindowInfo windowInfo32222 = windowInfo;
                        final Modifier modifier42222 = modifier3;
                        final Density density42222 = density2;
                        final boolean z162222 = z12;
                        gapComposer = gapComposer52222;
                        b(a102222, textFieldSelectionManager, ComposableLambdaKt.b(-814563849, new Function2() { // from class: u6
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj4, Object obj5) {
                                boolean z17;
                                Composer composer2 = (Composer) obj4;
                                int intValue = ((Integer) obj5).intValue();
                                if ((intValue & 3) != 2) {
                                    z17 = true;
                                } else {
                                    z17 = false;
                                }
                                GapComposer gapComposer6 = (GapComposer) composer2;
                                if (gapComposer6.N(intValue & 1, z17)) {
                                    final TextStyle textStyle3 = textStyle;
                                    final LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState4;
                                    final int i19 = i2;
                                    final int i20 = i;
                                    final boolean z18 = z;
                                    final TextFieldScrollerPosition textFieldScrollerPosition5 = textFieldScrollerPosition42222;
                                    final TextFieldValue textFieldValue5 = textFieldValue;
                                    final VisualTransformation visualTransformation2 = visualTransformation;
                                    final Modifier modifier5 = companion32222;
                                    final Modifier modifier6 = b3222;
                                    final Modifier modifier7 = a6222;
                                    final Modifier modifier8 = modifier42222;
                                    final BringIntoViewRequester bringIntoViewRequester4 = bringIntoViewRequester32222;
                                    final TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager;
                                    final boolean z19 = z162222;
                                    final WindowInfo windowInfo4 = windowInfo32222;
                                    final CoroutineScope coroutineScope6 = coroutineScope52222;
                                    final Function1 function15 = function12;
                                    final OffsetMapping offsetMapping6 = offsetMapping5222;
                                    final Density density5 = density42222;
                                    ComposableLambdaImpl.this.f(ComposableLambdaKt.b(-44346382, new Function2() { // from class: androidx.compose.foundation.text.b
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object n(Object obj6, Object obj7) {
                                            boolean z20;
                                            float f5;
                                            Modifier verticalScrollLayoutModifier;
                                            Composer composer3 = (Composer) obj6;
                                            int intValue2 = ((Integer) obj7).intValue();
                                            if ((intValue2 & 3) != 2) {
                                                z20 = true;
                                            } else {
                                                z20 = false;
                                            }
                                            GapComposer gapComposer7 = (GapComposer) composer3;
                                            if (gapComposer7.N(intValue2 & 1, z20)) {
                                                final LegacyTextFieldState legacyTextFieldState7 = legacyTextFieldState6;
                                                float f6 = ((Dp) ((SnapshotMutableStateImpl) legacyTextFieldState7.g).getValue()).j;
                                                if (Dp.b(f6, 0.0f)) {
                                                    f5 = Float.NaN;
                                                } else {
                                                    f5 = f6;
                                                }
                                                Modifier f7 = SizeKt.f(Modifier.Companion.b, f6, f5);
                                                int i21 = i19;
                                                final int i22 = i20;
                                                HeightInLinesModifierKt.b(i21, i22);
                                                TextStyle textStyle4 = TextStyle.this;
                                                if ((i21 != 1 || i22 != Integer.MAX_VALUE) && z18) {
                                                    f7 = f7.l(new HeightInLinesElement(textStyle4, i21, i22));
                                                }
                                                boolean h7 = gapComposer7.h(legacyTextFieldState7);
                                                Object K19 = gapComposer7.K();
                                                if (h7 || K19 == Composer.Companion.a) {
                                                    K19 = new r1(11, legacyTextFieldState7);
                                                    gapComposer7.g0(K19);
                                                }
                                                Function0 function0 = (Function0) K19;
                                                TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                                Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition6.f).getValue();
                                                final TextFieldValue textFieldValue6 = textFieldValue5;
                                                long j7 = textFieldValue6.b;
                                                int i23 = TextRange.c;
                                                int i24 = (int) (j7 >> 32);
                                                long j8 = textFieldScrollerPosition6.e;
                                                if (i24 == ((int) (j8 >> 32)) && (i24 = (int) (j7 & 4294967295L)) == ((int) (j8 & 4294967295L))) {
                                                    i24 = TextRange.f(j7);
                                                }
                                                textFieldScrollerPosition6.e = textFieldValue6.b;
                                                TransformedText a11 = ValidatingOffsetMappingKt.a(visualTransformation2, textFieldValue6.a);
                                                int ordinal = orientation2.ordinal();
                                                if (ordinal != 0) {
                                                    if (ordinal == 1) {
                                                        verticalScrollLayoutModifier = new HorizontalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                    } else {
                                                        k8.e();
                                                        return null;
                                                    }
                                                } else {
                                                    verticalScrollLayoutModifier = new VerticalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                                }
                                                Modifier l4 = ClipKt.b(OverscrollKt.a(f7)).l(verticalScrollLayoutModifier).l(modifier5).l(modifier6).l(new TextFieldSizeElement(textStyle4)).l(modifier7).l(modifier8);
                                                final BringIntoViewRequester bringIntoViewRequester5 = bringIntoViewRequester4;
                                                Modifier b4 = BringIntoViewRequesterKt.b(l4, bringIntoViewRequester5);
                                                final TextFieldSelectionManager textFieldSelectionManager4 = textFieldSelectionManager3;
                                                final boolean z21 = z19;
                                                final WindowInfo windowInfo5 = windowInfo4;
                                                final CoroutineScope coroutineScope7 = coroutineScope6;
                                                final Function1 function16 = function15;
                                                final OffsetMapping offsetMapping7 = offsetMapping6;
                                                final Density density6 = density5;
                                                SimpleLayoutKt.a(b4, ComposableLambdaKt.b(1412697320, new Function2() { // from class: s6
                                                    /* JADX WARN: Code restructure failed: missing block: B:15:0x009e, code lost:
                                                    
                                                        if (r0 != false) goto L21;
                                                     */
                                                    @Override // kotlin.jvm.functions.Function2
                                                    /*
                                                        Code decompiled incorrectly, please refer to instructions dump.
                                                    */
                                                    public final Object n(Object obj8, Object obj9) {
                                                        boolean z22;
                                                        Composer composer4 = (Composer) obj8;
                                                        int intValue3 = ((Integer) obj9).intValue();
                                                        boolean z23 = true;
                                                        if ((intValue3 & 3) != 2) {
                                                            z22 = true;
                                                        } else {
                                                            z22 = false;
                                                        }
                                                        GapComposer gapComposer8 = (GapComposer) composer4;
                                                        if (gapComposer8.N(intValue3 & 1, z22)) {
                                                            final LegacyTextFieldState legacyTextFieldState8 = legacyTextFieldState7;
                                                            final TextFieldSelectionManager textFieldSelectionManager5 = TextFieldSelectionManager.this;
                                                            final WindowInfo windowInfo6 = windowInfo5;
                                                            final CoroutineScope coroutineScope8 = coroutineScope7;
                                                            final Function1 function17 = function16;
                                                            final TextFieldValue textFieldValue7 = textFieldValue6;
                                                            final OffsetMapping offsetMapping8 = offsetMapping7;
                                                            final Density density7 = density6;
                                                            final BringIntoViewRequester bringIntoViewRequester6 = bringIntoViewRequester5;
                                                            final int i25 = i22;
                                                            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2
                                                                /* JADX WARN: Removed duplicated region for block: B:38:0x01c8  */
                                                                /* JADX WARN: Removed duplicated region for block: B:64:0x0258  */
                                                                /* JADX WARN: Removed duplicated region for block: B:67:0x0262  */
                                                                /* JADX WARN: Removed duplicated region for block: B:69:0x0251  */
                                                                @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                /*
                                                                    Code decompiled incorrectly, please refer to instructions dump.
                                                                */
                                                                public final MeasureResult a(MeasureScope measureScope, List list, long j9) {
                                                                    Function1 function18;
                                                                    TextLayoutResult textLayoutResult;
                                                                    long j10;
                                                                    TextLayoutResult textLayoutResult2;
                                                                    LayoutDirection layoutDirection;
                                                                    TextLayoutResult textLayoutResult3;
                                                                    TextLayoutResult textLayoutResult4;
                                                                    CoreTextFieldKt$CoreTextField$8$1$1$2 coreTextFieldKt$CoreTextField$8$1$1$2;
                                                                    int i26;
                                                                    LayoutCoordinates layoutCoordinates;
                                                                    AnnotatedString annotatedString6;
                                                                    TextLayoutInput textLayoutInput;
                                                                    int h8;
                                                                    int i27;
                                                                    LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                    Snapshot a12 = Snapshot.Companion.a();
                                                                    if (a12 != null) {
                                                                        function18 = a12.e();
                                                                    } else {
                                                                        function18 = null;
                                                                    }
                                                                    Snapshot b5 = Snapshot.Companion.b(a12);
                                                                    try {
                                                                        TextLayoutResultProxy d2 = legacyTextFieldState9.d();
                                                                        if (d2 != null) {
                                                                            textLayoutResult = d2.a;
                                                                        } else {
                                                                            textLayoutResult = null;
                                                                        }
                                                                        TextDelegate textDelegate2 = legacyTextFieldState9.a;
                                                                        LayoutDirection layoutDirection2 = measureScope.getLayoutDirection();
                                                                        int i28 = textDelegate2.f;
                                                                        boolean z24 = textDelegate2.e;
                                                                        int i29 = textDelegate2.c;
                                                                        if (textLayoutResult != null) {
                                                                            MultiParagraph multiParagraph = textLayoutResult.b;
                                                                            TextLayoutInput textLayoutInput2 = textLayoutResult.a;
                                                                            AnnotatedString annotatedString7 = textDelegate2.a;
                                                                            TextStyle textStyle5 = textDelegate2.b;
                                                                            List list2 = textDelegate2.i;
                                                                            Density density8 = textDelegate2.g;
                                                                            FontFamily.Resolver resolver3 = textDelegate2.h;
                                                                            TextLayoutResult textLayoutResult5 = textLayoutResult;
                                                                            if (multiParagraph.a.a()) {
                                                                                j10 = j9;
                                                                                layoutDirection = layoutDirection2;
                                                                            } else {
                                                                                AnnotatedString annotatedString8 = textLayoutInput2.a;
                                                                                long j11 = textLayoutInput2.j;
                                                                                if (Intrinsics.a(annotatedString8, annotatedString7) && textLayoutInput2.b.c(textStyle5) && Intrinsics.a(textLayoutInput2.c, list2) && textLayoutInput2.d == i29 && textLayoutInput2.e == z24 && textLayoutInput2.f == i28 && Intrinsics.a(textLayoutInput2.g, density8)) {
                                                                                    layoutDirection = layoutDirection2;
                                                                                    if (textLayoutInput2.h == layoutDirection && Intrinsics.a(textLayoutInput2.i, resolver3) && Constraints.j(j9) == Constraints.j(j11) && ((!z24 && i28 != 2) || (Constraints.h(j9) == Constraints.h(j11) && Constraints.g(j9) == Constraints.g(j11)))) {
                                                                                        textLayoutResult2 = textLayoutResult5;
                                                                                        textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput2.a, textDelegate2.b, textLayoutInput2.c, textLayoutInput2.d, textLayoutInput2.e, textLayoutInput2.f, textLayoutInput2.g, textLayoutInput2.h, textLayoutInput2.i, j9), multiParagraph, ConstraintsKt.d(j9, (TextDelegateKt.a(multiParagraph.e) & 4294967295L) | (TextDelegateKt.a(multiParagraph.d) << 32)));
                                                                                        long j122222 = textLayoutResult3.c;
                                                                                        Integer valueOf3222 = Integer.valueOf((int) (j122222 >> 32));
                                                                                        Integer valueOf22222 = Integer.valueOf((int) (j122222 & 4294967295L));
                                                                                        int intValue42222 = valueOf3222.intValue();
                                                                                        int intValue52222 = valueOf22222.intValue();
                                                                                        MultiParagraph multiParagraph22222 = textLayoutResult3.b;
                                                                                        multiParagraph22222.a.a();
                                                                                        textLayoutResult4 = textLayoutResult2;
                                                                                        if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                            if (d2 != null) {
                                                                                                layoutCoordinates = d2.c;
                                                                                            } else {
                                                                                                layoutCoordinates = null;
                                                                                            }
                                                                                            ((SnapshotMutableStateImpl) legacyTextFieldState9.i).setValue(new TextLayoutResultProxy(textLayoutResult3, layoutCoordinates));
                                                                                            legacyTextFieldState9.p = false;
                                                                                            coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                            TextFieldSelectionManager textFieldSelectionManager6 = textFieldSelectionManager5;
                                                                                            if (textFieldSelectionManager6.l() && textFieldSelectionManager6.k() && ((LazyWindowInfo) windowInfo6).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.B).getValue()).a) && legacyTextFieldState9.b()) {
                                                                                                if (textLayoutResult4 != null && (textLayoutInput = textLayoutResult4.a) != null) {
                                                                                                    annotatedString6 = textLayoutInput.a;
                                                                                                } else {
                                                                                                    annotatedString6 = null;
                                                                                                }
                                                                                                if (!Intrinsics.a(annotatedString6, textLayoutResult3.a.a)) {
                                                                                                    BuildersKt.c(coroutineScope8, null, null, new CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1(textFieldSelectionManager6, bringIntoViewRequester6, null), 3);
                                                                                                }
                                                                                            }
                                                                                            function17.b(textLayoutResult3);
                                                                                            CoreTextFieldKt.f(legacyTextFieldState9, textFieldValue7, offsetMapping8);
                                                                                        } else {
                                                                                            coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                        }
                                                                                        if (i25 != 1) {
                                                                                            i26 = TextDelegateKt.a(multiParagraph22222.b(0));
                                                                                        } else {
                                                                                            i26 = 0;
                                                                                        }
                                                                                        ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                        return measureScope.B(intValue42222, intValue52222, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                                    }
                                                                                    j10 = j9;
                                                                                } else {
                                                                                    j10 = j9;
                                                                                    textLayoutResult2 = textLayoutResult5;
                                                                                    layoutDirection = layoutDirection2;
                                                                                }
                                                                            }
                                                                            textLayoutResult2 = textLayoutResult5;
                                                                        } else {
                                                                            j10 = j9;
                                                                            textLayoutResult2 = textLayoutResult;
                                                                            layoutDirection = layoutDirection2;
                                                                        }
                                                                        textDelegate2.a(layoutDirection);
                                                                        int j13 = Constraints.j(j10);
                                                                        if ((z24 || i28 == 2) && Constraints.d(j10)) {
                                                                            h8 = Constraints.h(j10);
                                                                        } else {
                                                                            h8 = Integer.MAX_VALUE;
                                                                        }
                                                                        if (!z24 && i28 == 2) {
                                                                            i27 = 1;
                                                                        } else {
                                                                            i27 = i29;
                                                                        }
                                                                        if (j13 != h8) {
                                                                            MultiParagraphIntrinsics multiParagraphIntrinsics = textDelegate2.j;
                                                                            if (multiParagraphIntrinsics != null) {
                                                                                h8 = RangesKt.d(TextDelegateKt.a(multiParagraphIntrinsics.c()), j13, h8);
                                                                            } else {
                                                                                u2.l("layoutIntrinsics must be called first");
                                                                                return null;
                                                                            }
                                                                        }
                                                                        MultiParagraphIntrinsics multiParagraphIntrinsics2 = textDelegate2.j;
                                                                        if (multiParagraphIntrinsics2 != null) {
                                                                            textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textDelegate2.a, textDelegate2.b, textDelegate2.i, textDelegate2.c, textDelegate2.e, textDelegate2.f, textDelegate2.g, layoutDirection, textDelegate2.h, j10), new MultiParagraph(multiParagraphIntrinsics2, Constraints.Companion.b(0, h8, 0, Constraints.g(j10)), i27, textDelegate2.f), ConstraintsKt.d(j10, (TextDelegateKt.a(r25.d) << 32) | (TextDelegateKt.a(r25.e) & 4294967295L)));
                                                                            long j1222222 = textLayoutResult3.c;
                                                                            Integer valueOf32222 = Integer.valueOf((int) (j1222222 >> 32));
                                                                            Integer valueOf222222 = Integer.valueOf((int) (j1222222 & 4294967295L));
                                                                            int intValue422222 = valueOf32222.intValue();
                                                                            int intValue522222 = valueOf222222.intValue();
                                                                            MultiParagraph multiParagraph222222 = textLayoutResult3.b;
                                                                            multiParagraph222222.a.a();
                                                                            textLayoutResult4 = textLayoutResult2;
                                                                            if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                            }
                                                                            if (i25 != 1) {
                                                                            }
                                                                            ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                            return measureScope.B(intValue422222, intValue522222, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                        }
                                                                        u2.l("layoutIntrinsics must be called first");
                                                                        return null;
                                                                    } finally {
                                                                        Snapshot.Companion.e(a12, b5, function18);
                                                                    }
                                                                }

                                                                @Override // androidx.compose.ui.layout.MeasurePolicy
                                                                public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                                                                    LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                                    legacyTextFieldState9.a.a(intrinsicMeasureScope.getLayoutDirection());
                                                                    MultiParagraphIntrinsics multiParagraphIntrinsics = legacyTextFieldState9.a.j;
                                                                    if (multiParagraphIntrinsics != null) {
                                                                        return TextDelegateKt.a(multiParagraphIntrinsics.c());
                                                                    }
                                                                    u2.l("layoutIntrinsics must be called first");
                                                                    return 0;
                                                                }
                                                            };
                                                            int hashCode = Long.hashCode(gapComposer8.T);
                                                            PersistentCompositionLocalMap l5 = gapComposer8.l();
                                                            Modifier c = ComposedModifierKt.c(gapComposer8, Modifier.Companion.b);
                                                            ComposeUiNode.b.getClass();
                                                            gapComposer8.Z();
                                                            if (gapComposer8.S) {
                                                                gapComposer8.k(LayoutNode.b0);
                                                            } else {
                                                                gapComposer8.j0();
                                                            }
                                                            Updater.c(gapComposer8, measurePolicy, ComposeUiNode.Companion.d);
                                                            Updater.c(gapComposer8, l5, ComposeUiNode.Companion.c);
                                                            Updater.c(gapComposer8, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                                            Updater.b(gapComposer8);
                                                            Updater.c(gapComposer8, c, ComposeUiNode.Companion.b);
                                                            gapComposer8.p(true);
                                                            HandleState a12 = legacyTextFieldState8.a();
                                                            HandleState handleState = HandleState.j;
                                                            boolean z24 = z21;
                                                            if (a12 != handleState && legacyTextFieldState8.c() != null) {
                                                                LayoutCoordinates c2 = legacyTextFieldState8.c();
                                                                c2.getClass();
                                                                if (c2.o()) {
                                                                }
                                                            }
                                                            z23 = false;
                                                            CoreTextFieldKt.c(textFieldSelectionManager5, z23, gapComposer8, 0);
                                                            if (legacyTextFieldState8.a() == HandleState.l && z24) {
                                                                gapComposer8.W(-713510518);
                                                                CoreTextFieldKt.d(textFieldSelectionManager5, gapComposer8, 0);
                                                                gapComposer8.p(false);
                                                            } else {
                                                                gapComposer8.W(-713433638);
                                                                gapComposer8.p(false);
                                                            }
                                                        } else {
                                                            gapComposer8.Q();
                                                        }
                                                        return Unit.a;
                                                    }
                                                }, gapComposer7), gapComposer7, 48);
                                            } else {
                                                gapComposer7.Q();
                                            }
                                            return Unit.a;
                                        }
                                    }, gapComposer6), gapComposer6, 6);
                                } else {
                                    gapComposer6.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer), gapComposer, 384);
                    } else {
                        annotatedString = annotatedString5;
                    }
                }
                density2 = density;
                textDelegate = new TextDelegate(annotatedString, textStyle2, z3, density2, resolver, 0);
                if (legacyTextFieldState5.a == textDelegate) {
                }
                legacyTextFieldState5.a = textDelegate;
                EditProcessor editProcessor2 = legacyTextFieldState5.d;
                textInputSession = legacyTextFieldState5.e;
                editProcessor2.getClass();
                textRange = textFieldValue.c;
                boolean a32 = Intrinsics.a(textRange, editProcessor2.b.c());
                str = editProcessor2.a.a.k;
                annotatedString2 = textFieldValue.a;
                if (Intrinsics.a(str, annotatedString2.k)) {
                }
                z6 = false;
                if (textRange == null) {
                }
                z7 = z5;
                if (z7) {
                }
                EditingBuffer editingBuffer2222 = editProcessor2.b;
                editingBuffer2222.d = -1;
                editingBuffer2222.e = -1;
                a = TextFieldValue.a(textFieldValue, null, 0L, 3);
                textFieldValue2 = editProcessor2.a;
                editProcessor2.a = a;
                if (textInputSession != null) {
                }
                K = gapComposer2.K();
                if (K == obj3) {
                }
                undoManager = (UndoManager) K;
                long currentTimeMillis222 = System.currentTimeMillis();
                if (!undoManager.e) {
                }
                undoManager.d = Long.valueOf(currentTimeMillis222);
                undoManager.a(textFieldValue);
                K2 = gapComposer2.K();
                if (K2 == obj3) {
                }
                coroutineScope = (CoroutineScope) K2;
                K3 = gapComposer2.K();
                if (K3 == obj3) {
                }
                bringIntoViewRequester = (BringIntoViewRequester) K3;
                K4 = gapComposer2.K();
                if (K4 == obj3) {
                }
                final TextFieldSelectionManager textFieldSelectionManager2222 = (TextFieldSelectionManager) K4;
                textFieldSelectionManager2222.b = offsetMapping3;
                textFieldSelectionManager2222.c = legacyTextFieldState5.v;
                textFieldSelectionManager2222.d = legacyTextFieldState5;
                ((SnapshotMutableStateImpl) textFieldSelectionManager2222.e).setValue(textFieldValue);
                textFieldSelectionManager2222.v = new TextRange(j4);
                textFieldSelectionManager2222.g = (Clipboard) gapComposer2.j(CompositionLocalsKt.f);
                textFieldSelectionManager2222.h = coroutineScope;
                textFieldSelectionManager2222.j = (HapticFeedback) gapComposer2.j(CompositionLocalsKt.l);
                focusRequester2 = focusRequester;
                textFieldSelectionManager2222.k = focusRequester2;
                ((SnapshotMutableStateImpl) textFieldSelectionManager2222.l).setValue(true);
                ((SnapshotMutableStateImpl) textFieldSelectionManager2222.m).setValue(Boolean.valueOf(z2));
                gapComposer2.W(1966756105);
                SelectedTextType selectedTextType222 = SelectedTextType.j;
                LocaleList localeList222 = textStyle.a.k;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal222 = PlatformSelectionBehaviors_androidKt.a;
                gapComposer2.W(430530635);
                Context context222 = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
                CoroutineContext coroutineContext222 = (CoroutineContext) gapComposer2.j(PlatformSelectionBehaviors_androidKt.a);
                f = gapComposer2.f(coroutineContext222) | gapComposer2.f(context222) | gapComposer2.f(localeList222);
                K5 = gapComposer2.K();
                if (!f) {
                }
                K5 = (PlatformSelectionBehaviors) PlatformSelectionBehaviors_androidKt.b.j(coroutineContext222, context222, selectedTextType222, localeList222);
                gapComposer2.g0(K5);
                gapComposer2.p(false);
                textFieldSelectionManager2222.i = (PlatformSelectionBehaviors) K5;
                gapComposer2.p(false);
                legacyTextFieldState5.b();
                i8 = i7;
                int i15222 = i8 & 7168;
                i9 = (i8 & 112) ^ 48;
                h = gapComposer2.h(legacyTextFieldState5) | (i15222 != 2048) | ((i8 & 57344) != 16384) | gapComposer2.h(textInputService4) | (i13 != 4) | ((i9 <= 32 && gapComposer2.f(imeOptions)) || (i8 & 48) == 32) | gapComposer2.h(offsetMapping3) | gapComposer2.h(coroutineScope) | gapComposer2.h(bringIntoViewRequester) | gapComposer2.h(textFieldSelectionManager2222);
                Object K17222 = gapComposer2.K();
                if (h) {
                }
                mutableInteractionSource2 = mutableInteractionSource;
                gapComposer3 = gapComposer2;
                legacyTextFieldState = legacyTextFieldState5;
                textInputService = textInputService4;
                i10 = i13;
                focusManager = focusManager2;
                i11 = i8;
                legacyPlatformTextInputServiceAdapter = legacyPlatformTextInputServiceAdapter2;
                focusRequester3 = focusRequester2;
                textFieldScrollerPosition2 = textFieldScrollerPosition;
                imeOptions2 = imeOptions;
                transformedText2 = transformedText;
                obj2 = obj3;
                obj = new Function1() { // from class: androidx.compose.foundation.text.c
                    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj4) {
                        TextLayoutResultProxy d2;
                        LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                        boolean b33 = legacyTextFieldState6.b();
                        FocusStateImpl focusStateImpl = (FocusStateImpl) ((FocusState) obj4);
                        boolean b4 = focusStateImpl.b();
                        Unit unit = Unit.a;
                        if (b33 != b4) {
                            ((SnapshotMutableStateImpl) legacyTextFieldState6.f).setValue(Boolean.valueOf(focusStateImpl.b()));
                            boolean b5 = legacyTextFieldState6.b();
                            TextFieldValue textFieldValue43 = textFieldValue;
                            OffsetMapping offsetMapping43 = offsetMapping3;
                            if (b5 && z2) {
                                EditProcessor editProcessor22 = legacyTextFieldState6.d;
                                t6 t6Var3 = legacyTextFieldState6.v;
                                t6 t6Var2222 = legacyTextFieldState6.w;
                                ?? obj5 = new Object();
                                p2 p2Var = new p2(editProcessor22, t6Var3, (Object) obj5, 17);
                                TextInputService textInputService53 = textInputService;
                                PlatformTextInputService platformTextInputService = textInputService53.a;
                                platformTextInputService.c(textFieldValue43, imeOptions2, p2Var, t6Var2222);
                                TextInputSession textInputSession2 = new TextInputSession(textInputService53, platformTextInputService);
                                textInputService53.b.set(textInputSession2);
                                obj5.j = textInputSession2;
                                legacyTextFieldState6.e = textInputSession2;
                                CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue43, offsetMapping43);
                            } else {
                                CoreTextFieldKt.e(legacyTextFieldState6);
                            }
                            if (focusStateImpl.b() && (d2 = legacyTextFieldState6.d()) != null) {
                                BuildersKt.c(coroutineScope, null, null, new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(bringIntoViewRequester, textFieldValue43, legacyTextFieldState6, d2, offsetMapping43, null), 3);
                            }
                            if (!focusStateImpl.b()) {
                                textFieldSelectionManager2222.g(null);
                            }
                        }
                        return unit;
                    }
                };
                z8 = z2;
                coroutineScope2 = coroutineScope;
                textFieldValue3 = textFieldValue;
                textFieldSelectionManager2222 = textFieldSelectionManager2222;
                bringIntoViewRequester2 = bringIntoViewRequester;
                offsetMapping = offsetMapping3;
                gapComposer3.g0(obj);
                Modifier.Companion companion2222 = Modifier.Companion.b;
                CoroutineScope coroutineScope4222 = coroutineScope2;
                Modifier a4222 = FocusableKt.a(FocusChangedModifierKt.a(FocusRequesterModifierKt.a(companion2222, focusRequester3), (Function1) obj), z8, mutableInteractionSource2);
                MutableState k222 = SnapshotStateKt.k(Boolean.valueOf(z8), gapComposer3);
                boolean f3222 = gapComposer3.f(k222) | gapComposer3.h(legacyTextFieldState) | gapComposer3.h(textInputService) | gapComposer3.h(textFieldSelectionManager2222);
                if (i9 > 32) {
                }
                legacyTextFieldState2 = legacyTextFieldState;
                if ((i11 & 48) != 32) {
                }
                z9 = true;
                z10 = f3222 | z9;
                Object K182222 = gapComposer3.K();
                if (z10) {
                }
                focusRequester4 = focusRequester3;
                coroutineScope3 = coroutineScope4222;
                modifier2 = a4222;
                companion = companion2222;
                legacyTextFieldState3 = legacyTextFieldState2;
                coreTextFieldKt$CoreTextField$5$1 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState3, k222, textInputService, textFieldSelectionManager2222, imeOptions2, null);
                mutableState = k222;
                textInputService2 = textInputService;
                gapComposer3.g0(coreTextFieldKt$CoreTextField$5$1);
                EffectsKt.e(gapComposer3, Unit.a, (Function2) coreTextFieldKt$CoreTextField$5$1);
                Modifier f42222 = SelectionGesturesKt.f(new t6(legacyTextFieldState3, 4));
                final OffsetMapping offsetMapping42222 = offsetMapping;
                FocusRequester focusRequester62222 = focusRequester4;
                final pb pbVar2222 = new pb(legacyTextFieldState3, focusRequester62222, z8, textFieldSelectionManager2222, offsetMapping42222);
                Modifier l22222 = (z2 ? ComposedModifierKt.a(f42222, new Function3() { // from class: androidx.compose.foundation.text.k
                    @Override // kotlin.jvm.functions.Function3
                    public final Object f(Object obj4, Object obj5, Object obj6) {
                        ((Integer) obj6).getClass();
                        GapComposer gapComposer523 = (GapComposer) ((Composer) obj5);
                        gapComposer523.W(-102778667);
                        Object K19 = gapComposer523.K();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                        if (K19 == composer$Companion$Empty$1) {
                            K19 = EffectsKt.h(gapComposer523);
                            gapComposer523.g0(K19);
                        }
                        final CoroutineScope coroutineScope523 = (CoroutineScope) K19;
                        Object K20 = gapComposer523.K();
                        if (K20 == composer$Companion$Empty$1) {
                            K20 = SnapshotStateKt.g(null);
                            gapComposer523.g0(K20);
                        }
                        final MutableState mutableState2 = (MutableState) K20;
                        final MutableState k2222 = SnapshotStateKt.k(pb.this, gapComposer523);
                        final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                        boolean f5 = gapComposer523.f(mutableInteractionSource3);
                        Object K21 = gapComposer523.K();
                        if (f5 || K21 == composer$Companion$Empty$1) {
                            K21 = new ec(14, mutableState2, mutableInteractionSource3);
                            gapComposer523.g0(K21);
                        }
                        EffectsKt.c(mutableInteractionSource3, (Function1) K21, gapComposer523);
                        boolean h62222 = gapComposer523.h(coroutineScope523) | gapComposer523.f(mutableInteractionSource3) | gapComposer523.f(k2222);
                        Object K22 = gapComposer523.K();
                        if (h62222 || K22 == composer$Companion$Empty$1) {
                            K22 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1

                                /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", l = {67}, m = "invokeSuspend", v = 1)
                                /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name */
                                /* loaded from: classes.dex */
                                final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
                                    public int n;
                                    public /* synthetic */ PressGestureScope o;
                                    public /* synthetic */ long p;
                                    public final /* synthetic */ CoroutineScope q;
                                    public final /* synthetic */ MutableState r;
                                    public final /* synthetic */ MutableInteractionSource s;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                    @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1", f = "TextFieldPressGestureFilter.kt", l = {60, 64}, m = "invokeSuspend", v = 1)
                                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1, reason: invalid class name and collision with other inner class name */
                                    /* loaded from: classes.dex */
                                    public final class C00051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                        public Object n;
                                        public int o;
                                        public final /* synthetic */ MutableState p;
                                        public final /* synthetic */ long q;
                                        public final /* synthetic */ MutableInteractionSource r;

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        public C00051(MutableState mutableState, long j, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                            super(2, continuation);
                                            this.p = mutableState;
                                            this.q = j;
                                            this.r = mutableInteractionSource;
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object n(Object obj, Object obj2) {
                                            return ((C00051) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Continuation s(Object obj, Continuation continuation) {
                                            return new C00051(this.p, this.q, this.r, continuation);
                                        }

                                        /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
                                        
                                            if (r3.a(r1, r7) == r0) goto L23;
                                         */
                                        /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                        */
                                        public final Object v(Object obj) {
                                            MutableState mutableState;
                                            PressInteraction.Press press;
                                            PressInteraction.Press press2;
                                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                            int i = this.o;
                                            MutableInteractionSource mutableInteractionSource = this.r;
                                            MutableState mutableState2 = this.p;
                                            if (i != 0) {
                                                if (i != 1) {
                                                    if (i == 2) {
                                                        press2 = (PressInteraction.Press) this.n;
                                                        ResultKt.b(obj);
                                                        press = press2;
                                                        mutableState2.setValue(press);
                                                        return Unit.a;
                                                    }
                                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                                    return null;
                                                }
                                                mutableState = (MutableState) this.n;
                                                ResultKt.b(obj);
                                            } else {
                                                ResultKt.b(obj);
                                                PressInteraction.Press press3 = (PressInteraction.Press) mutableState2.getValue();
                                                if (press3 != null) {
                                                    PressInteraction.Cancel cancel = new PressInteraction.Cancel(press3);
                                                    if (mutableInteractionSource != null) {
                                                        this.n = mutableState2;
                                                        this.o = 1;
                                                    }
                                                    mutableState = mutableState2;
                                                }
                                                press = new PressInteraction.Press(this.q);
                                                if (mutableInteractionSource != null) {
                                                    this.n = press;
                                                    this.o = 2;
                                                    if (mutableInteractionSource.a(press, this) != coroutineSingletons) {
                                                        press2 = press;
                                                        press = press2;
                                                    }
                                                    return coroutineSingletons;
                                                }
                                                mutableState2.setValue(press);
                                                return Unit.a;
                                            }
                                            mutableState.setValue(null);
                                            press = new PressInteraction.Press(this.q);
                                            if (mutableInteractionSource != null) {
                                            }
                                            mutableState2.setValue(press);
                                            return Unit.a;
                                        }
                                    }

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                    @DebugMetadata(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2", f = "TextFieldPressGestureFilter.kt", l = {76}, m = "invokeSuspend", v = 1)
                                    /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2, reason: invalid class name */
                                    /* loaded from: classes.dex */
                                    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                        public MutableState n;
                                        public int o;
                                        public final /* synthetic */ MutableState p;
                                        public final /* synthetic */ boolean q;
                                        public final /* synthetic */ MutableInteractionSource r;

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        public AnonymousClass2(MutableState mutableState, boolean z, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                            super(2, continuation);
                                            this.p = mutableState;
                                            this.q = z;
                                            this.r = mutableInteractionSource;
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object n(Object obj, Object obj2) {
                                            return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Continuation s(Object obj, Continuation continuation) {
                                            return new AnonymousClass2(this.p, this.q, this.r, continuation);
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Object v(Object obj) {
                                            MutableState mutableState;
                                            Interaction cancel;
                                            MutableState mutableState2;
                                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                            int i = this.o;
                                            if (i != 0) {
                                                if (i == 1) {
                                                    mutableState2 = this.n;
                                                    ResultKt.b(obj);
                                                } else {
                                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                                    return null;
                                                }
                                            } else {
                                                ResultKt.b(obj);
                                                mutableState = this.p;
                                                PressInteraction.Press press = (PressInteraction.Press) mutableState.getValue();
                                                if (press != null) {
                                                    if (this.q) {
                                                        cancel = new PressInteraction.Release(press);
                                                    } else {
                                                        cancel = new PressInteraction.Cancel(press);
                                                    }
                                                    MutableInteractionSource mutableInteractionSource = this.r;
                                                    if (mutableInteractionSource != null) {
                                                        this.n = mutableState;
                                                        this.o = 1;
                                                        if (mutableInteractionSource.a(cancel, this) == coroutineSingletons) {
                                                            return coroutineSingletons;
                                                        }
                                                        mutableState2 = mutableState;
                                                    }
                                                    mutableState.setValue(null);
                                                }
                                                return Unit.a;
                                            }
                                            mutableState = mutableState2;
                                            mutableState.setValue(null);
                                            return Unit.a;
                                        }
                                    }

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    public AnonymousClass1(CoroutineScope coroutineScope, MutableState mutableState, MutableInteractionSource mutableInteractionSource, Continuation continuation) {
                                        super(3, continuation);
                                        this.q = coroutineScope;
                                        this.r = mutableState;
                                        this.s = mutableInteractionSource;
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object f(Object obj, Object obj2, Object obj3) {
                                        long j = ((Offset) obj2).a;
                                        MutableState mutableState = this.r;
                                        MutableInteractionSource mutableInteractionSource = this.s;
                                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, mutableState, mutableInteractionSource, (Continuation) obj3);
                                        anonymousClass1.o = (PressGestureScope) obj;
                                        anonymousClass1.p = j;
                                        return anonymousClass1.v(Unit.a);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Object v(Object obj) {
                                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                        int i = this.n;
                                        CoroutineScope coroutineScope = this.q;
                                        if (i != 0) {
                                            if (i == 1) {
                                                ResultKt.b(obj);
                                            } else {
                                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                                return null;
                                            }
                                        } else {
                                            ResultKt.b(obj);
                                            PressGestureScope pressGestureScope = this.o;
                                            BuildersKt.c(coroutineScope, null, null, new C00051(this.r, this.p, this.s, null), 3);
                                            this.n = 1;
                                            obj = ((PressGestureScopeImpl) pressGestureScope).e(this);
                                            if (obj == coroutineSingletons) {
                                                return coroutineSingletons;
                                            }
                                        }
                                        BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.r, ((Boolean) obj).booleanValue(), this.s, null), 3);
                                        return Unit.a;
                                    }
                                }

                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object d2 = TapGestureDetectorKt.d(pointerInputScope, new AnonymousClass1(CoroutineScope.this, mutableState2, mutableInteractionSource3, null), new i2(k2222, 17), continuation);
                                    if (d2 == CoroutineSingletons.j) {
                                        return d2;
                                    }
                                    return Unit.a;
                                }
                            };
                            gapComposer523.g0(K22);
                        }
                        Modifier a52222 = SuspendingPointerInputFilterKt.a(Modifier.Companion.b, mutableInteractionSource3, (PointerInputEventHandler) K22);
                        gapComposer523.p(false);
                        return a52222;
                    }
                }) : f42222).l(new SuspendPointerInputElement(textFieldSelectionManager2222.z, textFieldSelectionManager2222.y, null, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                        Object c = SelectionGesturesKt.c(pointerInputScope, textFieldSelectionManager3.z, textFieldSelectionManager3.y, continuation);
                        if (c == CoroutineSingletons.j) {
                            return c;
                        }
                        return Unit.a;
                    }
                }, 4));
                PointerIcon.a.getClass();
                Modifier a52222 = PointerIconKt.a(l22222, PointerIcon_androidKt.b);
                final Modifier b32222 = DrawModifierKt.b(companion, new p2(legacyTextFieldState3, textFieldValue3, offsetMapping42222, 4));
                boolean h62222 = gapComposer3.h(legacyTextFieldState3) | (i15222 == 2048) | gapComposer3.f(windowInfo2) | gapComposer3.h(textFieldSelectionManager2222);
                int i162222 = i10;
                h2 = h62222 | (i162222 == 4) | gapComposer3.h(offsetMapping42222);
                K6 = gapComposer3.K();
                if (h2) {
                }
                final TextFieldValue textFieldValue42222 = textFieldValue3;
                textInputService3 = textInputService2;
                Function1 function142222 = new Function1() { // from class: androidx.compose.foundation.text.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj4) {
                        TextInputSession textInputSession2;
                        final LayoutCoordinates layoutCoordinates;
                        LayoutCoordinates layoutCoordinates2;
                        LegacyTextFieldState legacyTextFieldState6 = LegacyTextFieldState.this;
                        MutableState mutableState2 = legacyTextFieldState6.o;
                        LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj4;
                        legacyTextFieldState6.h = layoutCoordinates3;
                        TextLayoutResultProxy d2 = legacyTextFieldState6.d();
                        if (d2 != null) {
                            d2.b = layoutCoordinates3;
                        }
                        if (z2) {
                            HandleState a62222 = legacyTextFieldState6.a();
                            HandleState handleState = HandleState.k;
                            TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2222;
                            TextFieldValue textFieldValue5 = textFieldValue42222;
                            if (a62222 == handleState) {
                                if (((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState6.l).getValue()).booleanValue() && ((LazyWindowInfo) windowInfo2).a()) {
                                    textFieldSelectionManager3.s();
                                } else {
                                    textFieldSelectionManager3.p();
                                }
                                ((SnapshotMutableStateImpl) legacyTextFieldState6.m).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                                ((SnapshotMutableStateImpl) legacyTextFieldState6.n).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, false)));
                                ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextRange.c(textFieldValue5.b)));
                            } else if (legacyTextFieldState6.a() == HandleState.l) {
                                ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(TextFieldSelectionManager_androidKt.a(textFieldSelectionManager3, true)));
                            }
                            OffsetMapping offsetMapping52222 = offsetMapping42222;
                            CoreTextFieldKt.f(legacyTextFieldState6, textFieldValue5, offsetMapping52222);
                            TextLayoutResultProxy d3 = legacyTextFieldState6.d();
                            if (d3 != null && (textInputSession2 = legacyTextFieldState6.e) != null && legacyTextFieldState6.b() && (layoutCoordinates = d3.b) != null && layoutCoordinates.o() && (layoutCoordinates2 = d3.c) != null) {
                                TextLayoutResult textLayoutResult = d3.a;
                                Function1<Matrix, Unit> function15 = new Function1<Matrix, Unit>() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj5) {
                                        float[] fArr = ((Matrix) obj5).a;
                                        LayoutCoordinates layoutCoordinates4 = LayoutCoordinates.this;
                                        if (layoutCoordinates4.o()) {
                                            LayoutCoordinatesKt.c(layoutCoordinates4).I(layoutCoordinates4, fArr);
                                        }
                                        return Unit.a;
                                    }
                                };
                                Rect a72 = SelectionManagerKt.a(layoutCoordinates);
                                Rect l323 = layoutCoordinates.l(layoutCoordinates2, false);
                                if (Intrinsics.a((TextInputSession) textInputSession2.a.b.get(), textInputSession2)) {
                                    textInputSession2.b.g(textFieldValue5, offsetMapping52222, textLayoutResult, function15, a72, l323);
                                }
                            }
                        }
                        return Unit.a;
                    }
                };
                windowInfo = windowInfo2;
                offsetMapping42222 = offsetMapping42222;
                gapComposer3.g0(function142222);
                K6 = function142222;
                final Modifier a62222 = OnGloballyPositionedModifierKt.a(companion, (Function1) K6);
                legacyTextFieldState4 = legacyTextFieldState3;
                textFieldSelectionManager = textFieldSelectionManager2222;
                TextInputService textInputService52222 = textInputService3;
                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier2222 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState4, z2, offsetMapping42222, textFieldSelectionManager, imeOptions, focusRequester62222);
                final OffsetMapping offsetMapping52222 = offsetMapping42222;
                if (!z2 && ((LazyWindowInfo) windowInfo).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState4.B).getValue()).a)) {
                }
                h3 = gapComposer3.h(textFieldSelectionManager);
                K7 = gapComposer3.K();
                if (!h3) {
                }
                K7 = new w6(textFieldSelectionManager, 0);
                gapComposer3.g0(K7);
                EffectsKt.c(textFieldSelectionManager, (Function1) K7, gapComposer3);
                h4 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.h(textInputService52222) | (i162222 == 4) | ((i9 <= 32 && gapComposer3.f(imeOptions)) || (i11 & 48) == 32);
                K8 = gapComposer3.K();
                if (h4) {
                }
                s2 s2Var2222 = new s2(legacyTextFieldState4, textInputService52222, textFieldValue, imeOptions, 2);
                imeOptions3 = imeOptions;
                gapComposer3.g0(s2Var2222);
                K8 = s2Var2222;
                EffectsKt.c(imeOptions3, (Function1) K8, gapComposer3);
                final Function1 t6Var2222 = legacyTextFieldState4.v;
                if (i == 1) {
                }
                final int i172222 = imeOptions3.e;
                final boolean z152222 = true;
                Modifier a82222 = ComposedModifierKt.a(companion, new Function3() { // from class: androidx.compose.foundation.text.j
                    @Override // kotlin.jvm.functions.Function3
                    public final Object f(Object obj4, Object obj5, Object obj6) {
                        ((Integer) obj6).getClass();
                        GapComposer gapComposer523 = (GapComposer) ((Composer) obj5);
                        gapComposer523.W(851809892);
                        Object K19 = gapComposer523.K();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                        if (K19 == composer$Companion$Empty$1) {
                            K19 = new Object();
                            gapComposer523.g0(K19);
                        }
                        TextPreparedSelectionState textPreparedSelectionState = (TextPreparedSelectionState) K19;
                        Object K20 = gapComposer523.K();
                        if (K20 == composer$Companion$Empty$1) {
                            K20 = new Object();
                            gapComposer523.g0(K20);
                        }
                        TextFieldKeyInput textFieldKeyInput = new TextFieldKeyInput(LegacyTextFieldState.this, textFieldSelectionManager, textFieldValue, z152222, z14, textPreparedSelectionState, offsetMapping52222, undoManager, (DeadKeyCombiner) K20, t6Var2222, i172222);
                        boolean h7 = gapComposer523.h(textFieldKeyInput);
                        Object K21 = gapComposer523.K();
                        if (h7 || K21 == composer$Companion$Empty$1) {
                            FunctionReference functionReference = new FunctionReference(1, textFieldKeyInput, TextFieldKeyInput.class, "process", "process-ZmokQxo(Landroid/view/KeyEvent;)Z", 0);
                            gapComposer523.g0(functionReference);
                            K21 = functionReference;
                        }
                        Modifier a923 = KeyInputModifierKt.a(Modifier.Companion.b, (Function1) ((KFunction) K21));
                        gapComposer523.p(false);
                        return a923;
                    }
                });
                int i182222 = imeOptions3.d;
                if (i182222 == 7) {
                }
                boolean booleanValue22222 = ((Boolean) mutableState.getValue()).booleanValue();
                LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter322222 = legacyPlatformTextInputServiceAdapter;
                g = gapComposer3.g(z11) | gapComposer3.h(legacyPlatformTextInputServiceAdapter322222);
                K9 = gapComposer3.K();
                if (!g) {
                }
                K9 = new q6(1, legacyPlatformTextInputServiceAdapter322222, z11);
                gapComposer3.g0(K9);
                Modifier a922222 = StylusHandwritingKt.a(booleanValue22222, z11, (Function0) K9);
                Brush brush22222 = (Brush) gapComposer3.j(AutofillHighlightKt.a);
                long j622222 = ((Color) gapComposer3.j(AutofillHighlightKt.b)).a;
                if (Color.c(j622222, ColorKt.b(1308617531))) {
                }
                h5 = gapComposer3.h(legacyTextFieldState4) | gapComposer3.f(solidColor2);
                K10 = gapComposer3.K();
                if (!h5) {
                }
                K10 = new defpackage.b(10, legacyTextFieldState4, solidColor2);
                gapComposer3.g0(K10);
                final FocusManager focusManager322222 = focusManager;
                Modifier l322222 = KeyInputModifierKt.b(KeyInputModifierKt.b(LegacyAdaptingPlatformTextInputModifierNodeKt.a(modifier.l(DrawModifierKt.d(companion, (Function1) K10)), legacyPlatformTextInputServiceAdapter322222, legacyTextFieldState4, textFieldSelectionManager).l(a922222).l(modifier2), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.TextFieldFocusModifier_androidKt$interceptDPadAndMoveFocus$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj4) {
                        android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                        InputDevice device = keyEvent.getDevice();
                        boolean z1622222 = false;
                        if (device != null && device.supportsSource(513) && ((!device.isVirtual() || keyEvent.getSource() == 33554433) && KeyEvent_androidKt.b(keyEvent) == 2 && keyEvent.getSource() != 257)) {
                            boolean a1022222 = TextFieldFocusModifier_androidKt.a(19, keyEvent);
                            FocusManager focusManager4 = FocusManager.this;
                            if (a1022222) {
                                z1622222 = ((FocusOwnerImpl) focusManager4).h(5, true);
                            } else if (TextFieldFocusModifier_androidKt.a(20, keyEvent)) {
                                z1622222 = ((FocusOwnerImpl) focusManager4).h(6, true);
                            } else if (TextFieldFocusModifier_androidKt.a(21, keyEvent)) {
                                z1622222 = ((FocusOwnerImpl) focusManager4).h(3, true);
                            } else if (TextFieldFocusModifier_androidKt.a(22, keyEvent)) {
                                z1622222 = ((FocusOwnerImpl) focusManager4).h(4, true);
                            } else if (TextFieldFocusModifier_androidKt.a(23, keyEvent)) {
                                SoftwareKeyboardController softwareKeyboardController2 = legacyTextFieldState4.c;
                                if (softwareKeyboardController2 != null) {
                                    ((DelegatingSoftwareKeyboardController) softwareKeyboardController2).b();
                                }
                                z1622222 = true;
                            }
                        }
                        return Boolean.valueOf(z1622222);
                    }
                }), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj4) {
                        boolean z1622222;
                        android.view.KeyEvent keyEvent = ((KeyEvent) obj4).a;
                        if (LegacyTextFieldState.this.a() == HandleState.k && keyEvent.getKeyCode() == 4) {
                            z1622222 = true;
                            if (KeyEvent_androidKt.b(keyEvent) == 1) {
                                textFieldSelectionManager.g(null);
                                return Boolean.valueOf(z1622222);
                            }
                        }
                        z1622222 = false;
                        return Boolean.valueOf(z1622222);
                    }
                }).l(a82222);
                final TextFieldScrollerPosition textFieldScrollerPosition422222 = textFieldScrollerPosition2;
                final CoroutineScope coroutineScope522222 = coroutineScope3;
                Modifier a1022222 = TextContextMenuModifier_androidKt.a(OnGloballyPositionedModifierKt.a(ComposedModifierKt.a(l322222, new Function3() { // from class: dh
                    @Override // kotlin.jvm.functions.Function3
                    public final Object f(Object obj4, Object obj5, Object obj6) {
                        boolean z1622222;
                        boolean z17;
                        TextFieldScrollerPosition textFieldScrollerPosition5 = TextFieldScrollerPosition.this;
                        MutableState mutableState2 = textFieldScrollerPosition5.f;
                        ((Integer) obj6).getClass();
                        GapComposer gapComposer522222 = (GapComposer) ((Composer) obj5);
                        gapComposer522222.W(-2137546592);
                        boolean z18 = true;
                        if (gapComposer522222.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                            z1622222 = true;
                        } else {
                            z1622222 = false;
                        }
                        if (((Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue()) != Orientation.j && z1622222) {
                            z17 = false;
                        } else {
                            z17 = true;
                        }
                        boolean f5 = gapComposer522222.f(textFieldScrollerPosition5);
                        Object K19 = gapComposer522222.K();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                        if (f5 || K19 == composer$Companion$Empty$1) {
                            K19 = new ma(29, textFieldScrollerPosition5);
                            gapComposer522222.g0(K19);
                        }
                        ScrollableState b4 = ScrollableStateKt.b((Function1) K19, gapComposer522222);
                        boolean f6 = gapComposer522222.f(b4) | gapComposer522222.f(textFieldScrollerPosition5);
                        Object K20 = gapComposer522222.K();
                        if (f6 || K20 == composer$Companion$Empty$1) {
                            K20 = new ScrollableState(textFieldScrollerPosition5) { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1
                                public final State b;
                                public final State c;

                                {
                                    final int i19 = 0;
                                    this.b = SnapshotStateKt.e(new Function0() { // from class: eh
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object a() {
                                            int i202 = i19;
                                            boolean z19 = false;
                                            TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                            switch (i202) {
                                                case 0:
                                                    if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                        z19 = true;
                                                    }
                                                    return Boolean.valueOf(z19);
                                                default:
                                                    if (textFieldScrollerPosition6.a() > 0.0f) {
                                                        z19 = true;
                                                    }
                                                    return Boolean.valueOf(z19);
                                            }
                                        }
                                    });
                                    final int i20 = 1;
                                    this.c = SnapshotStateKt.e(new Function0() { // from class: eh
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object a() {
                                            int i202 = i20;
                                            boolean z19 = false;
                                            TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                            switch (i202) {
                                                case 0:
                                                    if (textFieldScrollerPosition6.a() < ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition6.b).j()) {
                                                        z19 = true;
                                                    }
                                                    return Boolean.valueOf(z19);
                                                default:
                                                    if (textFieldScrollerPosition6.a() > 0.0f) {
                                                        z19 = true;
                                                    }
                                                    return Boolean.valueOf(z19);
                                            }
                                        }
                                    });
                                }

                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                public final boolean a() {
                                    return ScrollableState.this.a();
                                }

                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                public final boolean b() {
                                    return ((Boolean) this.c.getValue()).booleanValue();
                                }

                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
                                    return ScrollableState.this.c(mutatePriority, function2, continuationImpl);
                                }

                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                public final boolean d() {
                                    return ((Boolean) this.b.getValue()).booleanValue();
                                }

                                @Override // androidx.compose.foundation.gestures.ScrollableState
                                public final float e(float f7) {
                                    return ScrollableState.this.e(f7);
                                }
                            };
                            gapComposer522222.g0(K20);
                        }
                        TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 = (TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1) K20;
                        Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) mutableState2).getValue();
                        if (!z2 || ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition5.b).j() == 0.0f) {
                            z18 = false;
                        }
                        Modifier b5 = ScrollableKt.b(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation2, z18, z17, mutableInteractionSource2);
                        gapComposer522222.p(false);
                        return b5;
                    }
                }).l(a52222).l(coreTextFieldSemanticsModifier2222), new t6(legacyTextFieldState4, 0)), new zc(8, textFieldSelectionManager, coroutineScope522222));
                if (z2) {
                }
                if (z12) {
                }
                GapComposer gapComposer522222 = gapComposer3;
                final Modifier companion322222 = a7;
                final BringIntoViewRequester bringIntoViewRequester322222 = bringIntoViewRequester2;
                final WindowInfo windowInfo322222 = windowInfo;
                final Modifier modifier422222 = modifier3;
                final Density density422222 = density2;
                final boolean z1622222 = z12;
                gapComposer = gapComposer522222;
                b(a1022222, textFieldSelectionManager, ComposableLambdaKt.b(-814563849, new Function2() { // from class: u6
                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj4, Object obj5) {
                        boolean z17;
                        Composer composer2 = (Composer) obj4;
                        int intValue = ((Integer) obj5).intValue();
                        if ((intValue & 3) != 2) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        GapComposer gapComposer6 = (GapComposer) composer2;
                        if (gapComposer6.N(intValue & 1, z17)) {
                            final TextStyle textStyle3 = textStyle;
                            final LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState4;
                            final int i19 = i2;
                            final int i20 = i;
                            final boolean z18 = z;
                            final TextFieldScrollerPosition textFieldScrollerPosition5 = textFieldScrollerPosition422222;
                            final TextFieldValue textFieldValue5 = textFieldValue;
                            final VisualTransformation visualTransformation2 = visualTransformation;
                            final Modifier modifier5 = companion322222;
                            final Modifier modifier6 = b32222;
                            final Modifier modifier7 = a62222;
                            final Modifier modifier8 = modifier422222;
                            final BringIntoViewRequester bringIntoViewRequester4 = bringIntoViewRequester322222;
                            final TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager;
                            final boolean z19 = z1622222;
                            final WindowInfo windowInfo4 = windowInfo322222;
                            final CoroutineScope coroutineScope6 = coroutineScope522222;
                            final Function1 function15 = function12;
                            final OffsetMapping offsetMapping6 = offsetMapping52222;
                            final Density density5 = density422222;
                            ComposableLambdaImpl.this.f(ComposableLambdaKt.b(-44346382, new Function2() { // from class: androidx.compose.foundation.text.b
                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj6, Object obj7) {
                                    boolean z20;
                                    float f5;
                                    Modifier verticalScrollLayoutModifier;
                                    Composer composer3 = (Composer) obj6;
                                    int intValue2 = ((Integer) obj7).intValue();
                                    if ((intValue2 & 3) != 2) {
                                        z20 = true;
                                    } else {
                                        z20 = false;
                                    }
                                    GapComposer gapComposer7 = (GapComposer) composer3;
                                    if (gapComposer7.N(intValue2 & 1, z20)) {
                                        final LegacyTextFieldState legacyTextFieldState7 = legacyTextFieldState6;
                                        float f6 = ((Dp) ((SnapshotMutableStateImpl) legacyTextFieldState7.g).getValue()).j;
                                        if (Dp.b(f6, 0.0f)) {
                                            f5 = Float.NaN;
                                        } else {
                                            f5 = f6;
                                        }
                                        Modifier f7 = SizeKt.f(Modifier.Companion.b, f6, f5);
                                        int i21 = i19;
                                        final int i22 = i20;
                                        HeightInLinesModifierKt.b(i21, i22);
                                        TextStyle textStyle4 = TextStyle.this;
                                        if ((i21 != 1 || i22 != Integer.MAX_VALUE) && z18) {
                                            f7 = f7.l(new HeightInLinesElement(textStyle4, i21, i22));
                                        }
                                        boolean h7 = gapComposer7.h(legacyTextFieldState7);
                                        Object K19 = gapComposer7.K();
                                        if (h7 || K19 == Composer.Companion.a) {
                                            K19 = new r1(11, legacyTextFieldState7);
                                            gapComposer7.g0(K19);
                                        }
                                        Function0 function0 = (Function0) K19;
                                        TextFieldScrollerPosition textFieldScrollerPosition6 = textFieldScrollerPosition5;
                                        Orientation orientation2 = (Orientation) ((SnapshotMutableStateImpl) textFieldScrollerPosition6.f).getValue();
                                        final TextFieldValue textFieldValue6 = textFieldValue5;
                                        long j7 = textFieldValue6.b;
                                        int i23 = TextRange.c;
                                        int i24 = (int) (j7 >> 32);
                                        long j8 = textFieldScrollerPosition6.e;
                                        if (i24 == ((int) (j8 >> 32)) && (i24 = (int) (j7 & 4294967295L)) == ((int) (j8 & 4294967295L))) {
                                            i24 = TextRange.f(j7);
                                        }
                                        textFieldScrollerPosition6.e = textFieldValue6.b;
                                        TransformedText a11 = ValidatingOffsetMappingKt.a(visualTransformation2, textFieldValue6.a);
                                        int ordinal = orientation2.ordinal();
                                        if (ordinal != 0) {
                                            if (ordinal == 1) {
                                                verticalScrollLayoutModifier = new HorizontalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                            } else {
                                                k8.e();
                                                return null;
                                            }
                                        } else {
                                            verticalScrollLayoutModifier = new VerticalScrollLayoutModifier(textFieldScrollerPosition6, i24, a11, function0);
                                        }
                                        Modifier l4 = ClipKt.b(OverscrollKt.a(f7)).l(verticalScrollLayoutModifier).l(modifier5).l(modifier6).l(new TextFieldSizeElement(textStyle4)).l(modifier7).l(modifier8);
                                        final BringIntoViewRequester bringIntoViewRequester5 = bringIntoViewRequester4;
                                        Modifier b4 = BringIntoViewRequesterKt.b(l4, bringIntoViewRequester5);
                                        final TextFieldSelectionManager textFieldSelectionManager4 = textFieldSelectionManager3;
                                        final boolean z21 = z19;
                                        final WindowInfo windowInfo5 = windowInfo4;
                                        final CoroutineScope coroutineScope7 = coroutineScope6;
                                        final Function1 function16 = function15;
                                        final OffsetMapping offsetMapping7 = offsetMapping6;
                                        final Density density6 = density5;
                                        SimpleLayoutKt.a(b4, ComposableLambdaKt.b(1412697320, new Function2() { // from class: s6
                                            /* JADX WARN: Code restructure failed: missing block: B:15:0x009e, code lost:
                                            
                                                if (r0 != false) goto L21;
                                             */
                                            @Override // kotlin.jvm.functions.Function2
                                            /*
                                                Code decompiled incorrectly, please refer to instructions dump.
                                            */
                                            public final Object n(Object obj8, Object obj9) {
                                                boolean z22;
                                                Composer composer4 = (Composer) obj8;
                                                int intValue3 = ((Integer) obj9).intValue();
                                                boolean z23 = true;
                                                if ((intValue3 & 3) != 2) {
                                                    z22 = true;
                                                } else {
                                                    z22 = false;
                                                }
                                                GapComposer gapComposer8 = (GapComposer) composer4;
                                                if (gapComposer8.N(intValue3 & 1, z22)) {
                                                    final LegacyTextFieldState legacyTextFieldState8 = legacyTextFieldState7;
                                                    final TextFieldSelectionManager textFieldSelectionManager5 = TextFieldSelectionManager.this;
                                                    final WindowInfo windowInfo6 = windowInfo5;
                                                    final CoroutineScope coroutineScope8 = coroutineScope7;
                                                    final Function1 function17 = function16;
                                                    final TextFieldValue textFieldValue7 = textFieldValue6;
                                                    final OffsetMapping offsetMapping8 = offsetMapping7;
                                                    final Density density7 = density6;
                                                    final BringIntoViewRequester bringIntoViewRequester6 = bringIntoViewRequester5;
                                                    final int i25 = i22;
                                                    MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2
                                                        /* JADX WARN: Removed duplicated region for block: B:38:0x01c8  */
                                                        /* JADX WARN: Removed duplicated region for block: B:64:0x0258  */
                                                        /* JADX WARN: Removed duplicated region for block: B:67:0x0262  */
                                                        /* JADX WARN: Removed duplicated region for block: B:69:0x0251  */
                                                        @Override // androidx.compose.ui.layout.MeasurePolicy
                                                        /*
                                                            Code decompiled incorrectly, please refer to instructions dump.
                                                        */
                                                        public final MeasureResult a(MeasureScope measureScope, List list, long j9) {
                                                            Function1 function18;
                                                            TextLayoutResult textLayoutResult;
                                                            long j10;
                                                            TextLayoutResult textLayoutResult2;
                                                            LayoutDirection layoutDirection;
                                                            TextLayoutResult textLayoutResult3;
                                                            TextLayoutResult textLayoutResult4;
                                                            CoreTextFieldKt$CoreTextField$8$1$1$2 coreTextFieldKt$CoreTextField$8$1$1$2;
                                                            int i26;
                                                            LayoutCoordinates layoutCoordinates;
                                                            AnnotatedString annotatedString6;
                                                            TextLayoutInput textLayoutInput;
                                                            int h8;
                                                            int i27;
                                                            LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                            Snapshot a12 = Snapshot.Companion.a();
                                                            if (a12 != null) {
                                                                function18 = a12.e();
                                                            } else {
                                                                function18 = null;
                                                            }
                                                            Snapshot b5 = Snapshot.Companion.b(a12);
                                                            try {
                                                                TextLayoutResultProxy d2 = legacyTextFieldState9.d();
                                                                if (d2 != null) {
                                                                    textLayoutResult = d2.a;
                                                                } else {
                                                                    textLayoutResult = null;
                                                                }
                                                                TextDelegate textDelegate2 = legacyTextFieldState9.a;
                                                                LayoutDirection layoutDirection2 = measureScope.getLayoutDirection();
                                                                int i28 = textDelegate2.f;
                                                                boolean z24 = textDelegate2.e;
                                                                int i29 = textDelegate2.c;
                                                                if (textLayoutResult != null) {
                                                                    MultiParagraph multiParagraph = textLayoutResult.b;
                                                                    TextLayoutInput textLayoutInput2 = textLayoutResult.a;
                                                                    AnnotatedString annotatedString7 = textDelegate2.a;
                                                                    TextStyle textStyle5 = textDelegate2.b;
                                                                    List list2 = textDelegate2.i;
                                                                    Density density8 = textDelegate2.g;
                                                                    FontFamily.Resolver resolver3 = textDelegate2.h;
                                                                    TextLayoutResult textLayoutResult5 = textLayoutResult;
                                                                    if (multiParagraph.a.a()) {
                                                                        j10 = j9;
                                                                        layoutDirection = layoutDirection2;
                                                                    } else {
                                                                        AnnotatedString annotatedString8 = textLayoutInput2.a;
                                                                        long j11 = textLayoutInput2.j;
                                                                        if (Intrinsics.a(annotatedString8, annotatedString7) && textLayoutInput2.b.c(textStyle5) && Intrinsics.a(textLayoutInput2.c, list2) && textLayoutInput2.d == i29 && textLayoutInput2.e == z24 && textLayoutInput2.f == i28 && Intrinsics.a(textLayoutInput2.g, density8)) {
                                                                            layoutDirection = layoutDirection2;
                                                                            if (textLayoutInput2.h == layoutDirection && Intrinsics.a(textLayoutInput2.i, resolver3) && Constraints.j(j9) == Constraints.j(j11) && ((!z24 && i28 != 2) || (Constraints.h(j9) == Constraints.h(j11) && Constraints.g(j9) == Constraints.g(j11)))) {
                                                                                textLayoutResult2 = textLayoutResult5;
                                                                                textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput2.a, textDelegate2.b, textLayoutInput2.c, textLayoutInput2.d, textLayoutInput2.e, textLayoutInput2.f, textLayoutInput2.g, textLayoutInput2.h, textLayoutInput2.i, j9), multiParagraph, ConstraintsKt.d(j9, (TextDelegateKt.a(multiParagraph.e) & 4294967295L) | (TextDelegateKt.a(multiParagraph.d) << 32)));
                                                                                long j1222222 = textLayoutResult3.c;
                                                                                Integer valueOf32222 = Integer.valueOf((int) (j1222222 >> 32));
                                                                                Integer valueOf222222 = Integer.valueOf((int) (j1222222 & 4294967295L));
                                                                                int intValue422222 = valueOf32222.intValue();
                                                                                int intValue522222 = valueOf222222.intValue();
                                                                                MultiParagraph multiParagraph222222 = textLayoutResult3.b;
                                                                                multiParagraph222222.a.a();
                                                                                textLayoutResult4 = textLayoutResult2;
                                                                                if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                                    if (d2 != null) {
                                                                                        layoutCoordinates = d2.c;
                                                                                    } else {
                                                                                        layoutCoordinates = null;
                                                                                    }
                                                                                    ((SnapshotMutableStateImpl) legacyTextFieldState9.i).setValue(new TextLayoutResultProxy(textLayoutResult3, layoutCoordinates));
                                                                                    legacyTextFieldState9.p = false;
                                                                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                    TextFieldSelectionManager textFieldSelectionManager6 = textFieldSelectionManager5;
                                                                                    if (textFieldSelectionManager6.l() && textFieldSelectionManager6.k() && ((LazyWindowInfo) windowInfo6).a() && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.A).getValue()).a) && TextRange.c(((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState9.B).getValue()).a) && legacyTextFieldState9.b()) {
                                                                                        if (textLayoutResult4 != null && (textLayoutInput = textLayoutResult4.a) != null) {
                                                                                            annotatedString6 = textLayoutInput.a;
                                                                                        } else {
                                                                                            annotatedString6 = null;
                                                                                        }
                                                                                        if (!Intrinsics.a(annotatedString6, textLayoutResult3.a.a)) {
                                                                                            BuildersKt.c(coroutineScope8, null, null, new CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1(textFieldSelectionManager6, bringIntoViewRequester6, null), 3);
                                                                                        }
                                                                                    }
                                                                                    function17.b(textLayoutResult3);
                                                                                    CoreTextFieldKt.f(legacyTextFieldState9, textFieldValue7, offsetMapping8);
                                                                                } else {
                                                                                    coreTextFieldKt$CoreTextField$8$1$1$2 = this;
                                                                                }
                                                                                if (i25 != 1) {
                                                                                    i26 = TextDelegateKt.a(multiParagraph222222.b(0));
                                                                                } else {
                                                                                    i26 = 0;
                                                                                }
                                                                                ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                                return measureScope.B(intValue422222, intValue522222, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                            }
                                                                            j10 = j9;
                                                                        } else {
                                                                            j10 = j9;
                                                                            textLayoutResult2 = textLayoutResult5;
                                                                            layoutDirection = layoutDirection2;
                                                                        }
                                                                    }
                                                                    textLayoutResult2 = textLayoutResult5;
                                                                } else {
                                                                    j10 = j9;
                                                                    textLayoutResult2 = textLayoutResult;
                                                                    layoutDirection = layoutDirection2;
                                                                }
                                                                textDelegate2.a(layoutDirection);
                                                                int j13 = Constraints.j(j10);
                                                                if ((z24 || i28 == 2) && Constraints.d(j10)) {
                                                                    h8 = Constraints.h(j10);
                                                                } else {
                                                                    h8 = Integer.MAX_VALUE;
                                                                }
                                                                if (!z24 && i28 == 2) {
                                                                    i27 = 1;
                                                                } else {
                                                                    i27 = i29;
                                                                }
                                                                if (j13 != h8) {
                                                                    MultiParagraphIntrinsics multiParagraphIntrinsics = textDelegate2.j;
                                                                    if (multiParagraphIntrinsics != null) {
                                                                        h8 = RangesKt.d(TextDelegateKt.a(multiParagraphIntrinsics.c()), j13, h8);
                                                                    } else {
                                                                        u2.l("layoutIntrinsics must be called first");
                                                                        return null;
                                                                    }
                                                                }
                                                                MultiParagraphIntrinsics multiParagraphIntrinsics2 = textDelegate2.j;
                                                                if (multiParagraphIntrinsics2 != null) {
                                                                    textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textDelegate2.a, textDelegate2.b, textDelegate2.i, textDelegate2.c, textDelegate2.e, textDelegate2.f, textDelegate2.g, layoutDirection, textDelegate2.h, j10), new MultiParagraph(multiParagraphIntrinsics2, Constraints.Companion.b(0, h8, 0, Constraints.g(j10)), i27, textDelegate2.f), ConstraintsKt.d(j10, (TextDelegateKt.a(r25.d) << 32) | (TextDelegateKt.a(r25.e) & 4294967295L)));
                                                                    long j12222222 = textLayoutResult3.c;
                                                                    Integer valueOf322222 = Integer.valueOf((int) (j12222222 >> 32));
                                                                    Integer valueOf2222222 = Integer.valueOf((int) (j12222222 & 4294967295L));
                                                                    int intValue4222222 = valueOf322222.intValue();
                                                                    int intValue5222222 = valueOf2222222.intValue();
                                                                    MultiParagraph multiParagraph2222222 = textLayoutResult3.b;
                                                                    multiParagraph2222222.a.a();
                                                                    textLayoutResult4 = textLayoutResult2;
                                                                    if (Intrinsics.a(textLayoutResult4, textLayoutResult3)) {
                                                                    }
                                                                    if (i25 != 1) {
                                                                    }
                                                                    ((SnapshotMutableStateImpl) legacyTextFieldState9.g).setValue(new Dp(density7.U(i26)));
                                                                    return measureScope.B(intValue4222222, intValue5222222, MapsKt.f(new Pair(AlignmentLineKt.a, Integer.valueOf(Math.round(textLayoutResult3.d))), new Pair(AlignmentLineKt.b, Integer.valueOf(Math.round(textLayoutResult3.e)))), new a7(15));
                                                                }
                                                                u2.l("layoutIntrinsics must be called first");
                                                                return null;
                                                            } finally {
                                                                Snapshot.Companion.e(a12, b5, function18);
                                                            }
                                                        }

                                                        @Override // androidx.compose.ui.layout.MeasurePolicy
                                                        public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                                                            LegacyTextFieldState legacyTextFieldState9 = LegacyTextFieldState.this;
                                                            legacyTextFieldState9.a.a(intrinsicMeasureScope.getLayoutDirection());
                                                            MultiParagraphIntrinsics multiParagraphIntrinsics = legacyTextFieldState9.a.j;
                                                            if (multiParagraphIntrinsics != null) {
                                                                return TextDelegateKt.a(multiParagraphIntrinsics.c());
                                                            }
                                                            u2.l("layoutIntrinsics must be called first");
                                                            return 0;
                                                        }
                                                    };
                                                    int hashCode = Long.hashCode(gapComposer8.T);
                                                    PersistentCompositionLocalMap l5 = gapComposer8.l();
                                                    Modifier c = ComposedModifierKt.c(gapComposer8, Modifier.Companion.b);
                                                    ComposeUiNode.b.getClass();
                                                    gapComposer8.Z();
                                                    if (gapComposer8.S) {
                                                        gapComposer8.k(LayoutNode.b0);
                                                    } else {
                                                        gapComposer8.j0();
                                                    }
                                                    Updater.c(gapComposer8, measurePolicy, ComposeUiNode.Companion.d);
                                                    Updater.c(gapComposer8, l5, ComposeUiNode.Companion.c);
                                                    Updater.c(gapComposer8, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                                    Updater.b(gapComposer8);
                                                    Updater.c(gapComposer8, c, ComposeUiNode.Companion.b);
                                                    gapComposer8.p(true);
                                                    HandleState a12 = legacyTextFieldState8.a();
                                                    HandleState handleState = HandleState.j;
                                                    boolean z24 = z21;
                                                    if (a12 != handleState && legacyTextFieldState8.c() != null) {
                                                        LayoutCoordinates c2 = legacyTextFieldState8.c();
                                                        c2.getClass();
                                                        if (c2.o()) {
                                                        }
                                                    }
                                                    z23 = false;
                                                    CoreTextFieldKt.c(textFieldSelectionManager5, z23, gapComposer8, 0);
                                                    if (legacyTextFieldState8.a() == HandleState.l && z24) {
                                                        gapComposer8.W(-713510518);
                                                        CoreTextFieldKt.d(textFieldSelectionManager5, gapComposer8, 0);
                                                        gapComposer8.p(false);
                                                    } else {
                                                        gapComposer8.W(-713433638);
                                                        gapComposer8.p(false);
                                                    }
                                                } else {
                                                    gapComposer8.Q();
                                                }
                                                return Unit.a;
                                            }
                                        }, gapComposer7), gapComposer7, 48);
                                    } else {
                                        gapComposer7.Q();
                                    }
                                    return Unit.a;
                                }
                            }, gapComposer6), gapComposer6, 6);
                        } else {
                            gapComposer6.Q();
                        }
                        return Unit.a;
                    }
                }, gapComposer), gapComposer, 384);
            } else {
                u2.l("no recompose scope found");
                return;
            }
        } else {
            gapComposer = gapComposer4;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: v6
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj4, Object obj5) {
                    ((Integer) obj5).getClass();
                    int a11 = RecomposeScopeImplKt.a(i3 | 1);
                    int a12 = RecomposeScopeImplKt.a(i4);
                    CoreTextFieldKt.a(TextFieldValue.this, function1, modifier, textStyle, visualTransformation, function12, mutableInteractionSource, solidColor, z, i, i2, imeOptions, keyboardActions, z2, composableLambdaImpl, (Composer) obj4, a11, a12);
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(2036174316);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(textFieldSelectionManager)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, true);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            ContextMenu_androidKt.a(textFieldSelectionManager, composableLambdaImpl, gapComposer, (i5 >> 3) & 126);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new u(modifier, textFieldSelectionManager, composableLambdaImpl, i, 7);
        }
    }

    public static final void c(TextFieldSelectionManager textFieldSelectionManager, boolean z, Composer composer, int i) {
        int i2;
        int i3;
        boolean z2;
        TextLayoutResultProxy d;
        boolean z3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(626339208);
        if (gapComposer.h(textFieldSelectionManager)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.g(z)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 19) != 18) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i5 & 1, z2)) {
            if (z) {
                gapComposer.W(1530097388);
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                TextLayoutResult textLayoutResult = null;
                if (legacyTextFieldState != null && (d = legacyTextFieldState.d()) != null) {
                    TextLayoutResult textLayoutResult2 = d.a;
                    LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                    if (legacyTextFieldState2 != null) {
                        z3 = legacyTextFieldState2.p;
                    } else {
                        z3 = true;
                    }
                    if (!z3) {
                        textLayoutResult = textLayoutResult2;
                    }
                }
                if (textLayoutResult == null) {
                    gapComposer.W(1530097387);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(1530097388);
                    if (!TextRange.c(textFieldSelectionManager.o().b)) {
                        gapComposer.W(2109807302);
                        int b = textFieldSelectionManager.b.b((int) (textFieldSelectionManager.o().b >> 32));
                        int b2 = textFieldSelectionManager.b.b((int) (textFieldSelectionManager.o().b & 4294967295L));
                        ResolvedTextDirection a = textLayoutResult.a(b);
                        ResolvedTextDirection a2 = textLayoutResult.a(Math.max(b2 - 1, 0));
                        LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.d;
                        if (legacyTextFieldState3 != null && ((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState3.m).getValue()).booleanValue()) {
                            gapComposer.W(2110225306);
                            TextFieldSelectionManagerKt.a(true, a, textFieldSelectionManager, gapComposer, ((i5 << 6) & 896) | 6);
                            gapComposer.p(false);
                        } else {
                            gapComposer.W(2110490542);
                            gapComposer.p(false);
                        }
                        LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.d;
                        if (legacyTextFieldState4 != null && ((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState4.n).getValue()).booleanValue()) {
                            gapComposer.W(2110574459);
                            TextFieldSelectionManagerKt.a(false, a2, textFieldSelectionManager, gapComposer, ((i5 << 6) & 896) | 6);
                            gapComposer.p(false);
                        } else {
                            gapComposer.W(2110838734);
                            gapComposer.p(false);
                        }
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(2110860558);
                        gapComposer.p(false);
                    }
                    LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.d;
                    if (legacyTextFieldState5 != null) {
                        MutableState mutableState = legacyTextFieldState5.l;
                        if (!Intrinsics.a(textFieldSelectionManager.t.a.k, textFieldSelectionManager.o().a.k)) {
                            ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
                        }
                        if (legacyTextFieldState5.b()) {
                            if (((Boolean) ((SnapshotMutableStateImpl) mutableState).getValue()).booleanValue()) {
                                textFieldSelectionManager.s();
                            } else {
                                textFieldSelectionManager.p();
                            }
                        }
                    }
                    gapComposer.p(false);
                }
                gapComposer.p(false);
            } else {
                gapComposer.W(1989076778);
                gapComposer.p(false);
                textFieldSelectionManager.p();
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t(textFieldSelectionManager, z, i, 1);
        }
    }

    public static final void d(final TextFieldSelectionManager textFieldSelectionManager, Composer composer, int i) {
        int i2;
        boolean z;
        AnnotatedString n;
        TextLayoutResultProxy textLayoutResultProxy;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1436003720);
        if (gapComposer.h(textFieldSelectionManager)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
            if (legacyTextFieldState != null && ((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState.o).getValue()).booleanValue() && (n = textFieldSelectionManager.n()) != null && n.k.length() > 0) {
                gapComposer.W(-2112351432);
                boolean f = gapComposer.f(textFieldSelectionManager);
                Object K = gapComposer.K();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                if (f || K == composer$Companion$Empty$1) {
                    K = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$cursorDragObserver$1
                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void a(long j, SelectionAdjustment selectionAdjustment) {
                            TextLayoutResultProxy d;
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            long a = SelectionHandlesKt.a(textFieldSelectionManager2.m(true));
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.d;
                            if (legacyTextFieldState2 != null && (d = legacyTextFieldState2.d()) != null) {
                                long e = d.e(a);
                                textFieldSelectionManager2.n = e;
                                ((SnapshotMutableStateImpl) textFieldSelectionManager2.r).setValue(new Offset(e));
                                textFieldSelectionManager2.p = 0L;
                                ((SnapshotMutableStateImpl) textFieldSelectionManager2.q).setValue(Handle.j);
                                textFieldSelectionManager2.u(false);
                            }
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void b() {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            ((SnapshotMutableStateImpl) textFieldSelectionManager2.q).setValue(null);
                            ((SnapshotMutableStateImpl) textFieldSelectionManager2.r).setValue(null);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void c() {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            ((SnapshotMutableStateImpl) textFieldSelectionManager2.q).setValue(null);
                            ((SnapshotMutableStateImpl) textFieldSelectionManager2.r).setValue(null);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void e(long j) {
                            TextLayoutResultProxy d;
                            HapticFeedback hapticFeedback;
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.p = Offset.f(textFieldSelectionManager2.p, j);
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.d;
                            if (legacyTextFieldState2 != null && (d = legacyTextFieldState2.d()) != null) {
                                ((SnapshotMutableStateImpl) textFieldSelectionManager2.r).setValue(new Offset(Offset.f(textFieldSelectionManager2.n, textFieldSelectionManager2.p)));
                                OffsetMapping offsetMapping = textFieldSelectionManager2.b;
                                Offset j2 = textFieldSelectionManager2.j();
                                j2.getClass();
                                int a = offsetMapping.a(d.b(j2.a, true));
                                long a2 = TextRangeKt.a(a, a);
                                if (!TextRange.b(a2, textFieldSelectionManager2.o().b)) {
                                    LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager2.d;
                                    if ((legacyTextFieldState3 == null || ((Boolean) ((SnapshotMutableStateImpl) legacyTextFieldState3.q).getValue()).booleanValue()) && (hapticFeedback = textFieldSelectionManager2.j) != null) {
                                        ((PlatformHapticFeedback) hapticFeedback).a(9);
                                    }
                                    textFieldSelectionManager2.c.b(TextFieldSelectionManager.e(textFieldSelectionManager2.o().a, a2));
                                    textFieldSelectionManager2.v = new TextRange(a2);
                                }
                            }
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void d() {
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onCancel() {
                        }
                    };
                    gapComposer.g0(K);
                }
                final TextDragObserver textDragObserver = (TextDragObserver) K;
                Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
                OffsetMapping offsetMapping = textFieldSelectionManager.b;
                long j = textFieldSelectionManager.o().b;
                int i4 = TextRange.c;
                int b = offsetMapping.b((int) (j >> 32));
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                if (legacyTextFieldState2 != null) {
                    textLayoutResultProxy = legacyTextFieldState2.d();
                } else {
                    textLayoutResultProxy = null;
                }
                textLayoutResultProxy.getClass();
                TextLayoutResult textLayoutResult = textLayoutResultProxy.a;
                Rect c = textLayoutResult.c(RangesKt.d(b, 0, textLayoutResult.a.a.k.length()));
                final long floatToRawIntBits = (Float.floatToRawIntBits((density.i0(2.0f) / 2.0f) + c.a) << 32) | (Float.floatToRawIntBits(c.d) & 4294967295L);
                boolean e = gapComposer.e(floatToRawIntBits);
                Object K2 = gapComposer.K();
                if (e || K2 == composer$Companion$Empty$1) {
                    K2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$1$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        public final long a() {
                            return floatToRawIntBits;
                        }
                    };
                    gapComposer.g0(K2);
                }
                OffsetProvider offsetProvider = (OffsetProvider) K2;
                boolean h = gapComposer.h(textDragObserver) | gapComposer.h(textFieldSelectionManager);
                Object K3 = gapComposer.K();
                if (h || K3 == composer$Companion$Empty$1) {
                    K3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1

                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                        @DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1", f = "CoreTextField.kt", l = {}, m = "invokeSuspend", v = 1)
                        /* renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1, reason: invalid class name */
                        /* loaded from: classes.dex */
                        final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            public /* synthetic */ Object n;
                            public final /* synthetic */ PointerInputScope o;
                            public final /* synthetic */ TextDragObserver p;
                            public final /* synthetic */ TextFieldSelectionManager q;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                            @DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1", f = "CoreTextField.kt", l = {1132}, m = "invokeSuspend", v = 1)
                            /* renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1, reason: invalid class name and collision with other inner class name */
                            /* loaded from: classes.dex */
                            public final class C00041 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                public int n;
                                public final /* synthetic */ PointerInputScope o;
                                public final /* synthetic */ TextDragObserver p;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public C00041(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation continuation) {
                                    super(2, continuation);
                                    this.o = pointerInputScope;
                                    this.p = textDragObserver;
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj, Object obj2) {
                                    return ((C00041) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation s(Object obj, Continuation continuation) {
                                    return new C00041(this.o, this.p, continuation);
                                }

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
                                        this.n = 1;
                                        if (LongPressTextDragObserverKt.a(this.o, this.p, this) == coroutineSingletons) {
                                            return coroutineSingletons;
                                        }
                                    }
                                    return Unit.a;
                                }
                            }

                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                            @DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2", f = "CoreTextField.kt", l = {1135}, m = "invokeSuspend", v = 1)
                            /* renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2, reason: invalid class name */
                            /* loaded from: classes.dex */
                            public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                public int n;
                                public final /* synthetic */ PointerInputScope o;
                                public final /* synthetic */ TextFieldSelectionManager p;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public AnonymousClass2(PointerInputScope pointerInputScope, TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
                                    super(2, continuation);
                                    this.o = pointerInputScope;
                                    this.p = textFieldSelectionManager;
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj, Object obj2) {
                                    return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation s(Object obj, Continuation continuation) {
                                    return new AnonymousClass2(this.o, this.p, continuation);
                                }

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
                                        w6 w6Var = new w6(this.p, 1);
                                        this.n = 1;
                                        if (TapGestureDetectorKt.e(this.o, null, w6Var, this, 7) == coroutineSingletons) {
                                            return coroutineSingletons;
                                        }
                                    }
                                    return Unit.a;
                                }
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass1(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
                                super(2, continuation);
                                this.o = pointerInputScope;
                                this.p = textDragObserver;
                                this.q = textFieldSelectionManager;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                AnonymousClass1 anonymousClass1 = (AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2);
                                Unit unit = Unit.a;
                                anonymousClass1.v(unit);
                                return unit;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation s(Object obj, Continuation continuation) {
                                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.o, this.p, this.q, continuation);
                                anonymousClass1.n = obj;
                                return anonymousClass1;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object v(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                ResultKt.b(obj);
                                CoroutineScope coroutineScope = (CoroutineScope) this.n;
                                CoroutineStart coroutineStart = CoroutineStart.m;
                                TextDragObserver textDragObserver = this.p;
                                PointerInputScope pointerInputScope = this.o;
                                BuildersKt.c(coroutineScope, null, coroutineStart, new C00041(pointerInputScope, textDragObserver, null), 1);
                                BuildersKt.c(coroutineScope, null, coroutineStart, new AnonymousClass2(pointerInputScope, this.q, null), 1);
                                return Unit.a;
                            }
                        }

                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object c2 = CoroutineScopeKt.c(new AnonymousClass1(pointerInputScope, TextDragObserver.this, textFieldSelectionManager, null), continuation);
                            if (c2 == CoroutineSingletons.j) {
                                return c2;
                            }
                            return Unit.a;
                        }
                    };
                    gapComposer.g0(K3);
                }
                Modifier a = SuspendingPointerInputFilterKt.a(Modifier.Companion.b, textDragObserver, (PointerInputEventHandler) K3);
                boolean e2 = gapComposer.e(floatToRawIntBits);
                Object K4 = gapComposer.K();
                if (e2 || K4 == composer$Companion$Empty$1) {
                    K4 = new y0(1, floatToRawIntBits);
                    gapComposer.g0(K4);
                }
                AndroidCursorHandle_androidKt.a(offsetProvider, SemanticsModifierKt.a(a, false, (Function1) K4), 0L, gapComposer, 0);
                gapComposer.p(false);
            } else {
                gapComposer.W(-2111042550);
                gapComposer.p(false);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new defpackage.d(i, 6, textFieldSelectionManager);
        }
    }

    public static final void e(LegacyTextFieldState legacyTextFieldState) {
        TextInputSession textInputSession = legacyTextFieldState.e;
        if (textInputSession != null) {
            legacyTextFieldState.v.b(TextFieldValue.a(legacyTextFieldState.d.a, null, 0L, 3));
            TextInputService textInputService = textInputSession.a;
            AtomicReference atomicReference = textInputService.b;
            while (true) {
                if (atomicReference.compareAndSet(textInputSession, null)) {
                    textInputService.a.d();
                    break;
                } else if (atomicReference.get() != textInputSession) {
                    break;
                }
            }
        }
        legacyTextFieldState.e = null;
    }

    public static final void f(LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping) {
        Function1 function1;
        Snapshot a = Snapshot.Companion.a();
        if (a != null) {
            function1 = a.e();
        } else {
            function1 = null;
        }
        Function1 function12 = function1;
        Snapshot b = Snapshot.Companion.b(a);
        try {
            TextLayoutResultProxy d = legacyTextFieldState.d();
            if (d == null) {
                return;
            }
            TextInputSession textInputSession = legacyTextFieldState.e;
            if (textInputSession == null) {
                return;
            }
            LayoutCoordinates c = legacyTextFieldState.c();
            if (c == null) {
                return;
            }
            TextFieldDelegate$Companion.b(textFieldValue, legacyTextFieldState.a, d.a, c, textInputSession, legacyTextFieldState.b(), offsetMapping);
        } finally {
            Snapshot.Companion.e(a, b, function12);
        }
    }
}
