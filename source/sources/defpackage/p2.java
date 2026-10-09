package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableNode;
import androidx.compose.foundation.gestures.NestedScrollScope;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextFieldDelegate$Companion;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.material.icons.rounded.MusicNoteKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavigatorState;
import androidx.navigation.compose.DialogNavigator;
import coil3.compose.AsyncImagePainter;
import coil3.compose.internal.UtilsKt;
import coil3.request.NullRequestDataException;
import com.google.accompanist.permissions.PermissionState;
import defpackage.h;
import defpackage.jb;
import java.time.Instant;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.Job;
import net.blip.android.ui.audiopicker.ListState;
import net.blip.android.ui.list.ListRowKt;
import net.blip.libblip.event.UpdateDevice;
import net.blip.shared.SelectableLazyListScope;
import net.blip.shared.SelectionListState;
import okio.ByteString;
import racra.compose.smooth_corner_rect_library.AbsoluteSmoothCornerShape;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class p2 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ p2(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, Job job, NestedScrollScope nestedScrollScope) {
        this.j = 3;
        this.k = contentInViewNode;
        this.l = job;
        this.m = nestedScrollScope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v64, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r2v49, types: [na, androidx.lifecycle.LifecycleObserver] */
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        TextLayoutResult textLayoutResult;
        long j;
        Canvas canvas;
        boolean z;
        boolean z2;
        long j2;
        Canvas canvas2;
        float f;
        long g;
        long j3;
        AnnotatedString.Range range;
        int i = this.j;
        float f2 = -1.0f;
        boolean z3 = false;
        AndroidComposeView androidComposeView = null;
        Color color = null;
        Unit unit = Unit.a;
        Object obj2 = this.m;
        Object obj3 = this.l;
        Object obj4 = this.k;
        switch (i) {
            case 0:
                ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) obj4;
                LayoutNode layoutNode = (LayoutNode) obj2;
                ViewFactoryHolder viewFactoryHolder2 = (ViewFactoryHolder) obj3;
                h hVar = AndroidViewHolder.J;
                Canvas a = ((DrawScope) obj).l0().a();
                if (viewFactoryHolder.k.getVisibility() != 8) {
                    viewFactoryHolder.H = true;
                    Owner owner = layoutNode.w;
                    if (owner instanceof AndroidComposeView) {
                        androidComposeView = (AndroidComposeView) owner;
                    }
                    if (androidComposeView != null) {
                        android.graphics.Canvas a2 = AndroidCanvas_androidKt.a(a);
                        androidComposeView.getAndroidViewsHandler$ui().getClass();
                        viewFactoryHolder2.draw(a2);
                    }
                    viewFactoryHolder.H = false;
                }
                return unit;
            case 1:
                final Function1 function1 = (Function1) obj3;
                final AbsoluteSmoothCornerShape absoluteSmoothCornerShape = (AbsoluteSmoothCornerShape) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                final List list = ((ListState.Loaded) obj4).a;
                final h hVar2 = new h(16);
                lazyListScope.b(list.size(), new Function1<Integer, Object>() { // from class: net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj5) {
                        return h.this.b(list.get(((Number) obj5).intValue()));
                    }
                }, new Function1<Integer, Object>() { // from class: net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj5) {
                        list.get(((Number) obj5).intValue());
                        return null;
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList_uFdPcIQ$lambda$6$3$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object j(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i2;
                        boolean z4;
                        int i3;
                        int i4;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                        int intValue = ((Number) obj6).intValue();
                        Composer composer = (Composer) obj7;
                        int intValue2 = ((Number) obj8).intValue();
                        if ((intValue2 & 6) == 0) {
                            if (((GapComposer) composer).f(lazyItemScope)) {
                                i4 = 4;
                            } else {
                                i4 = 2;
                            }
                            i2 = i4 | intValue2;
                        } else {
                            i2 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            if (((GapComposer) composer).d(intValue)) {
                                i3 = 32;
                            } else {
                                i3 = 16;
                            }
                            i2 |= i3;
                        }
                        if ((i2 & 147) != 146) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.N(i2 & 1, z4)) {
                            final AudioFile audioFile = (AudioFile) list.get(intValue);
                            gapComposer.W(546496740);
                            final AbsoluteSmoothCornerShape absoluteSmoothCornerShape2 = absoluteSmoothCornerShape;
                            ComposableLambdaImpl b = ComposableLambdaKt.b(-659672419, new Function2<Composer, Integer, Unit>() { // from class: net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList$3$4$1$2$1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj9, Object obj10) {
                                    boolean z5;
                                    Composer composer2 = (Composer) obj9;
                                    int intValue3 = ((Number) obj10).intValue();
                                    if ((intValue3 & 3) != 2) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    if (gapComposer2.N(intValue3 & 1, z5)) {
                                        Modifier b2 = BackgroundKt.b(SizeKt.k(Modifier.Companion.b, 48.0f), ColorKt.c(4294599987L), AbsoluteSmoothCornerShape.this);
                                        MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
                                        int hashCode = Long.hashCode(gapComposer2.T);
                                        PersistentCompositionLocalMap l = gapComposer2.l();
                                        Modifier c = ComposedModifierKt.c(gapComposer2, b2);
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
                                        ImageKt.a(VectorPainterKt.b(MusicNoteKt.a(), gapComposer2), "", null, null, null, 0.0f, ColorFilter.Companion.a(Color.d), gapComposer2, 1572920, 60);
                                        gapComposer2.p(true);
                                    } else {
                                        gapComposer2.Q();
                                    }
                                    return Unit.a;
                                }
                            }, gapComposer);
                            final Function1 function12 = function1;
                            boolean f3 = gapComposer.f(function12) | gapComposer.h(audioFile);
                            Object K = gapComposer.K();
                            if (f3 || K == Composer.Companion.a) {
                                K = new Function0<Unit>() { // from class: net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList$3$4$1$2$2$1
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Object a() {
                                        Function1.this.b(audioFile.d);
                                        return Unit.a;
                                    }
                                };
                                gapComposer.g0(K);
                            }
                            ListRowKt.b(null, b, null, null, (Function0) K, null, ComposableLambdaKt.b(-963594888, new Function2<Composer, Integer, Unit>() { // from class: net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList$3$4$1$2$3
                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj9, Object obj10) {
                                    boolean z5;
                                    String format;
                                    Composer composer2 = (Composer) obj9;
                                    int intValue3 = ((Number) obj10).intValue();
                                    int i5 = 0;
                                    if ((intValue3 & 3) != 2) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    if (gapComposer2.N(intValue3 & 1, z5)) {
                                        AudioFile audioFile2 = AudioFile.this;
                                        String str = audioFile2.a;
                                        if (str == null && (str = audioFile2.d.getLastPathSegment()) == null) {
                                            str = "Unknown";
                                        }
                                        String str2 = str;
                                        Integer num = audioFile2.c;
                                        if (num != null) {
                                            i5 = num.intValue();
                                        }
                                        int i6 = i5 / 1000;
                                        int i7 = i6 / 3600;
                                        int i8 = (i6 % 3600) / 60;
                                        int i9 = i6 % 60;
                                        if (i7 > 0) {
                                            format = String.format("%d:%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9)}, 3));
                                        } else {
                                            format = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i8), Integer.valueOf(i9)}, 2));
                                        }
                                        String str3 = audioFile2.b;
                                        if (str3 != null) {
                                            format = jb.g(format, " · ", str3);
                                        }
                                        ListRowKt.c(null, str2, format, 0L, gapComposer2, 0, 9);
                                    } else {
                                        gapComposer2.Q();
                                    }
                                    return Unit.a;
                                }
                            }, gapComposer), gapComposer, 1572912, 45);
                            gapComposer.p(false);
                        } else {
                            gapComposer.Q();
                        }
                        return Unit.a;
                    }
                }));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Function1 function12 = (Function1) obj4;
                MutableState mutableState = (MutableState) obj2;
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                int i2 = BasicTextFieldKt.a;
                ((MutableState) obj3).setValue(textFieldValue);
                boolean a3 = Intrinsics.a((String) mutableState.getValue(), textFieldValue.a.k);
                AnnotatedString annotatedString = textFieldValue.a;
                mutableState.setValue(annotatedString.k);
                if (!a3) {
                    function12.b(annotatedString.k);
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ContentInViewNode contentInViewNode = (ContentInViewNode) obj4;
                Job job = (Job) obj3;
                NestedScrollScope nestedScrollScope = (NestedScrollScope) obj2;
                float floatValue = ((Float) obj).floatValue();
                if (contentInViewNode.z) {
                    f2 = 1.0f;
                }
                ScrollingLogic scrollingLogic = contentInViewNode.y;
                long f3 = scrollingLogic.f(scrollingLogic.i(f2 * floatValue));
                ScrollingLogic scrollingLogic2 = ((ScrollingLogic$nestedScrollScope$1) nestedScrollScope).a;
                float h = scrollingLogic.h(scrollingLogic.f(scrollingLogic2.d(scrollingLogic2.k, f3, 1))) * f2;
                if (Math.abs(h) < Math.abs(floatValue)) {
                    CancellationException cancellationException = new CancellationException("Scroll animation cancelled because scroll was not consumed (" + h + " < " + floatValue + ")");
                    cancellationException.initCause(null);
                    job.n(cancellationException);
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj4;
                TextFieldValue textFieldValue2 = (TextFieldValue) obj3;
                OffsetMapping offsetMapping = (OffsetMapping) obj2;
                DrawScope drawScope = (DrawScope) obj;
                TextLayoutResultProxy d = legacyTextFieldState.d();
                if (d != null) {
                    Canvas a4 = drawScope.l0().a();
                    long j4 = ((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState.A).getValue()).a;
                    long j5 = ((TextRange) ((SnapshotMutableStateImpl) legacyTextFieldState.B).getValue()).a;
                    TextLayoutResult textLayoutResult2 = d.a;
                    TextLayoutInput textLayoutInput = textLayoutResult2.a;
                    MultiParagraph multiParagraph = textLayoutResult2.b;
                    AndroidPaint androidPaint = legacyTextFieldState.y;
                    long j6 = legacyTextFieldState.z;
                    if (!TextRange.c(j4)) {
                        androidPaint.f(j6);
                        textLayoutResult = textLayoutResult2;
                        AndroidPaint androidPaint2 = androidPaint;
                        TextFieldDelegate$Companion.a(a4, j4, offsetMapping, textLayoutResult, androidPaint2);
                        canvas = androidPaint2;
                    } else {
                        textLayoutResult = textLayoutResult2;
                        if (!TextRange.c(j5)) {
                            long b = textLayoutInput.b.b();
                            Color color2 = new Color(b);
                            if (b != 16) {
                                color = color2;
                            }
                            if (color != null) {
                                j = color.a;
                            } else {
                                j = Color.b;
                            }
                            androidPaint.f(Color.b(j, Color.d(j) * 0.2f));
                            AndroidPaint androidPaint3 = androidPaint;
                            TextFieldDelegate$Companion.a(a4, j5, offsetMapping, textLayoutResult, androidPaint3);
                            canvas = androidPaint3;
                        } else if (!TextRange.c(textFieldValue2.b)) {
                            androidPaint.f(j6);
                            AndroidPaint androidPaint4 = androidPaint;
                            TextFieldDelegate$Companion.a(a4, textFieldValue2.b, offsetMapping, textLayoutResult, androidPaint4);
                            canvas = androidPaint4;
                        }
                    }
                    long j7 = textLayoutResult.c;
                    if (((int) (j7 >> 32)) >= multiParagraph.d && !multiParagraph.c && ((int) (j7 & 4294967295L)) >= multiParagraph.e) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (z && textLayoutInput.f != 3) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        Rect a5 = RectKt.a(0L, (Float.floatToRawIntBits((int) (j7 >> 32)) << 32) | (Float.floatToRawIntBits((int) (j7 & 4294967295L)) & 4294967295L));
                        a4.g();
                        Canvas.l(a4, a5);
                    }
                    SpanStyle spanStyle = textLayoutInput.b.a;
                    TextDecoration textDecoration = spanStyle.m;
                    TextForegroundStyle textForegroundStyle = spanStyle.a;
                    if (textDecoration == null) {
                        textDecoration = TextDecoration.b;
                    }
                    TextDecoration textDecoration2 = textDecoration;
                    Shadow shadow = spanStyle.n;
                    if (shadow == null) {
                        shadow = Shadow.d;
                    }
                    Shadow shadow2 = shadow;
                    DrawStyle drawStyle = spanStyle.o;
                    if (drawStyle == null) {
                        drawStyle = Fill.a;
                    }
                    try {
                        Brush d2 = textForegroundStyle.d();
                        TextForegroundStyle.Unspecified unspecified = TextForegroundStyle.Unspecified.a;
                        try {
                            if (d2 != null) {
                                if (textForegroundStyle != unspecified) {
                                    f = textForegroundStyle.a();
                                } else {
                                    f = 1.0f;
                                }
                                Canvas canvas3 = a4;
                                MultiParagraph.j(multiParagraph, canvas3, d2, f, shadow2, textDecoration2, drawStyle);
                                canvas2 = canvas3;
                                canvas = canvas3;
                            } else {
                                DrawStyle drawStyle2 = drawStyle;
                                if (textForegroundStyle != unspecified) {
                                    j2 = textForegroundStyle.b();
                                } else {
                                    j2 = Color.b;
                                }
                                Canvas canvas4 = a4;
                                MultiParagraph.i(multiParagraph, canvas4, j2, shadow2, textDecoration2, drawStyle2);
                                canvas2 = canvas4;
                                canvas = canvas4;
                            }
                            if (z2) {
                                canvas2.r();
                            }
                        } catch (Throwable th) {
                            th = th;
                            a4 = canvas;
                            if (z2) {
                                a4.r();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                AnimationScope animationScope = (AnimationScope) obj;
                float floatValue2 = ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue() - ref$FloatRef.j;
                float f4 = ((ScrollingLogic$doFlingAnimation$2$reverseScope$1) obj3).f(floatValue2);
                ref$FloatRef.j = ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue();
                ((Ref$FloatRef) obj2).j = ((Number) animationScope.b()).floatValue();
                if (Math.abs(floatValue2 - f4) > 0.5f) {
                    animationScope.a();
                }
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                final SnapshotStateList snapshotStateList = (SnapshotStateList) obj4;
                final NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                final DialogNavigator dialogNavigator = (DialogNavigator) obj2;
                snapshotStateList.add(navBackStackEntry);
                return new DisposableEffectResult() { // from class: androidx.navigation.compose.DialogHostKt$DialogHost$lambda$3$1$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        NavigatorState b2 = DialogNavigator.this.b();
                        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                        b2.b(navBackStackEntry2);
                        snapshotStateList.remove(navBackStackEntry2);
                    }
                };
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                DragScope dragScope = (DragScope) obj4;
                Orientation orientation = (Orientation) obj2;
                long j8 = ((DragEvent.DragDelta) obj).a;
                if (((DraggableNode) obj3).W) {
                    g = Offset.g(j8, -1.0f);
                } else {
                    g = Offset.g(j8, 1.0f);
                }
                Function3 function3 = DraggableKt.a;
                if (orientation == Orientation.j) {
                    j3 = g & 4294967295L;
                } else {
                    j3 = g >> 32;
                }
                dragScope.a(Float.intBitsToFloat((int) j3));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) obj3;
                Function1 function13 = (Function1) obj2;
                FocusTargetNode focusTargetNode = (FocusTargetNode) obj;
                if (!Intrinsics.a(focusTargetNode, (FocusTargetNode) obj4)) {
                    if (!Intrinsics.a(focusTargetNode, focusOwnerImpl.c)) {
                        z3 = ((Boolean) function13.b(focusTargetNode)).booleanValue();
                    } else {
                        u2.l("Focus search landed at the root.");
                        return null;
                    }
                }
                return Boolean.valueOf(z3);
            case KeyModifiers.a /* 9 */:
                final LifecycleOwner lifecycleOwner = (LifecycleOwner) obj4;
                final LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) obj3;
                final Function1 function14 = (Function1) obj2;
                final ?? obj5 = new Object();
                final ?? r2 = new LifecycleEventObserver() { // from class: na
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void h(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                        int i3 = LifecycleEffectKt.WhenMappings.a[event.ordinal()];
                        Ref$ObjectRef ref$ObjectRef = obj5;
                        if (i3 != 1) {
                            if (i3 != 2) {
                                return;
                            }
                            LifecycleStopOrDisposeEffectResult lifecycleStopOrDisposeEffectResult = (LifecycleStopOrDisposeEffectResult) ref$ObjectRef.j;
                            if (lifecycleStopOrDisposeEffectResult != null) {
                                lifecycleStopOrDisposeEffectResult.a();
                            }
                            ref$ObjectRef.j = null;
                            return;
                        }
                        ref$ObjectRef.j = function14.b(LifecycleStartStopEffectScope.this);
                    }
                };
                lifecycleOwner.g().a(r2);
                return new DisposableEffectResult() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleStartEffectImpl$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        LifecycleOwner.this.g().b(r2);
                        LifecycleStopOrDisposeEffectResult lifecycleStopOrDisposeEffectResult = (LifecycleStopOrDisposeEffectResult) obj5.j;
                        if (lifecycleStopOrDisposeEffectResult != null) {
                            lifecycleStopOrDisposeEffectResult.a();
                        }
                    }
                };
            case KeyModifiers.b /* 10 */:
                State state = (State) obj3;
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) ((GraphicsLayerScope) obj);
                reusableGraphicsLayerScope.g(((Number) state.getValue()).floatValue());
                reusableGraphicsLayerScope.h(((Number) state.getValue()).floatValue());
                reusableGraphicsLayerScope.b(((Number) ((State) obj2).getValue()).floatValue());
                reusableGraphicsLayerScope.n(((TransformOrigin) ((MutableState) obj4).getValue()).a);
                return unit;
            case 11:
                Context context = (Context) obj4;
                MutableState mutableState2 = (MutableState) obj3;
                MutableState mutableState3 = (MutableState) obj2;
                if (!((Boolean) obj).booleanValue() && ((Boolean) mutableState2.getValue()).booleanValue() && Instant.now().toEpochMilli() - ((Instant) mutableState3.getValue()).toEpochMilli() < 350) {
                    Toast.makeText(context, "Permission is blocked, please allow in Settings", 0).show();
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.fromParts("package", context.getPackageName(), null));
                    context.startActivity(intent);
                }
                return unit;
            case KeyModifiers.c /* 12 */:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                ((MutableState) obj3).setValue(bool);
                Instant now = Instant.now();
                now.getClass();
                ((MutableState) obj2).setValue(now);
                ((PermissionState) obj4).b();
                return unit;
            case 13:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                if (((MouseSelectionObserver) obj4).d(pointerInputChange.c, (SelectionAdjustment) obj3)) {
                    pointerInputChange.a();
                    ref$BooleanRef.j = true;
                }
                return unit;
            case 14:
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                SelectableLazyListScope selectableLazyListScope = new SelectableLazyListScope(lazyListScope2, new ma(19, (SelectionListState) obj4));
                ((Function1) obj3).b(selectableLazyListScope);
                ((MutableState) obj2).setValue(selectableLazyListScope);
                return unit;
            case 15:
                String str = (String) obj;
                str.getClass();
                ((Function1) obj4).b(new UpdateDevice((String) obj3, str, null, ByteString.m));
                ((MutableState) obj2).setValue(Boolean.FALSE);
                return unit;
            case 16:
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) obj4;
                AnnotatedString.Range range2 = (AnnotatedString.Range) obj3;
                SpanStyle spanStyle2 = (SpanStyle) obj2;
                AnnotatedString.Range range3 = (AnnotatedString.Range) obj;
                if (ref$BooleanRef2.j) {
                    Object obj6 = range3.a;
                    int i3 = range3.c;
                    int i4 = range3.b;
                    if ((obj6 instanceof SpanStyle) && i4 == range2.b && i3 == range2.c) {
                        if (spanStyle2 == null) {
                            spanStyle2 = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65535);
                        }
                        range = new AnnotatedString.Range(i4, i3, spanStyle2);
                        ref$BooleanRef2.j = range2.equals(range3);
                        return range;
                    }
                }
                range = range3;
                ref$BooleanRef2.j = range2.equals(range3);
                return range;
            case 17:
                Function1 function15 = (Function1) obj3;
                TextInputSession textInputSession = (TextInputSession) ((Ref$ObjectRef) obj2).j;
                TextFieldValue a6 = ((EditProcessor) obj4).a((List) obj);
                if (textInputSession != null && Intrinsics.a((TextInputSession) textInputSession.a.b.get(), textInputSession)) {
                    textInputSession.b.f(null, a6);
                }
                function15.b(a6);
                return unit;
            case 18:
                Painter painter = (Painter) obj4;
                Painter painter2 = (Painter) obj3;
                Painter painter3 = (Painter) obj2;
                AsyncImagePainter.State state2 = (AsyncImagePainter.State) obj;
                int i5 = UtilsKt.b;
                if (state2 instanceof AsyncImagePainter.State.Loading) {
                    if (painter != null) {
                        return new AsyncImagePainter.State.Loading(painter);
                    }
                    return (AsyncImagePainter.State.Loading) state2;
                }
                if (state2 instanceof AsyncImagePainter.State.Error) {
                    AsyncImagePainter.State.Error error = (AsyncImagePainter.State.Error) state2;
                    if (error.a.c instanceof NullRequestDataException) {
                        if (painter2 != null) {
                            return AsyncImagePainter.State.Error.b(error, painter2);
                        }
                        return error;
                    }
                    if (painter3 != null) {
                        return AsyncImagePainter.State.Error.b(error, painter3);
                    }
                    return error;
                }
                return state2;
            default:
                Animatable animatable = (Animatable) obj4;
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                graphicsLayerScope.getClass();
                ReusableGraphicsLayerScope reusableGraphicsLayerScope2 = (ReusableGraphicsLayerScope) graphicsLayerScope;
                reusableGraphicsLayerScope2.g(((Number) animatable.f()).floatValue());
                reusableGraphicsLayerScope2.h(((Number) animatable.f()).floatValue());
                reusableGraphicsLayerScope2.o(((Number) ((Animatable) obj3).f()).floatValue());
                reusableGraphicsLayerScope2.p(((Number) ((Animatable) obj2).f()).floatValue());
                return unit;
        }
    }

    public /* synthetic */ p2(ViewFactoryHolder viewFactoryHolder, LayoutNode layoutNode, ViewFactoryHolder viewFactoryHolder2) {
        this.j = 0;
        this.k = viewFactoryHolder;
        this.m = layoutNode;
        this.l = viewFactoryHolder2;
    }

    public /* synthetic */ p2(Object obj, Object obj2, Object obj3, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
    }

    public /* synthetic */ p2(Ref$FloatRef ref$FloatRef, ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, Ref$FloatRef ref$FloatRef2, DefaultFlingBehavior defaultFlingBehavior) {
        this.j = 5;
        this.k = ref$FloatRef;
        this.l = scrollingLogic$doFlingAnimation$2$reverseScope$1;
        this.m = ref$FloatRef2;
    }
}
