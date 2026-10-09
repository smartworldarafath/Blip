package defpackage;

import android.content.ClipboardManager;
import android.content.Context;
import android.view.View;
import android.widget.Toast;
import androidx.collection.LruCache;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.b;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.NestedScrollScope;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.material.MutableWindowInsets;
import androidx.compose.material.ScaffoldKt;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.compose.ui.text.font.TypefaceRequestCache;
import androidx.compose.ui.text.font.TypefaceResult;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import androidx.work.WorkInfo$State;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkTypeConverters;
import java.time.Instant;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import net.blip.android.ui.home.PeerTrayItem;
import net.blip.android.ui.util.UmbrellaContentPickerType;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ec implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ ec(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:82:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0241  */
    /* JADX WARN: Type inference failed for: r11v50, types: [android.content.ClipboardManager$OnPrimaryClipChangedListener, yh] */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj) {
        float f;
        long a;
        AnnotatedString annotatedString;
        TextLayoutResult textLayoutResult;
        final AndroidPath h;
        TextLayoutInput textLayoutInput;
        long j;
        long j2 = 0;
        Throwable th = null;
        Shape shape = null;
        Throwable th2 = null;
        float f2 = 0.0f;
        int i = 2;
        boolean z = true;
        switch (this.j) {
            case 0:
                Job job = (Job) this.k;
                ProducerScope producerScope = (ProducerScope) this.l;
                ((JobSupport) job).n(null);
                ((ChannelCoroutine) producerScope).j((ConstraintsState) obj);
                return Unit.a;
            case 1:
                Ref$LongRef ref$LongRef = (Ref$LongRef) this.k;
                Ref$LongRef ref$LongRef2 = (Ref$LongRef) this.l;
                if (((Transfer) ((Pair) obj).k).w != Transfer.Status.o && ref$LongRef.j > 0) {
                    long epochMilli = Instant.now().toEpochMilli() - ref$LongRef2.j;
                    long j3 = ref$LongRef.j;
                    j2 = j3 - (epochMilli % j3);
                }
                return Long.valueOf(j2);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                final LifecycleOwner lifecycleOwner = (LifecycleOwner) this.k;
                Function2 function2 = (Function2) this.l;
                ((DisposableEffectScope) obj).getClass();
                final h5 h5Var = new h5(i, function2);
                lifecycleOwner.g().a(h5Var);
                return new DisposableEffectResult() { // from class: net.blip.android.ui.util.NuancedPermissionStateKt$ComposableLifecycle$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        LifecycleOwner.this.g().b(h5Var);
                    }
                };
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Context context = (Context) this.k;
                String str = (String) this.l;
                ((KeyboardActionScope) obj).getClass();
                Toast.makeText(context, "Enter all 6 digits of the code sent to ".concat(str), 0).show();
                return Unit.a;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                MutableState mutableState = (MutableState) this.k;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                c1 c1Var = new c1(i, (ArrayList) this.l);
                placementScope.j = true;
                c1Var.b(placementScope);
                placementScope.j = false;
                mutableState.getValue();
                return Unit.a;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Function2 function22 = (Function2) this.k;
                PeerTrayItem peerTrayItem = (PeerTrayItem) this.l;
                UmbrellaContentPickerType umbrellaContentPickerType = (UmbrellaContentPickerType) obj;
                umbrellaContentPickerType.getClass();
                function22.n(((PeerTrayItem.Peer) peerTrayItem).a.c(), umbrellaContentPickerType);
                return Unit.a;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                final Lifecycle lifecycle = (Lifecycle) this.k;
                final LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) this.l;
                ((DisposableEffectScope) obj).getClass();
                lifecycle.a(lifecycleEventObserver);
                return new DisposableEffectResult() { // from class: com.google.accompanist.permissions.PermissionsUtilKt$PermissionLifecycleCheckerEffect$lambda$4$lambda$3$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        Lifecycle.this.b(lifecycleEventObserver);
                    }
                };
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                PreferenceDao_Impl preferenceDao_Impl = (PreferenceDao_Impl) this.k;
                Preference preference = (Preference) this.l;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                preferenceDao_Impl.b.c(sQLiteConnection, preference);
                return Unit.a;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ControlledComposition controlledComposition = (ControlledComposition) this.k;
                MutableScatterSet mutableScatterSet = (MutableScatterSet) this.l;
                MutableStateFlow mutableStateFlow = Recomposer.z;
                ((CompositionImpl) controlledComposition).A(obj);
                if (mutableScatterSet != null) {
                    mutableScatterSet.d(obj);
                }
                return Unit.a;
            case KeyModifiers.a /* 9 */:
                Recomposer recomposer = (Recomposer) this.k;
                Throwable th3 = (Throwable) this.l;
                Throwable th4 = (Throwable) obj;
                synchronized (recomposer.c) {
                    if (th3 != null) {
                        if (th4 != null) {
                            try {
                                if (!(th4 instanceof CancellationException)) {
                                    th2 = th4;
                                }
                                if (th2 != null) {
                                    ExceptionsKt.a(th3, th2);
                                }
                            } catch (Throwable th5) {
                                throw th5;
                            }
                        }
                        th = th3;
                    }
                    recomposer.e = th;
                    recomposer.u.setValue(Recomposer.State.j);
                }
                return Unit.a;
            case KeyModifiers.b /* 10 */:
                MutableWindowInsets mutableWindowInsets = (MutableWindowInsets) this.k;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ScaffoldKt.a;
                ((SnapshotMutableStateImpl) mutableWindowInsets.a).setValue(WindowInsetsKt.d((WindowInsets) this.l, (WindowInsets) obj));
                return Unit.a;
            case 11:
                NestedScrollScope nestedScrollScope = (NestedScrollScope) this.k;
                ScrollingLogic scrollingLogic = (ScrollingLogic) this.l;
                DragEvent.DragDelta dragDelta = (DragEvent.DragDelta) obj;
                if (dragDelta.b) {
                    f = -1.0f;
                } else {
                    f = 1.0f;
                }
                long j4 = dragDelta.a;
                if (scrollingLogic.d == Orientation.k) {
                    a = Offset.a(j4, 0.0f, 1);
                } else {
                    a = Offset.a(j4, 0.0f, 2);
                }
                ((ScrollingLogic$nestedScrollScope$1) nestedScrollScope).a(1, Offset.g(a, f));
                return Unit.a;
            case KeyModifiers.c /* 12 */:
                DragScope dragScope = (DragScope) this.k;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) this.l;
                Animatable animatable = (Animatable) obj;
                dragScope.a(((Number) animatable.f()).floatValue() - ref$FloatRef.j);
                ref$FloatRef.j = ((Number) animatable.f()).floatValue();
                return Unit.a;
            case 13:
                SystemIdInfoDao_Impl systemIdInfoDao_Impl = (SystemIdInfoDao_Impl) this.k;
                SystemIdInfo systemIdInfo = (SystemIdInfo) this.l;
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                systemIdInfoDao_Impl.b.c(sQLiteConnection2, systemIdInfo);
                return Unit.a;
            case 14:
                final MutableState mutableState2 = (MutableState) this.k;
                final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) this.l;
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$lambda$0$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        MutableState mutableState3 = MutableState.this;
                        PressInteraction.Press press = (PressInteraction.Press) mutableState3.getValue();
                        if (press != null) {
                            PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                            MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                            if (mutableInteractionSource2 != null) {
                                mutableInteractionSource2.b(cancel);
                            }
                            mutableState3.setValue(null);
                        }
                    }
                };
            case 15:
                Function0 function0 = (Function0) this.k;
                Function0 function02 = (Function0) this.l;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj;
                function0.a();
                if (function02 != null) {
                    z = ((Boolean) function02.a()).booleanValue();
                }
                if (z) {
                    textContextMenuSession.close();
                }
                return Unit.a;
            case 16:
                TextLinkScope textLinkScope = (TextLinkScope) this.k;
                AnnotatedString.Range range = (AnnotatedString.Range) this.l;
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                AnnotatedString annotatedString2 = textLinkScope.b;
                MutableState mutableState3 = textLinkScope.a;
                TextLayoutResult textLayoutResult2 = (TextLayoutResult) ((SnapshotMutableStateImpl) mutableState3).getValue();
                if (textLayoutResult2 != null && (textLayoutInput = textLayoutResult2.a) != null) {
                    annotatedString = textLayoutInput.a;
                } else {
                    annotatedString = null;
                }
                if (Intrinsics.a(annotatedString2, annotatedString) && (textLayoutResult = (TextLayoutResult) ((SnapshotMutableStateImpl) mutableState3).getValue()) != null) {
                    MultiParagraph multiParagraph = textLayoutResult.b;
                    AnnotatedString.Range c = TextLinkScope.c(range, textLayoutResult);
                    if (c != null) {
                        int i2 = c.c;
                        int i3 = c.b;
                        h = textLayoutResult.h(i3, i2);
                        Rect b = textLayoutResult.b(i3);
                        int i4 = i2 - 1;
                        Rect b2 = textLayoutResult.b(i4);
                        if (multiParagraph.d(i3) == multiParagraph.d(i4)) {
                            f2 = Math.min(b2.a, b.a);
                        }
                        h.j(((Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(b.b) & 4294967295L)) ^ (-9223372034707292160L));
                        if (h != null) {
                            shape = new Shape() { // from class: androidx.compose.foundation.text.TextLinkScope$shapeForRange$1$1
                                @Override // androidx.compose.ui.graphics.Shape
                                public final Outline a(long j5, LayoutDirection layoutDirection, Density density) {
                                    return new Outline.Generic(AndroidPath.this);
                                }
                            };
                        }
                        if (shape != null) {
                            ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) graphicsLayerScope;
                            reusableGraphicsLayerScope.l(shape);
                            reusableGraphicsLayerScope.d(true);
                        }
                        return Unit.a;
                    }
                }
                h = null;
                if (h != null) {
                }
                if (shape != null) {
                }
                return Unit.a;
            case 17:
                final TextLinkScope textLinkScope2 = (TextLinkScope) this.k;
                final Function1 function1 = (Function1) this.l;
                textLinkScope2.c.add(function1);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.TextLinkScope$StyleAnnotation$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        TextLinkScope.this.c.remove(function1);
                    }
                };
            case 18:
                List list = (List) this.k;
                List list2 = (List) this.l;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                if (list != null) {
                    int size = list.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        Pair pair = (Pair) list.get(i5);
                        Placeable.PlacementScope.h(placementScope2, (Placeable) pair.j, ((IntOffset) pair.k).a);
                    }
                }
                if (list2 != null) {
                    int size2 = list2.size();
                    for (int i6 = 0; i6 < size2; i6++) {
                        Pair pair2 = (Pair) list2.get(i6);
                        Placeable placeable = (Placeable) pair2.j;
                        Function0 function03 = (Function0) pair2.k;
                        if (function03 != null) {
                            j = ((IntOffset) function03.a()).a;
                        } else {
                            j = 0;
                        }
                        Placeable.PlacementScope.h(placementScope2, placeable, j);
                    }
                }
                return Unit.a;
            case 19:
                final TransitionState transitionState = (TransitionState) this.k;
                ((SeekableTransitionState) transitionState).r(new SnapshotStateObserver(new b(Thread.currentThread(), (CoroutineScope) this.l)));
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$rememberTransition$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        ((SeekableTransitionState) TransitionState.this).r(null);
                    }
                };
            case 20:
                final Transition transition = (Transition) this.k;
                final TransitionInstance transitionInstance = (TransitionInstance) this.l;
                transition.k.add(transitionInstance);
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createChildTransitionInternal$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        Transition.this.k.remove(transitionInstance);
                    }
                };
            case 21:
                final Transition transition2 = (Transition) this.k;
                final Transition.DeferredAnimation deferredAnimation = (Transition.DeferredAnimation) this.l;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        Transition transition3 = Transition.this;
                        transition3.getClass();
                        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) ((SnapshotMutableStateImpl) deferredAnimation.b).getValue();
                        if (deferredAnimationData != null) {
                            transition3.j.remove(deferredAnimationData.j);
                        }
                    }
                };
            case 22:
                final Transition transition3 = (Transition) this.k;
                final Transition.TransitionAnimationState transitionAnimationState = (Transition.TransitionAnimationState) this.l;
                transition3.j.add(transitionAnimationState);
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$createTransitionAnimation$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        Transition.this.j.remove(transitionAnimationState);
                    }
                };
            case 23:
                TypefaceRequestCache typefaceRequestCache = (TypefaceRequestCache) this.k;
                TypefaceRequest typefaceRequest = (TypefaceRequest) this.l;
                TypefaceResult typefaceResult = (TypefaceResult) obj;
                synchronized (typefaceRequestCache.a) {
                    try {
                        boolean d = typefaceResult.d();
                        LruCache lruCache = typefaceRequestCache.b;
                        if (d) {
                        }
                    } catch (Throwable th6) {
                        throw th6;
                    }
                }
                return Unit.a;
            case 24:
                final ClipboardManager clipboardManager = (ClipboardManager) this.k;
                final MutableState mutableState4 = (MutableState) this.l;
                ((DisposableEffectScope) obj).getClass();
                final ?? r11 = new ClipboardManager.OnPrimaryClipChangedListener() { // from class: yh
                    @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
                    public final void onPrimaryClipChanged() {
                        mutableState4.setValue(Boolean.valueOf(clipboardManager.hasPrimaryClip()));
                    }
                };
                clipboardManager.addPrimaryClipChangedListener(r11);
                return new DisposableEffectResult() { // from class: net.blip.android.ui.util.UmbrellaContentPickerKt$rememberHasClipboardContent$lambda$4$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        clipboardManager.removePrimaryClipChangedListener(r11);
                    }
                };
            case 25:
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) this.k;
                Function1 function12 = (Function1) this.l;
                ((Long) obj).getClass();
                float f3 = updatableAnimationState.e;
                updatableAnimationState.e = 0.0f;
                function12.b(Float.valueOf(f3));
                return Unit.a;
            case 26:
                final WindowInsetsHolder windowInsetsHolder = (WindowInsetsHolder) this.k;
                final View view = (View) this.l;
                windowInsetsHolder.a(view);
                return new DisposableEffectResult() { // from class: androidx.compose.foundation.layout.WindowInsetsHolder$Companion$current$lambda$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        WindowInsetsHolder windowInsetsHolder2 = WindowInsetsHolder.this;
                        int i7 = windowInsetsHolder2.t - 1;
                        windowInsetsHolder2.t = i7;
                        if (i7 == 0) {
                            View view2 = view;
                            ViewCompat.q(view2, null);
                            ViewCompat.r(view2, null);
                            view2.removeOnAttachStateChangeListener(windowInsetsHolder2.u);
                        }
                    }
                };
            case 27:
                WorkNameDao_Impl workNameDao_Impl = (WorkNameDao_Impl) this.k;
                WorkName workName = (WorkName) this.l;
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                workNameDao_Impl.b.c(sQLiteConnection3, workName);
                return Unit.a;
            case 28:
                WorkInfo$State workInfo$State = (WorkInfo$State) this.k;
                String str2 = (String) this.l;
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                SQLiteStatement a1 = sQLiteConnection4.a1("UPDATE workspec SET state=? WHERE id=?");
                try {
                    a1.j(1, WorkTypeConverters.f(workInfo$State));
                    a1.T(2, str2);
                    a1.V0();
                    int a2 = SQLiteConnectionUtil.a(sQLiteConnection4);
                    a1.close();
                    return Integer.valueOf(a2);
                } finally {
                }
            default:
                Data data = (Data) this.k;
                String str3 = (String) this.l;
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                SQLiteStatement a12 = sQLiteConnection5.a1("UPDATE workspec SET output=? WHERE id=?");
                try {
                    Data data2 = Data.b;
                    a12.k(1, Data.Companion.c(data));
                    a12.T(2, str3);
                    a12.V0();
                    a12.close();
                    return Unit.a;
                } finally {
                }
        }
    }
}
