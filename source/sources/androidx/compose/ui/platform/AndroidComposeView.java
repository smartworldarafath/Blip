package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Trace;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.SoundEffectConstants;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.translation.TranslationRequestValue;
import android.view.translation.ViewTranslationRequest;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.SessionMutex;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.autofill.AndroidAutofill_androidKt;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.autofill.PlatformAutofillManagerImpl;
import androidx.compose.ui.autofill.PopulateViewStructure_androidKt;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.draganddrop.AndroidDragAndDropManager;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusListener;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusPropertiesImpl;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTransactionsKt;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.focus.PlatformFocusOwner;
import androidx.compose.ui.focus.TwoDimensionalFocusSearchKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidGraphicsContext_androidKt;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.AndroidPointerIconType;
import androidx.compose.ui.input.pointer.HitPathTracker;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.input.pointer.MotionEventAdapter;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.input.pointer.PointerInputEvent;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.PointerInputEventProcessor;
import androidx.compose.ui.input.pointer.PointerKeyboardModifiers;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.InsetsListener;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.RootMeasurePolicy;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DepthSortedSetsForDifferentPasses;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.Invalidation;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import androidx.compose.ui.node.MeasureAndLayoutDelegate;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OutOfFrameExecutor;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.RootForTest;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsInfo;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsNode_androidKt;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesAndroid;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper_androidKt;
import androidx.compose.ui.text.input.RecordingInputConnection;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.text.input.TextInputServiceAndroid$createInputConnection$1;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.a7;
import defpackage.f7;
import defpackage.fc;
import defpackage.h;
import defpackage.i5;
import defpackage.j6;
import defpackage.jb;
import defpackage.k8;
import defpackage.la;
import defpackage.m0;
import defpackage.n0;
import defpackage.o0;
import defpackage.p;
import defpackage.p0;
import defpackage.q;
import defpackage.q0;
import defpackage.r;
import defpackage.r0;
import defpackage.r1;
import defpackage.s0;
import defpackage.u0;
import defpackage.u2;
import defpackage.wc;
import defpackage.x7;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import kotlin.Deprecated;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.MapsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidComposeView extends ViewGroup implements Owner, PlatformFocusOwner, RootForTest, MatrixPositionCalculator, DefaultLifecycleObserver, OutOfFrameExecutor, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnTouchModeChangeListener, FocusListener {
    public static Class R0;
    public static Method S0;
    public static Method T0;
    public static final MutableObjectList U0 = new MutableObjectList();
    public static r V0;
    public static Method W0;
    public static Method X0;
    public final InsetsListener A;
    public float A0;
    public final LayoutNode B;
    public float B0;
    public final MutableIntObjectMap C;
    public float C0;
    public final RectManager D;
    public float D0;
    public final SemanticsOwner E;
    public final AndroidComposeView$resendMotionEventRunnable$1 E0;
    public final AndroidComposeViewAccessibilityDelegateCompat F;
    public final s0 F0;
    public AndroidContentCaptureManager G;
    public boolean G0;
    public final GraphicsContext H;
    public Function2 H0;
    public final AutofillTree I;
    public final IndirectPointerNavigationGestureDetector I0;
    public final MutableObjectList J;
    public final n0 J0;
    public MutableObjectList K;
    public final n0 K0;
    public boolean L;
    public boolean L0;
    public boolean M;
    public boolean M0;
    public final MotionEventAdapter N;
    public boolean N0;
    public final PointerInputEventProcessor O;
    public final ScrollCapture O0;
    public final MutableState P;
    public View P0;
    public final State Q;
    public final AndroidComposeView$pointerIconService$1 Q0;
    public final AndroidAutofill R;
    public final AndroidAutofillManager S;
    public boolean T;
    public final OwnerSnapshotObserver U;
    public boolean V;
    public AndroidViewsHandler W;
    public Constraints a0;
    public boolean b0;
    public final MeasureAndLayoutDelegate c0;
    public long d0;
    public final int[] e0;
    public final float[] f0;
    public final Matrix g0;
    public final float[] h0;
    public final float[] i0;
    public final MutableState j;
    public long j0;
    public long k;
    public boolean k0;
    public final boolean l;
    public long l0;
    public IndirectPointerEventPrimaryDirectionalMotionAxis m;
    public Function1 m0;
    public LifecycleRetainedValuesStoreOwner.FrameEndScheduler n;
    public TextInputServiceAndroid n0;
    public LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry o;
    public TextInputService o0;
    public DisposableSaveableStateRegistry p;
    public final AtomicReference p0;
    public RetainedValuesStore q;
    public DelegatingSoftwareKeyboardController q0;
    public final ArrayDeque r;
    public final MutableState r0;
    public final s0 s;
    public final MutableState s0;
    public final MutableState t;
    public InputModeManagerImpl t0;
    public final View u;
    public final ModifierLocalManager u0;
    public final FocusOwnerImpl v;
    public AndroidTextToolbar v0;
    public CoroutineContext w;
    public MotionEvent w0;
    public final AndroidDragAndDropManager x;
    public long x0;
    public final MutableState y;
    public final WeakCache y0;
    public final State z;
    public final MutableObjectList z0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AndroidComposeViewNavigationSoundEffect implements Function2<FocusDirection, Boolean, Unit> {
        public final AndroidComposeView j;

        public AndroidComposeViewNavigationSoundEffect(AndroidComposeView androidComposeView) {
            this.j = androidComposeView;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            int contantForFocusDirection;
            int i = ((FocusDirection) obj).a;
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            Integer c = FocusInteropUtils_androidKt.c(i);
            if (c != null) {
                int intValue = c.intValue();
                if (Build.VERSION.SDK_INT >= 31) {
                    contantForFocusDirection = Api31Impl.a.a(intValue, booleanValue);
                } else {
                    contantForFocusDirection = SoundEffectConstants.getContantForFocusDirection(intValue);
                }
                this.j.playSoundEffect(contantForFocusDirection);
            }
            return Unit.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static View a(View view, int i) {
            if (Build.VERSION.SDK_INT < 29) {
                Method method = AndroidComposeView.X0;
                if (method == null) {
                    method = Class.forName("android.view.View").getDeclaredMethod("getAccessibilityViewId", null);
                    AndroidComposeView.X0 = method;
                    method.setAccessible(true);
                }
                if (Intrinsics.a(method.invoke(view, null), Integer.valueOf(i))) {
                    return view;
                }
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    int childCount = viewGroup.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View a = a(viewGroup.getChildAt(i2), i);
                        if (a != null) {
                            return a;
                        }
                    }
                }
            }
            return null;
        }

        public static boolean b() {
            Object obj;
            Method method;
            try {
                if (AndroidComposeView.R0 == null) {
                    AndroidComposeView.R0 = Class.forName("android.os.SystemProperties");
                }
                Boolean bool = null;
                if (AndroidComposeView.S0 == null) {
                    Class cls = AndroidComposeView.R0;
                    if (cls != null) {
                        method = cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
                    } else {
                        method = null;
                    }
                    AndroidComposeView.S0 = method;
                }
                Method method2 = AndroidComposeView.S0;
                if (method2 != null) {
                    obj = method2.invoke(null, "debug.layout", Boolean.FALSE);
                } else {
                    obj = null;
                }
                if (obj instanceof Boolean) {
                    bool = (Boolean) obj;
                }
                return Intrinsics.a(bool, Boolean.TRUE);
            } catch (Exception unused) {
                return false;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [kotlin.jvm.internal.FunctionReference, kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r0v57, types: [androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1] */
    /* JADX WARN: Type inference failed for: r3v5, types: [androidx.compose.ui.Modifier$Node, androidx.compose.ui.semantics.EmptySemanticsModifier] */
    public AndroidComposeView(Context context, ComposeViewContext composeViewContext) {
        super(context);
        LayoutDirection layoutDirection;
        this.j = SnapshotStateKt.g(composeViewContext);
        this.k = 9205357640488583168L;
        int i = 1;
        this.l = true;
        this.q = ForgetfulRetainedValuesStore.a;
        this.r = new ArrayDeque();
        int i2 = 0;
        this.s = new s0(this, i2);
        this.t = SnapshotStateKt.f(AndroidDensity_androidKt.a(context), SnapshotStateKt.j());
        this.v = new FocusOwnerImpl(this, this);
        this.w = composeViewContext.c().j();
        this.x = new AndroidDragAndDropManager();
        this.y = SnapshotStateKt.g(Boolean.FALSE);
        int i3 = 2;
        this.z = SnapshotStateKt.e(new n0(this, i3));
        this.A = new InsetsListener();
        LayoutNode layoutNode = new LayoutNode(3);
        layoutNode.g0(RootMeasurePolicy.b);
        layoutNode.d0(getDensity());
        layoutNode.i0(getViewConfiguration());
        layoutNode.h0(new ModifierNodeElement<RootModifierNode>() { // from class: androidx.compose.ui.platform.AndroidComposeView$root$1$1
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                return false;
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final Modifier.Node g() {
                return new AndroidComposeView.RootModifierNode();
            }

            public final int hashCode() {
                return AndroidComposeView.this.hashCode();
            }

            @Override // androidx.compose.ui.node.ModifierNodeElement
            public final /* bridge */ /* synthetic */ void i(Modifier.Node node) {
            }
        }.l(((FocusOwnerImpl) getFocusOwner()).e).l(getDragAndDropManager().c));
        this.B = layoutNode;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        this.C = new MutableIntObjectMap();
        this.D = new RectManager(getLayoutNodes(), this);
        this.E = new SemanticsOwner(getRoot(), new Modifier.Node(), getLayoutNodes());
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = new AndroidComposeViewAccessibilityDelegateCompat(this);
        this.F = androidComposeViewAccessibilityDelegateCompat;
        this.G = new AndroidContentCaptureManager(this, new FunctionReference(0, this, AndroidComposeView_androidKt.class, "getContentCaptureSessionCompat", "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;", 1));
        this.H = AndroidGraphicsContext_androidKt.a(this);
        this.I = new AutofillTree();
        this.J = new MutableObjectList();
        this.N = new MotionEventAdapter();
        this.O = new PointerInputEventProcessor(getRoot());
        this.P = SnapshotStateKt.g(new Configuration(context.getResources().getConfiguration()));
        this.Q = SnapshotStateKt.e(new n0(this, 3));
        this.R = new AndroidAutofill(this, getAutofillTree());
        this.S = new AndroidAutofillManager(new PlatformAutofillManagerImpl(context), getSemanticsOwner(), this, getRectManager(), context.getPackageName());
        this.U = new OwnerSnapshotObserver(new m0(this, i));
        this.c0 = new MeasureAndLayoutDelegate(getRoot());
        this.d0 = 9223372034707292159L;
        this.e0 = new int[]{0, 0};
        this.f0 = androidx.compose.ui.graphics.Matrix.a();
        this.g0 = new Matrix();
        this.h0 = androidx.compose.ui.graphics.Matrix.a();
        this.i0 = androidx.compose.ui.graphics.Matrix.a();
        this.j0 = -1L;
        this.l0 = 9187343241974906880L;
        this.p0 = new AtomicReference(null);
        this.r0 = composeViewContext.p;
        int layoutDirection2 = context.getResources().getConfiguration().getLayoutDirection();
        int[] iArr = FocusInteropUtils_androidKt.a;
        if (layoutDirection2 != 0) {
            if (layoutDirection2 != 1) {
                layoutDirection = null;
            } else {
                layoutDirection = LayoutDirection.k;
            }
        } else {
            layoutDirection = LayoutDirection.j;
        }
        this.s0 = SnapshotStateKt.g(layoutDirection == null ? LayoutDirection.j : layoutDirection);
        this.u0 = new ModifierLocalManager(this);
        this.y0 = new WeakCache();
        this.z0 = new MutableObjectList();
        this.A0 = Float.NaN;
        this.B0 = Float.NaN;
        this.C0 = Float.NaN;
        this.D0 = Float.NaN;
        this.E0 = new Runnable() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1
            @Override // java.lang.Runnable
            public final void run() {
                int actionMasked;
                AndroidComposeView androidComposeView = AndroidComposeView.this;
                androidComposeView.removeCallbacks(this);
                MotionEvent motionEvent = androidComposeView.w0;
                if (motionEvent != null && (actionMasked = motionEvent.getActionMasked()) != 10 && actionMasked != 1) {
                    int i4 = 7;
                    if (actionMasked != 7) {
                        if (actionMasked != 8) {
                            if (actionMasked != 9) {
                                i4 = 2;
                            }
                        } else {
                            i4 = 9;
                        }
                    }
                    androidComposeView.I(motionEvent, i4, androidComposeView.x0, false);
                }
            }
        };
        this.F0 = new s0(this, i);
        this.H0 = new AndroidComposeViewNavigationSoundEffect(this);
        this.I0 = new IndirectPointerNavigationGestureDetector(context, new m0(this, i3));
        this.J0 = new n0(this, 4);
        this.K0 = new n0(this, i2);
        addOnAttachStateChangeListener(this.G);
        setWillNotDraw(false);
        setFocusable(true);
        AndroidComposeViewVerificationHelperMethodsO.a.a(this, 1, false);
        setFocusableInTouchMode(true);
        setClipChildren(false);
        ViewCompat.n(this, androidComposeViewAccessibilityDelegateCompat);
        setOnDragListener(getDragAndDropManager());
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            AndroidComposeViewForceDarkModeQ.a.a(this);
        }
        if (l()) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
            view.setTag(R.id.hide_in_inspector_tag, Boolean.TRUE);
            this.u = view;
            addView(view, -1);
        }
        this.O0 = i4 >= 31 ? new ScrollCapture() : null;
        this.Q0 = new AndroidComposeView$pointerIconService$1(this);
    }

    public static boolean b(AndroidComposeView androidComposeView, KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public static final void c(AndroidComposeView androidComposeView, int i, AccessibilityNodeInfo accessibilityNodeInfo, String str) {
        int b;
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = androidComposeView.F;
        if (Intrinsics.a(str, androidComposeViewAccessibilityDelegateCompat.M)) {
            int b2 = androidComposeViewAccessibilityDelegateCompat.K.b(i);
            if (b2 != -1) {
                accessibilityNodeInfo.getExtras().putInt(str, b2);
                return;
            }
            return;
        }
        if (Intrinsics.a(str, androidComposeViewAccessibilityDelegateCompat.N) && (b = androidComposeViewAccessibilityDelegateCompat.L.b(i)) != -1) {
            accessibilityNodeInfo.getExtras().putInt(str, b);
        }
    }

    public static void d(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof AndroidComposeView) {
                ((AndroidComposeView) childAt).u();
            } else if (childAt instanceof ViewGroup) {
                d((ViewGroup) childAt);
            }
        }
    }

    public static long e(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    long j = size;
                    return j | (j << 32);
                }
                io.sentry.d.d();
                return 0L;
            }
            return 2147483647L;
        }
        return size;
    }

    private final CanvasHolder getCanvasHolder() {
        return getComposeViewContext().u;
    }

    private final boolean getDerivedIsAttached() {
        return ((Boolean) this.z.getValue()).booleanValue();
    }

    private final TextInputServiceAndroid getLegacyTextInputServiceAndroid() {
        TextInputServiceAndroid textInputServiceAndroid = this.n0;
        if (textInputServiceAndroid == null) {
            TextInputServiceAndroid textInputServiceAndroid2 = new TextInputServiceAndroid(getView(), this, new a(this));
            this.n0 = textInputServiceAndroid2;
            return textInputServiceAndroid2;
        }
        return textInputServiceAndroid;
    }

    private final ComposeViewContext get_composeViewContext() {
        return (ComposeViewContext) ((SnapshotMutableStateImpl) this.j).getValue();
    }

    public static void j(LayoutNode layoutNode) {
        layoutNode.H();
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            j((LayoutNode) objArr[i2]);
        }
    }

    public static boolean l() {
        if (Build.VERSION.SDK_INT >= 35) {
            return true;
        }
        return false;
    }

    public static boolean m(MotionEvent motionEvent) {
        boolean z;
        if ((Float.floatToRawIntBits(motionEvent.getX()) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(motionEvent.getY()) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(motionEvent.getRawX()) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(motionEvent.getRawY()) & Integer.MAX_VALUE) < 2139095040) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i = 1; i < pointerCount; i++) {
                if ((Float.floatToRawIntBits(motionEvent.getX(i)) & Integer.MAX_VALUE) < 2139095040 && (Float.floatToRawIntBits(motionEvent.getY(i)) & Integer.MAX_VALUE) < 2139095040 && (Build.VERSION.SDK_INT < 29 || MotionEventVerifierApi29.a.a(motionEvent, i))) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    break;
                }
            }
        }
        return z;
    }

    private final void setAttached(boolean z) {
        ((SnapshotMutableStateImpl) this.y).setValue(Boolean.valueOf(z));
    }

    private void setDensity(Density density) {
        ((SnapshotMutableStateImpl) this.t).setValue(density);
    }

    private void setLayoutDirection(LayoutDirection layoutDirection) {
        ((SnapshotMutableStateImpl) this.s0).setValue(layoutDirection);
    }

    private final void set_composeViewContext(ComposeViewContext composeViewContext) {
        ((SnapshotMutableStateImpl) this.j).setValue(composeViewContext);
    }

    public final void A() {
        if (!this.k0) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis != this.j0) {
                this.j0 = currentAnimationTimeMillis;
                C();
                ViewParent parent = getParent();
                View view = this;
                while (parent instanceof ViewGroup) {
                    view = (View) parent;
                    parent = ((ViewGroup) view).getParent();
                }
                int[] iArr = this.e0;
                view.getLocationOnScreen(iArr);
                float f = iArr[0];
                float f2 = iArr[1];
                view.getLocationInWindow(iArr);
                float f3 = iArr[0];
                float f4 = f2 - iArr[1];
                this.l0 = (Float.floatToRawIntBits(f - f3) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L);
            }
        }
    }

    public final void B(MotionEvent motionEvent) {
        this.j0 = AnimationUtils.currentAnimationTimeMillis();
        C();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        long b = androidx.compose.ui.graphics.Matrix.b((Float.floatToRawIntBits(y) & 4294967295L) | (Float.floatToRawIntBits(x) << 32), this.h0);
        float rawX = motionEvent.getRawX() - Float.intBitsToFloat((int) (b >> 32));
        float rawY = motionEvent.getRawY() - Float.intBitsToFloat((int) (b & 4294967295L));
        this.l0 = (Float.floatToRawIntBits(rawX) << 32) | (Float.floatToRawIntBits(rawY) & 4294967295L);
    }

    public final void C() {
        int i = Build.VERSION.SDK_INT;
        float[] fArr = this.h0;
        int[] iArr = this.e0;
        if (i >= 29) {
            CalculateMatrixToWindowApi29.a.a(this, fArr, this.g0, iArr);
        } else {
            androidx.compose.ui.graphics.Matrix.d(fArr);
            CalculateMatrixToWindowApi21.a(this, fArr, this.f0, iArr);
        }
        InvertMatrixKt.a(fArr, this.i0);
    }

    public final boolean D() {
        if (isFocused()) {
            return true;
        }
        return super.requestFocus(130, null);
    }

    public final void E(Function0 function0) {
        ArrayDeque arrayDeque = this.r;
        boolean isEmpty = arrayDeque.isEmpty();
        arrayDeque.addLast(function0);
        if (isEmpty) {
            Handler handler = getHandler();
            if (handler != null) {
                handler.postAtFrontOfQueue(this.s);
            } else {
                u2.g("schedule is called when outOfFrameExecutor is not available (view is detached)");
            }
        }
    }

    public final void F(LayoutNode layoutNode) {
        if (!isLayoutRequested() && isAttachedToWindow()) {
            if (layoutNode != null) {
                while (layoutNode != null && layoutNode.s() == LayoutNode.UsageByParent.j) {
                    if (!this.b0) {
                        LayoutNode w = layoutNode.w();
                        if (w == null) {
                            break;
                        }
                        long j = w.O.c.m;
                        if (Constraints.f(j) && Constraints.e(j)) {
                            break;
                        }
                    }
                    layoutNode = layoutNode.w();
                }
                if (layoutNode == getRoot()) {
                    requestLayout();
                    return;
                }
            }
            if (getWidth() != 0 && getHeight() != 0) {
                invalidate();
            } else {
                requestLayout();
            }
        }
    }

    public final long G(long j) {
        A();
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - Float.intBitsToFloat((int) (this.l0 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) - Float.intBitsToFloat((int) (this.l0 & 4294967295L));
        return androidx.compose.ui.graphics.Matrix.b((Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32), this.i0);
    }

    public final int H(MotionEvent motionEvent) {
        Object obj;
        if (this.L0) {
            this.L0 = false;
            LazyWindowInfo lazyWindowInfo = getComposeViewContext().t;
            int metaState = motionEvent.getMetaState();
            lazyWindowInfo.getClass();
            ((SnapshotMutableStateImpl) WindowInfoImpl.a).setValue(new PointerKeyboardModifiers(metaState));
        }
        MotionEventAdapter motionEventAdapter = this.N;
        PointerInputEvent d = motionEventAdapter.d(motionEvent, this);
        int actionMasked = motionEvent.getActionMasked();
        PointerInputEventProcessor pointerInputEventProcessor = this.O;
        if (d != null) {
            List list = d.a;
            int size = list.size() - 1;
            if (size >= 0) {
                while (true) {
                    int i = size - 1;
                    obj = list.get(size);
                    if (((PointerInputEventData) obj).e && (actionMasked == 0 || actionMasked == 5)) {
                        break;
                    }
                    if (i < 0) {
                        break;
                    }
                    size = i;
                }
            }
            obj = null;
            PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
            if (pointerInputEventData != null) {
                this.k = pointerInputEventData.d;
            }
            int a = pointerInputEventProcessor.a(d, this, n(motionEvent));
            d.b = null;
            if ((actionMasked != 0 && actionMasked != 5) || (a & 1) != 0) {
                return a;
            }
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            motionEventAdapter.c.delete(pointerId);
            motionEventAdapter.b.delete(pointerId);
            return a;
        }
        pointerInputEventProcessor.b();
        return 0;
    }

    public final void I(MotionEvent motionEvent, int i, long j, boolean z) {
        int i2;
        int buttonState;
        long downTime;
        int i3;
        int actionMasked = motionEvent.getActionMasked();
        int i4 = -1;
        if (actionMasked != 1) {
            if (actionMasked == 6) {
                i4 = motionEvent.getActionIndex();
            }
        } else if (i != 9 && i != 10) {
            i4 = 0;
        }
        int pointerCount = motionEvent.getPointerCount();
        if (i4 >= 0) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i5 = pointerCount - i2;
        if (i5 == 0) {
            return;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            pointerPropertiesArr[i6] = new MotionEvent.PointerProperties();
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[i5];
        for (int i7 = 0; i7 < i5; i7++) {
            pointerCoordsArr[i7] = new MotionEvent.PointerCoords();
        }
        for (int i8 = 0; i8 < i5; i8++) {
            if (i4 >= 0 && i4 <= i8) {
                i3 = 1;
            } else {
                i3 = 0;
            }
            int i9 = i3 + i8;
            motionEvent.getPointerProperties(i9, pointerPropertiesArr[i8]);
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[i8];
            motionEvent.getPointerCoords(i9, pointerCoords);
            float f = pointerCoords.x;
            float f2 = pointerCoords.y;
            long q = q((Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
            pointerCoords.x = Float.intBitsToFloat((int) (q >> 32));
            pointerCoords.y = Float.intBitsToFloat((int) (q & 4294967295L));
        }
        if (z) {
            buttonState = 0;
        } else {
            buttonState = motionEvent.getButtonState();
        }
        if (motionEvent.getDownTime() == motionEvent.getEventTime()) {
            downTime = j;
        } else {
            downTime = motionEvent.getDownTime();
        }
        MotionEvent obtain = MotionEvent.obtain(downTime, j, i, i5, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), buttonState, motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        PointerInputEvent d = this.N.d(obtain, this);
        d.getClass();
        this.O.a(d, this, true);
        obtain.recycle();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void J(Function2 function2, ContinuationImpl continuationImpl) {
        AndroidComposeView$textInputSession$1 androidComposeView$textInputSession$1;
        int i;
        if (continuationImpl instanceof AndroidComposeView$textInputSession$1) {
            androidComposeView$textInputSession$1 = (AndroidComposeView$textInputSession$1) continuationImpl;
            int i2 = androidComposeView$textInputSession$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                androidComposeView$textInputSession$1.o = i2 - Integer.MIN_VALUE;
                Object obj = androidComposeView$textInputSession$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = androidComposeView$textInputSession$1.o;
                if (i == 0) {
                    if (i != 1) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return;
                    }
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    m0 m0Var = new m0(this, 0);
                    androidComposeView$textInputSession$1.o = 1;
                    if (SessionMutex.b(this.p0, m0Var, function2, androidComposeView$textInputSession$1) == coroutineSingletons) {
                        return;
                    }
                }
                f7.h();
            }
        }
        androidComposeView$textInputSession$1 = new AndroidComposeView$textInputSession$1(this, continuationImpl);
        Object obj2 = androidComposeView$textInputSession$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = androidComposeView$textInputSession$1.o;
        if (i == 0) {
        }
        f7.h();
    }

    public final void K(Configuration configuration) {
        Configuration configuration2 = getConfiguration();
        if (!Intrinsics.a(configuration2, configuration)) {
            setConfiguration(new Configuration(configuration));
            if (configuration2.fontScale != configuration.fontScale || configuration2.densityDpi != configuration.densityDpi) {
                setDensity(AndroidDensity_androidKt.a(getContext()));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void L() {
        boolean z;
        View view;
        long j;
        long b;
        int width;
        int height;
        float[] fArr;
        int i;
        int i2;
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
        int i13;
        int i14;
        ThrottledCallbacks throttledCallbacks;
        int[] iArr = this.e0;
        getLocationOnScreen(iArr);
        long j2 = this.d0;
        int i15 = (int) (j2 >> 32);
        int i16 = (int) (j2 & 4294967295L);
        boolean z2 = false;
        int i17 = iArr[0];
        if (i15 != i17 || i16 != iArr[1] || this.j0 < 0) {
            this.d0 = (4294967295L & iArr[1]) | (i17 << 32);
            if (i15 != Integer.MAX_VALUE && i16 != Integer.MAX_VALUE) {
                MutableVector D = getRoot().D();
                Object[] objArr = D.j;
                int i18 = D.l;
                for (int i19 = 0; i19 < i18; i19++) {
                    ((LayoutNode) objArr[i19]).P.p.J0();
                }
                z = true;
                A();
                view = this.P0;
                if (view == null) {
                    view = getRootView();
                    this.P0 = view;
                }
                RectManager rectManager = getRectManager();
                j = this.d0;
                b = IntOffsetKt.b(this.l0);
                width = view.getWidth();
                height = view.getHeight();
                rectManager.getClass();
                fArr = this.h0;
                if (fArr.length >= 16) {
                    i14 = 0;
                } else {
                    if (fArr[0] == 1.0f) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    if (fArr[1] == 0.0f) {
                        i2 = 1;
                    } else {
                        i2 = 0;
                    }
                    int i20 = i & i2;
                    if (fArr[2] == 0.0f) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                    int i21 = i20 & i3;
                    if (fArr[4] == 0.0f) {
                        i4 = 1;
                    } else {
                        i4 = 0;
                    }
                    int i22 = i21 & i4;
                    if (fArr[5] == 1.0f) {
                        i5 = 1;
                    } else {
                        i5 = 0;
                    }
                    int i23 = i22 & i5;
                    if (fArr[6] == 0.0f) {
                        i6 = 1;
                    } else {
                        i6 = 0;
                    }
                    int i24 = i23 & i6;
                    if (fArr[8] == 0.0f) {
                        i7 = 1;
                    } else {
                        i7 = 0;
                    }
                    int i25 = i24 & i7;
                    if (fArr[9] == 0.0f) {
                        i8 = 1;
                    } else {
                        i8 = 0;
                    }
                    int i26 = i25 & i8;
                    if (fArr[10] == 1.0f) {
                        i9 = 1;
                    } else {
                        i9 = 0;
                    }
                    int i27 = i26 & i9;
                    if (fArr[12] == 0.0f) {
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    if (fArr[13] == 0.0f) {
                        i11 = 1;
                    } else {
                        i11 = 0;
                    }
                    int i28 = i10 & i11;
                    if (fArr[14] == 0.0f) {
                        i12 = 1;
                    } else {
                        i12 = 0;
                    }
                    int i29 = i28 & i12;
                    if (fArr[15] == 1.0f) {
                        i13 = 1;
                    } else {
                        i13 = 0;
                    }
                    i14 = (i27 << 1) | (i13 & i29);
                }
                throttledCallbacks = rectManager.d;
                if ((i14 & 2) != 0) {
                    fArr = null;
                }
                if (!throttledCallbacks.b(j, b, fArr, width, height) || rectManager.g) {
                    z2 = true;
                }
                rectManager.g = z2;
                this.c0.b(z);
                getRectManager().a();
            }
        }
        z = false;
        A();
        view = this.P0;
        if (view == null) {
        }
        RectManager rectManager2 = getRectManager();
        j = this.d0;
        b = IntOffsetKt.b(this.l0);
        width = view.getWidth();
        height = view.getHeight();
        rectManager2.getClass();
        fArr = this.h0;
        if (fArr.length >= 16) {
        }
        throttledCallbacks = rectManager2.d;
        if ((i14 & 2) != 0) {
        }
        if (!throttledCallbacks.b(j, b, fArr, width, height)) {
        }
        z2 = true;
        rectManager2.g = z2;
        this.c0.b(z);
        getRectManager().a();
    }

    public final void M(float f) {
        if (l()) {
            if (f > 0.0f) {
                if (Float.isNaN(this.A0) || f > this.A0) {
                    this.A0 = f;
                    return;
                }
                return;
            }
            if (f < 0.0f) {
                if (Float.isNaN(this.B0) || f < this.B0) {
                    this.B0 = f;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.focus.FocusListener
    public final void a(FocusTargetModifierNode focusTargetModifierNode, FocusTargetNode focusTargetNode) {
        boolean z;
        NodeChain nodeChain;
        boolean z2;
        NodeChain nodeChain2;
        boolean z3;
        if (focusTargetModifierNode != 0) {
            Modifier.Node node = (Modifier.Node) focusTargetModifierNode;
            if (!node.j.w) {
                InlineClassHelperKt.b("visitAncestors called on an unattached node");
            }
            Modifier.Node node2 = node.j;
            LayoutNode g = DelegatableNodeKt.g(focusTargetModifierNode);
            MutableScatterSet mutableScatterSet = null;
            ArrayList arrayList = null;
            while (g != null) {
                if ((g.O.f.m & 2097152) != 0) {
                    while (node2 != null) {
                        if ((node2.l & 2097152) != 0) {
                            Modifier.Node node3 = node2;
                            MutableVector mutableVector = null;
                            while (node3 != null) {
                                if (node3 instanceof IndirectPointerInputModifierNode) {
                                    if (arrayList == null) {
                                        arrayList = new ArrayList();
                                    }
                                    arrayList.add(node3);
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                if (z3 && (node3.l & 2097152) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                        if ((node4.l & 2097152) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node3 = node4;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node3 != null) {
                                                    mutableVector.b(node3);
                                                    node3 = null;
                                                }
                                                mutableVector.b(node4);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node3 = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                        node2 = node2.n;
                    }
                }
                g = g.w();
                if (g != null && (nodeChain2 = g.O) != null) {
                    node2 = nodeChain2.e;
                } else {
                    node2 = null;
                }
            }
            if (arrayList != null) {
                if (focusTargetNode != null) {
                    if (!focusTargetNode.j.w) {
                        InlineClassHelperKt.b("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node5 = focusTargetNode.j;
                    LayoutNode g2 = DelegatableNodeKt.g(focusTargetNode);
                    MutableScatterSet mutableScatterSet2 = null;
                    while (g2 != null) {
                        if ((g2.O.f.m & 2097152) != 0) {
                            while (node5 != null) {
                                if ((node5.l & 2097152) != 0) {
                                    Modifier.Node node6 = node5;
                                    MutableVector mutableVector2 = null;
                                    while (node6 != null) {
                                        if (node6 instanceof IndirectPointerInputModifierNode) {
                                            if (mutableScatterSet2 == null) {
                                                MutableScatterSet mutableScatterSet3 = ScatterSetKt.a;
                                                mutableScatterSet2 = new MutableScatterSet();
                                            }
                                            mutableScatterSet2.d(node6);
                                            z2 = false;
                                        } else {
                                            z2 = true;
                                        }
                                        if (z2 && (node6.l & 2097152) != 0 && (node6 instanceof DelegatingNode)) {
                                            int i2 = 0;
                                            for (Modifier.Node node7 = ((DelegatingNode) node6).y; node7 != null; node7 = node7.o) {
                                                if ((node7.l & 2097152) != 0) {
                                                    i2++;
                                                    if (i2 == 1) {
                                                        node6 = node7;
                                                    } else {
                                                        if (mutableVector2 == null) {
                                                            mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                        }
                                                        if (node6 != null) {
                                                            mutableVector2.b(node6);
                                                            node6 = null;
                                                        }
                                                        mutableVector2.b(node7);
                                                    }
                                                }
                                            }
                                            if (i2 == 1) {
                                            }
                                        }
                                        node6 = DelegatableNodeKt.b(mutableVector2);
                                    }
                                }
                                node5 = node5.n;
                            }
                        }
                        g2 = g2.w();
                        if (g2 != null && (nodeChain = g2.O) != null) {
                            node5 = nodeChain.e;
                        } else {
                            node5 = null;
                        }
                    }
                    mutableScatterSet = mutableScatterSet2;
                }
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    IndirectPointerInputModifierNode indirectPointerInputModifierNode = (IndirectPointerInputModifierNode) arrayList.get(i3);
                    if (mutableScatterSet != null) {
                        z = mutableScatterSet.a(indirectPointerInputModifierNode);
                    } else {
                        z = false;
                    }
                    if (!z) {
                        indirectPointerInputModifierNode.k0();
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        FocusTargetNode focusTargetNode = ((FocusOwnerImpl) getFocusOwner()).c;
        if (focusTargetNode.w) {
            if (!focusTargetNode.j.w) {
                InlineClassHelperKt.b("visitSubtreeIf called on an unattached node");
            }
            MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
            Modifier.Node node = focusTargetNode.j;
            Modifier.Node node2 = node.o;
            if (node2 == null) {
                DelegatableNodeKt.a(mutableVector, node);
            } else {
                mutableVector.b(node2);
            }
            while (true) {
                int i3 = mutableVector.l;
                if (i3 != 0) {
                    Modifier.Node node3 = (Modifier.Node) mutableVector.k(i3 - 1);
                    if ((node3.m & 1024) != 0) {
                        for (Modifier.Node node4 = node3; node4 != null && node4.w; node4 = node4.o) {
                            if ((node4.l & 1024) != 0) {
                                Modifier.Node node5 = node4;
                                MutableVector mutableVector2 = null;
                                while (node5 != null) {
                                    int i4 = 0;
                                    if (node5 instanceof FocusTargetNode) {
                                        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node5;
                                        if (focusTargetNode2.w && focusTargetNode2.a1().a) {
                                            super.addFocusables(arrayList, i, i2);
                                            FocusTargetNode focusTargetNode3 = ((FocusOwnerImpl) getFocusOwner()).c;
                                            if (focusTargetNode3.w) {
                                                if (!focusTargetNode3.j.w) {
                                                    InlineClassHelperKt.b("visitSubtreeIf called on an unattached node");
                                                }
                                                MutableVector mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                                Modifier.Node node6 = focusTargetNode3.j;
                                                Modifier.Node node7 = node6.o;
                                                if (node7 == null) {
                                                    DelegatableNodeKt.a(mutableVector3, node6);
                                                } else {
                                                    mutableVector3.b(node7);
                                                }
                                                while (true) {
                                                    int i5 = mutableVector3.l;
                                                    if (i5 == 0) {
                                                        break;
                                                    }
                                                    Modifier.Node node8 = (Modifier.Node) mutableVector3.k(i5 - 1);
                                                    if ((node8.m & 1024) != 0) {
                                                        for (Modifier.Node node9 = node8; node9 != null && node9.w; node9 = node9.o) {
                                                            if ((node9.l & 1024) != 0) {
                                                                Modifier.Node node10 = node9;
                                                                MutableVector mutableVector4 = null;
                                                                while (node10 != null) {
                                                                    if (node10 instanceof FocusTargetNode) {
                                                                        FocusTargetNode focusTargetNode4 = (FocusTargetNode) node10;
                                                                        if (focusTargetNode4.w) {
                                                                            FocusPropertiesImpl a1 = focusTargetNode4.a1();
                                                                            if (focusTargetNode4.w && !focusTargetNode4.x && a1.a) {
                                                                                return;
                                                                            }
                                                                        }
                                                                    } else if ((node10.l & 1024) != 0 && (node10 instanceof DelegatingNode)) {
                                                                        int i6 = 0;
                                                                        for (Modifier.Node node11 = ((DelegatingNode) node10).y; node11 != null; node11 = node11.o) {
                                                                            if ((node11.l & 1024) != 0) {
                                                                                i6++;
                                                                                if (i6 == 1) {
                                                                                    node10 = node11;
                                                                                } else {
                                                                                    if (mutableVector4 == null) {
                                                                                        mutableVector4 = new MutableVector(new Modifier.Node[16]);
                                                                                    }
                                                                                    if (node10 != null) {
                                                                                        mutableVector4.b(node10);
                                                                                        node10 = null;
                                                                                    }
                                                                                    mutableVector4.b(node11);
                                                                                }
                                                                            }
                                                                        }
                                                                        if (i6 == 1) {
                                                                        }
                                                                    }
                                                                    node10 = DelegatableNodeKt.b(mutableVector4);
                                                                }
                                                            }
                                                        }
                                                    }
                                                    DelegatableNodeKt.a(mutableVector3, node8);
                                                }
                                            }
                                            if (arrayList != null) {
                                                arrayList.remove(this);
                                                return;
                                            }
                                            return;
                                        }
                                    } else if ((node5.l & 1024) != 0 && (node5 instanceof DelegatingNode)) {
                                        for (Modifier.Node node12 = ((DelegatingNode) node5).y; node12 != null; node12 = node12.o) {
                                            if ((node12.l & 1024) != 0) {
                                                i4++;
                                                if (i4 == 1) {
                                                    node5 = node12;
                                                } else {
                                                    if (mutableVector2 == null) {
                                                        mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (node5 != null) {
                                                        mutableVector2.b(node5);
                                                        node5 = null;
                                                    }
                                                    mutableVector2.b(node12);
                                                }
                                            }
                                        }
                                        if (i4 == 1) {
                                        }
                                    }
                                    node5 = DelegatableNodeKt.b(mutableVector2);
                                }
                            }
                        }
                    }
                    DelegatableNodeKt.a(mutableVector, node3);
                } else {
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        view.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(view, i, layoutParams, true);
    }

    @Override // android.view.View
    public final void autofill(SparseArray sparseArray) {
        SemanticsConfiguration y;
        Function1 function1;
        Function1 function12;
        AndroidAutofillManager autofillManager = getAutofillManager();
        if (autofillManager != null) {
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArray.keyAt(i);
                AutofillValue autofillValue = (AutofillValue) sparseArray.get(keyAt);
                SemanticsInfo semanticsInfo = (SemanticsInfo) autofillManager.k.c.b(keyAt);
                if (semanticsInfo != null && (y = ((LayoutNode) semanticsInfo).y()) != null) {
                    MutableScatterMap mutableScatterMap = y.j;
                    Object e = mutableScatterMap.e(SemanticsActions.g);
                    Object obj = null;
                    if (e == null) {
                        e = null;
                    }
                    AccessibilityAction accessibilityAction = (AccessibilityAction) e;
                    if (accessibilityAction != null && (function12 = (Function1) accessibilityAction.b) != null) {
                    }
                    Object e2 = mutableScatterMap.e(SemanticsActions.h);
                    if (e2 != null) {
                        obj = e2;
                    }
                    AccessibilityAction accessibilityAction2 = (AccessibilityAction) obj;
                    if (accessibilityAction2 != null && (function1 = (Function1) accessibilityAction2.b) != null) {
                    }
                }
            }
        }
        AndroidAutofill autofill = getAutofill();
        if (autofill != null) {
            AutofillTree autofillTree = autofill.b;
            if (!autofillTree.a.isEmpty()) {
                int size2 = sparseArray.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    int keyAt2 = sparseArray.keyAt(i2);
                    AutofillValue autofillValue2 = (AutofillValue) sparseArray.get(keyAt2);
                    if (autofillValue2.isText()) {
                        autofillValue2.getTextValue().toString();
                        if (autofillTree.a.get(Integer.valueOf(keyAt2)) != null) {
                            io.sentry.d.i();
                            return;
                        }
                    } else if (!autofillValue2.isDate()) {
                        if (!autofillValue2.isList()) {
                            if (autofillValue2.isToggle()) {
                                throw new Error("An operation is not implemented: b/138604541:  Add onFill() callback for toggle");
                            }
                        } else {
                            throw new Error("An operation is not implemented: b/138604541: Add onFill() callback for list");
                        }
                    } else {
                        throw new Error("An operation is not implemented: b/138604541: Add onFill() callback for date");
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return this.F.m(i, this.k, false);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return this.F.m(i, this.k, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        MutableObjectList mutableObjectList = this.J;
        if (!isAttachedToWindow()) {
            j(getRoot());
        }
        r(true);
        SnapshotKt.i().m();
        this.L = true;
        Trace.beginSection("AndroidOwner:draw");
        try {
            CanvasHolder canvasHolder = getCanvasHolder();
            AndroidCanvas androidCanvas = canvasHolder.a;
            Canvas canvas2 = androidCanvas.a;
            androidCanvas.a = canvas;
            getRoot().i(androidCanvas, null);
            canvasHolder.a.a = canvas2;
            if (mutableObjectList.e()) {
                int i = mutableObjectList.b;
                for (int i2 = 0; i2 < i; i2++) {
                    ((GraphicsLayerOwnerLayer) ((OwnedLayer) mutableObjectList.b(i2))).g();
                }
            }
            int i3 = ViewLayer.j;
            mutableObjectList.k();
            this.L = false;
            Trace.endSection();
            MutableObjectList mutableObjectList2 = this.K;
            if (mutableObjectList2 != null) {
                mutableObjectList.h(mutableObjectList2);
                mutableObjectList2.k();
            }
            if (l()) {
                if (Float.compare(this.A0, this.C0) != 0) {
                    float f = this.A0;
                    this.C0 = f;
                    Api35Impl.a(this, f);
                }
                View view = this.u;
                if (view != null) {
                    if (Float.compare(this.B0, this.D0) != 0) {
                        float f2 = this.B0;
                        this.D0 = f2;
                        Api35Impl.a(view, f2);
                    }
                    if (!Float.isNaN(this.B0)) {
                        view.invalidate();
                        drawChild(canvas, view, getDrawingTime());
                    }
                }
                this.A0 = Float.NaN;
                this.B0 = Float.NaN;
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v64, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r14v65, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r14v68 */
    /* JADX WARN: Type inference failed for: r14v69, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r14v70, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v71 */
    /* JADX WARN: Type inference failed for: r14v72 */
    /* JADX WARN: Type inference failed for: r14v73 */
    /* JADX WARN: Type inference failed for: r14v74 */
    /* JADX WARN: Type inference failed for: r14v75 */
    /* JADX WARN: Type inference failed for: r14v76 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v27, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r15v28 */
    /* JADX WARN: Type inference failed for: r15v29 */
    /* JADX WARN: Type inference failed for: r15v30, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r15v33 */
    /* JADX WARN: Type inference failed for: r15v34 */
    /* JADX WARN: Type inference failed for: r15v35 */
    /* JADX WARN: Type inference failed for: r15v36 */
    /* JADX WARN: Type inference failed for: r1v12, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v16, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v55 */
    /* JADX WARN: Type inference failed for: r7v56 */
    /* JADX WARN: Type inference failed for: r7v64 */
    /* JADX WARN: Type inference failed for: r7v65, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v66 */
    /* JADX WARN: Type inference failed for: r7v67, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r7v68, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v69 */
    /* JADX WARN: Type inference failed for: r7v70 */
    /* JADX WARN: Type inference failed for: r7v71 */
    /* JADX WARN: Type inference failed for: r7v72 */
    /* JADX WARN: Type inference failed for: r7v73 */
    /* JADX WARN: Type inference failed for: r7v74 */
    /* JADX WARN: Type inference failed for: r7v75 */
    /* JADX WARN: Type inference failed for: r7v76 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v34 */
    /* JADX WARN: Type inference failed for: r8v35, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* JADX WARN: Type inference failed for: r8v37, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v39 */
    /* JADX WARN: Type inference failed for: r8v40 */
    /* JADX WARN: Type inference failed for: r8v41 */
    /* JADX WARN: Type inference failed for: r8v42 */
    /* JADX WARN: Type inference failed for: r8v67 */
    /* JADX WARN: Type inference failed for: r8v68 */
    /* JADX WARN: Type inference failed for: r8v69 */
    /* JADX WARN: Type inference failed for: r8v70, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v71 */
    /* JADX WARN: Type inference failed for: r8v72 */
    /* JADX WARN: Type inference failed for: r8v73, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v75 */
    /* JADX WARN: Type inference failed for: r8v76 */
    /* JADX WARN: Type inference failed for: r8v77 */
    /* JADX WARN: Type inference failed for: r8v78 */
    /* JADX WARN: Type inference failed for: r8v79 */
    /* JADX WARN: Type inference failed for: r8v80 */
    /* JADX WARN: Type inference failed for: r8v81 */
    /* JADX WARN: Type inference failed for: r8v82 */
    /* JADX WARN: Type inference failed for: r8v83 */
    /* JADX WARN: Type inference failed for: r8v84 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r9v36 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /* JADX WARN: Type inference failed for: r9v38, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r9v61 */
    /* JADX WARN: Type inference failed for: r9v62 */
    /* JADX WARN: Type inference failed for: r9v63 */
    /* JADX WARN: Type inference failed for: r9v64 */
    @Override // android.view.View
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        IndirectPointerInputModifierNode indirectPointerInputModifierNode;
        NodeChain nodeChain;
        boolean z;
        DelegatingNode delegatingNode;
        NodeChain nodeChain2;
        IndirectPointerInputModifierNode indirectPointerInputModifierNode2;
        boolean z2;
        int size;
        int size2;
        NodeChain nodeChain3;
        boolean z3;
        DelegatingNode delegatingNode2;
        NodeChain nodeChain4;
        RotaryInputModifierNode rotaryInputModifierNode;
        int size3;
        NodeChain nodeChain5;
        boolean z4;
        DelegatingNode delegatingNode3;
        NodeChain nodeChain6;
        if (this.G0) {
            s0 s0Var = this.F0;
            removeCallbacks(s0Var);
            if (motionEvent.getActionMasked() == 8) {
                this.G0 = false;
            } else {
                s0Var.run();
            }
        }
        if (!m(motionEvent) && isAttachedToWindow()) {
            if (motionEvent.getActionMasked() == 8) {
                if (motionEvent.isFromSource(4194304)) {
                    android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
                    motionEvent.getAxisValue(26);
                    getContext();
                    viewConfiguration.getScaledVerticalScrollFactor();
                    getContext();
                    viewConfiguration.getScaledHorizontalScrollFactor();
                    motionEvent.getEventTime();
                    motionEvent.getDeviceId();
                    FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) getFocusOwner();
                    if (focusOwnerImpl.d.e) {
                        System.out.println((Object) "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated.");
                        return false;
                    }
                    FocusTargetNode a = FocusTraversalKt.a(focusOwnerImpl.c);
                    if (a != null) {
                        if (!a.j.w) {
                            InlineClassHelperKt.b("visitAncestors called on an unattached node");
                        }
                        Modifier.Node node = a.j;
                        LayoutNode g = DelegatableNodeKt.g(a);
                        loop0: while (true) {
                            if (g != null) {
                                if ((g.O.f.m & 16384) != 0) {
                                    while (node != null) {
                                        if ((node.l & 16384) != 0) {
                                            delegatingNode3 = node;
                                            ?? r8 = 0;
                                            while (delegatingNode3 != 0) {
                                                if (delegatingNode3 instanceof RotaryInputModifierNode) {
                                                    break loop0;
                                                }
                                                if ((delegatingNode3.l & 16384) != 0 && (delegatingNode3 instanceof DelegatingNode)) {
                                                    Modifier.Node node2 = delegatingNode3.y;
                                                    int i = 0;
                                                    delegatingNode3 = delegatingNode3;
                                                    r8 = r8;
                                                    while (node2 != null) {
                                                        if ((node2.l & 16384) != 0) {
                                                            i++;
                                                            r8 = r8;
                                                            if (i == 1) {
                                                                delegatingNode3 = node2;
                                                            } else {
                                                                if (r8 == 0) {
                                                                    r8 = new MutableVector(new Modifier.Node[16]);
                                                                }
                                                                if (delegatingNode3 != 0) {
                                                                    r8.b(delegatingNode3);
                                                                    delegatingNode3 = 0;
                                                                }
                                                                r8.b(node2);
                                                            }
                                                        }
                                                        node2 = node2.o;
                                                        delegatingNode3 = delegatingNode3;
                                                        r8 = r8;
                                                    }
                                                    if (i == 1) {
                                                    }
                                                }
                                                delegatingNode3 = DelegatableNodeKt.b(r8);
                                            }
                                        }
                                        node = node.n;
                                    }
                                }
                                g = g.w();
                                if (g != null && (nodeChain6 = g.O) != null) {
                                    node = nodeChain6.e;
                                } else {
                                    node = null;
                                }
                            } else {
                                delegatingNode3 = 0;
                                break;
                            }
                        }
                        rotaryInputModifierNode = (RotaryInputModifierNode) delegatingNode3;
                    } else {
                        rotaryInputModifierNode = null;
                    }
                    if (rotaryInputModifierNode != null) {
                        Modifier.Node node3 = (Modifier.Node) rotaryInputModifierNode;
                        if (!node3.j.w) {
                            InlineClassHelperKt.b("visitAncestors called on an unattached node");
                        }
                        Modifier.Node node4 = node3.j.n;
                        LayoutNode g2 = DelegatableNodeKt.g(rotaryInputModifierNode);
                        ArrayList arrayList = null;
                        while (g2 != null) {
                            if ((g2.O.f.m & 16384) != 0) {
                                while (node4 != null) {
                                    if ((node4.l & 16384) != 0) {
                                        Modifier.Node node5 = node4;
                                        MutableVector mutableVector = null;
                                        while (node5 != null) {
                                            if (node5 instanceof RotaryInputModifierNode) {
                                                if (arrayList == null) {
                                                    arrayList = new ArrayList();
                                                }
                                                arrayList.add(node5);
                                                z4 = false;
                                            } else {
                                                z4 = true;
                                            }
                                            if (z4 && (node5.l & 16384) != 0 && (node5 instanceof DelegatingNode)) {
                                                int i2 = 0;
                                                for (Modifier.Node node6 = ((DelegatingNode) node5).y; node6 != null; node6 = node6.o) {
                                                    if ((node6.l & 16384) != 0) {
                                                        i2++;
                                                        if (i2 == 1) {
                                                            node5 = node6;
                                                        } else {
                                                            if (mutableVector == null) {
                                                                mutableVector = new MutableVector(new Modifier.Node[16]);
                                                            }
                                                            if (node5 != null) {
                                                                mutableVector.b(node5);
                                                                node5 = null;
                                                            }
                                                            mutableVector.b(node6);
                                                        }
                                                    }
                                                }
                                                if (i2 == 1) {
                                                }
                                            }
                                            node5 = DelegatableNodeKt.b(mutableVector);
                                        }
                                    }
                                    node4 = node4.n;
                                }
                            }
                            g2 = g2.w();
                            if (g2 != null && (nodeChain5 = g2.O) != null) {
                                node4 = nodeChain5.e;
                            } else {
                                node4 = null;
                            }
                        }
                        if (arrayList != null && arrayList.size() - 1 >= 0) {
                            while (true) {
                                int i3 = size3 - 1;
                                ((RotaryInputModifierNode) arrayList.get(size3)).getClass();
                                if (i3 < 0) {
                                    break;
                                }
                                size3 = i3;
                            }
                        }
                        DelegatingNode delegatingNode4 = node3.j;
                        ?? r5 = 0;
                        while (delegatingNode4 != 0) {
                            if (delegatingNode4 instanceof RotaryInputModifierNode) {
                            } else if ((delegatingNode4.l & 16384) != 0 && (delegatingNode4 instanceof DelegatingNode)) {
                                Modifier.Node node7 = delegatingNode4.y;
                                int i4 = 0;
                                delegatingNode4 = delegatingNode4;
                                r5 = r5;
                                while (node7 != null) {
                                    if ((node7.l & 16384) != 0) {
                                        i4++;
                                        r5 = r5;
                                        if (i4 == 1) {
                                            delegatingNode4 = node7;
                                        } else {
                                            if (r5 == 0) {
                                                r5 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode4 != 0) {
                                                r5.b(delegatingNode4);
                                                delegatingNode4 = 0;
                                            }
                                            r5.b(node7);
                                        }
                                    }
                                    node7 = node7.o;
                                    delegatingNode4 = delegatingNode4;
                                    r5 = r5;
                                }
                                if (i4 == 1) {
                                }
                            }
                            delegatingNode4 = DelegatableNodeKt.b(r5);
                        }
                        if (!super.dispatchGenericMotionEvent(motionEvent)) {
                            DelegatingNode delegatingNode5 = node3.j;
                            ?? r15 = 0;
                            while (delegatingNode5 != 0) {
                                if (delegatingNode5 instanceof RotaryInputModifierNode) {
                                } else if ((delegatingNode5.l & 16384) != 0 && (delegatingNode5 instanceof DelegatingNode)) {
                                    Modifier.Node node8 = delegatingNode5.y;
                                    int i5 = 0;
                                    delegatingNode5 = delegatingNode5;
                                    r15 = r15;
                                    while (node8 != null) {
                                        if ((node8.l & 16384) != 0) {
                                            i5++;
                                            r15 = r15;
                                            if (i5 == 1) {
                                                delegatingNode5 = node8;
                                            } else {
                                                if (r15 == 0) {
                                                    r15 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode5 != 0) {
                                                    r15.b(delegatingNode5);
                                                    delegatingNode5 = 0;
                                                }
                                                r15.b(node8);
                                            }
                                        }
                                        node8 = node8.o;
                                        delegatingNode5 = delegatingNode5;
                                        r15 = r15;
                                    }
                                    if (i5 == 1) {
                                    }
                                }
                                delegatingNode5 = DelegatableNodeKt.b(r15);
                            }
                            if (arrayList != null) {
                                int size4 = arrayList.size();
                                for (int i6 = 0; i6 < size4; i6++) {
                                    ((RotaryInputModifierNode) arrayList.get(i6)).getClass();
                                }
                            }
                        }
                        return true;
                    }
                    return false;
                }
                if ((i(motionEvent) & 4) == 0) {
                    return false;
                }
                return true;
            }
            if (motionEvent.isFromSource(2097152)) {
                AndroidIndirectPointerEvent c = this.N.c(motionEvent, this.m);
                IndirectPointerNavigationGestureDetector indirectPointerNavigationGestureDetector = this.I0;
                if (c != null) {
                    FocusOwnerImpl focusOwnerImpl2 = (FocusOwnerImpl) getFocusOwner();
                    if (focusOwnerImpl2.d.e) {
                        System.out.println((Object) "FocusRelatedWarning: Dispatching indirect pointer event while the focus system is invalidated.");
                    } else {
                        FocusTargetNode g3 = focusOwnerImpl2.g();
                        if (g3 != null) {
                            if (!g3.j.w) {
                                InlineClassHelperKt.b("visitAncestors called on an unattached node");
                            }
                            Modifier.Node node9 = g3.j;
                            LayoutNode g4 = DelegatableNodeKt.g(g3);
                            loop14: while (true) {
                                if (g4 != null) {
                                    if ((g4.O.f.m & 2097152) != 0) {
                                        while (node9 != null) {
                                            if ((node9.l & 2097152) != 0) {
                                                ?? r9 = 0;
                                                delegatingNode2 = node9;
                                                while (delegatingNode2 != 0) {
                                                    if (delegatingNode2 instanceof IndirectPointerInputModifierNode) {
                                                        break loop14;
                                                    }
                                                    if ((delegatingNode2.l & 2097152) != 0 && (delegatingNode2 instanceof DelegatingNode)) {
                                                        Modifier.Node node10 = delegatingNode2.y;
                                                        int i7 = 0;
                                                        delegatingNode2 = delegatingNode2;
                                                        r9 = r9;
                                                        while (node10 != null) {
                                                            if ((node10.l & 2097152) != 0) {
                                                                i7++;
                                                                r9 = r9;
                                                                if (i7 == 1) {
                                                                    delegatingNode2 = node10;
                                                                } else {
                                                                    if (r9 == 0) {
                                                                        r9 = new MutableVector(new Modifier.Node[16]);
                                                                    }
                                                                    if (delegatingNode2 != 0) {
                                                                        r9.b(delegatingNode2);
                                                                        delegatingNode2 = 0;
                                                                    }
                                                                    r9.b(node10);
                                                                }
                                                            }
                                                            node10 = node10.o;
                                                            delegatingNode2 = delegatingNode2;
                                                            r9 = r9;
                                                        }
                                                        if (i7 == 1) {
                                                        }
                                                    }
                                                    delegatingNode2 = DelegatableNodeKt.b(r9);
                                                }
                                            }
                                            node9 = node9.n;
                                        }
                                    }
                                    g4 = g4.w();
                                    if (g4 != null && (nodeChain4 = g4.O) != null) {
                                        node9 = nodeChain4.e;
                                    } else {
                                        node9 = null;
                                    }
                                } else {
                                    delegatingNode2 = 0;
                                    break;
                                }
                            }
                            indirectPointerInputModifierNode2 = (IndirectPointerInputModifierNode) delegatingNode2;
                        } else {
                            indirectPointerInputModifierNode2 = null;
                        }
                        if (indirectPointerInputModifierNode2 != null) {
                            Modifier.Node node11 = (Modifier.Node) indirectPointerInputModifierNode2;
                            if (!node11.j.w) {
                                InlineClassHelperKt.b("visitAncestors called on an unattached node");
                            }
                            Modifier.Node node12 = node11.j.n;
                            LayoutNode g5 = DelegatableNodeKt.g(indirectPointerInputModifierNode2);
                            ArrayList arrayList2 = null;
                            while (g5 != null) {
                                if ((g5.O.f.m & 2097152) != 0) {
                                    while (node12 != null) {
                                        if ((node12.l & 2097152) != 0) {
                                            Modifier.Node node13 = node12;
                                            MutableVector mutableVector2 = null;
                                            while (node13 != null) {
                                                if (node13 instanceof IndirectPointerInputModifierNode) {
                                                    if (arrayList2 == null) {
                                                        arrayList2 = new ArrayList();
                                                    }
                                                    arrayList2.add(node13);
                                                    z3 = false;
                                                } else {
                                                    z3 = true;
                                                }
                                                if (z3 && (node13.l & 2097152) != 0 && (node13 instanceof DelegatingNode)) {
                                                    int i8 = 0;
                                                    for (Modifier.Node node14 = ((DelegatingNode) node13).y; node14 != null; node14 = node14.o) {
                                                        if ((node14.l & 2097152) != 0) {
                                                            i8++;
                                                            if (i8 == 1) {
                                                                node13 = node14;
                                                            } else {
                                                                if (mutableVector2 == null) {
                                                                    mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                                }
                                                                if (node13 != null) {
                                                                    mutableVector2.b(node13);
                                                                    node13 = null;
                                                                }
                                                                mutableVector2.b(node14);
                                                            }
                                                        }
                                                    }
                                                    if (i8 == 1) {
                                                    }
                                                }
                                                node13 = DelegatableNodeKt.b(mutableVector2);
                                            }
                                        }
                                        node12 = node12.n;
                                    }
                                }
                                g5 = g5.w();
                                if (g5 != null && (nodeChain3 = g5.O) != null) {
                                    node12 = nodeChain3.e;
                                } else {
                                    node12 = null;
                                }
                            }
                            if (arrayList2 != null && arrayList2.size() - 1 >= 0) {
                                while (true) {
                                    int i9 = size2 - 1;
                                    ((IndirectPointerInputModifierNode) arrayList2.get(size2)).m(c, PointerEventPass.j);
                                    if (i9 < 0) {
                                        break;
                                    }
                                    size2 = i9;
                                }
                            }
                            indirectPointerInputModifierNode2.m(c, PointerEventPass.j);
                            indirectPointerInputModifierNode2.m(c, PointerEventPass.k);
                            if (arrayList2 != null) {
                                int size5 = arrayList2.size();
                                for (int i10 = 0; i10 < size5; i10++) {
                                    ((IndirectPointerInputModifierNode) arrayList2.get(i10)).m(c, PointerEventPass.k);
                                }
                            }
                            if (arrayList2 != null && arrayList2.size() - 1 >= 0) {
                                while (true) {
                                    int i11 = size - 1;
                                    ((IndirectPointerInputModifierNode) arrayList2.get(size)).m(c, PointerEventPass.l);
                                    if (i11 < 0) {
                                        break;
                                    }
                                    size = i11;
                                }
                            }
                            indirectPointerInputModifierNode2.m(c, PointerEventPass.l);
                        }
                        ArrayList arrayList3 = c.a;
                        int size6 = arrayList3.size();
                        for (int i12 = 0; i12 < size6; i12++) {
                            if (((IndirectPointerInputChange) arrayList3.get(i12)).i) {
                                z2 = true;
                                break;
                            }
                        }
                    }
                    z2 = false;
                    indirectPointerNavigationGestureDetector.getClass();
                    MotionEvent motionEvent2 = c.c;
                    int action = motionEvent2.getAction();
                    if (action != 0) {
                        if ((action == 1 || action == 2) && z2) {
                            indirectPointerNavigationGestureDetector.b = 0;
                            indirectPointerNavigationGestureDetector.c = true;
                        }
                    } else {
                        indirectPointerNavigationGestureDetector.b = c.b;
                        indirectPointerNavigationGestureDetector.c = false;
                    }
                    indirectPointerNavigationGestureDetector.d.onTouchEvent(motionEvent2);
                    return true;
                }
                FocusTargetNode g6 = ((FocusOwnerImpl) getFocusOwner()).g();
                if (g6 != null) {
                    if (!g6.j.w) {
                        InlineClassHelperKt.b("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node15 = g6.j;
                    LayoutNode g7 = DelegatableNodeKt.g(g6);
                    loop26: while (true) {
                        if (g7 != null) {
                            if ((g7.O.f.m & 2097152) != 0) {
                                while (node15 != null) {
                                    if ((node15.l & 2097152) != 0) {
                                        delegatingNode = node15;
                                        ?? r82 = 0;
                                        while (delegatingNode != 0) {
                                            if (delegatingNode instanceof IndirectPointerInputModifierNode) {
                                                break loop26;
                                            }
                                            if ((delegatingNode.l & 2097152) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                                Modifier.Node node16 = delegatingNode.y;
                                                int i13 = 0;
                                                delegatingNode = delegatingNode;
                                                r82 = r82;
                                                while (node16 != null) {
                                                    if ((node16.l & 2097152) != 0) {
                                                        i13++;
                                                        r82 = r82;
                                                        if (i13 == 1) {
                                                            delegatingNode = node16;
                                                        } else {
                                                            if (r82 == 0) {
                                                                r82 = new MutableVector(new Modifier.Node[16]);
                                                            }
                                                            if (delegatingNode != 0) {
                                                                r82.b(delegatingNode);
                                                                delegatingNode = 0;
                                                            }
                                                            r82.b(node16);
                                                        }
                                                    }
                                                    node16 = node16.o;
                                                    delegatingNode = delegatingNode;
                                                    r82 = r82;
                                                }
                                                if (i13 == 1) {
                                                }
                                            }
                                            delegatingNode = DelegatableNodeKt.b(r82);
                                        }
                                    }
                                    node15 = node15.n;
                                }
                            }
                            g7 = g7.w();
                            if (g7 != null && (nodeChain2 = g7.O) != null) {
                                node15 = nodeChain2.e;
                            } else {
                                node15 = null;
                            }
                        } else {
                            delegatingNode = 0;
                            break;
                        }
                    }
                    indirectPointerInputModifierNode = (IndirectPointerInputModifierNode) delegatingNode;
                } else {
                    indirectPointerInputModifierNode = null;
                }
                if (indirectPointerInputModifierNode != null) {
                    Modifier.Node node17 = (Modifier.Node) indirectPointerInputModifierNode;
                    if (!node17.j.w) {
                        InlineClassHelperKt.b("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node18 = node17.j.n;
                    LayoutNode g8 = DelegatableNodeKt.g(indirectPointerInputModifierNode);
                    ArrayList arrayList4 = null;
                    while (g8 != null) {
                        if ((g8.O.f.m & 2097152) != 0) {
                            while (node18 != null) {
                                if ((node18.l & 2097152) != 0) {
                                    Modifier.Node node19 = node18;
                                    MutableVector mutableVector3 = null;
                                    while (node19 != null) {
                                        if (node19 instanceof IndirectPointerInputModifierNode) {
                                            if (arrayList4 == null) {
                                                arrayList4 = new ArrayList();
                                            }
                                            arrayList4.add(node19);
                                            z = false;
                                        } else {
                                            z = true;
                                        }
                                        if (z && (node19.l & 2097152) != 0 && (node19 instanceof DelegatingNode)) {
                                            int i14 = 0;
                                            for (Modifier.Node node20 = ((DelegatingNode) node19).y; node20 != null; node20 = node20.o) {
                                                if ((node20.l & 2097152) != 0) {
                                                    i14++;
                                                    if (i14 == 1) {
                                                        node19 = node20;
                                                    } else {
                                                        if (mutableVector3 == null) {
                                                            mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                                        }
                                                        if (node19 != null) {
                                                            mutableVector3.b(node19);
                                                            node19 = null;
                                                        }
                                                        mutableVector3.b(node20);
                                                    }
                                                }
                                            }
                                            if (i14 == 1) {
                                            }
                                        }
                                        node19 = DelegatableNodeKt.b(mutableVector3);
                                    }
                                }
                                node18 = node18.n;
                            }
                        }
                        g8 = g8.w();
                        if (g8 != null && (nodeChain = g8.O) != null) {
                            node18 = nodeChain.e;
                        } else {
                            node18 = null;
                        }
                    }
                    indirectPointerInputModifierNode.k0();
                    if (arrayList4 != null) {
                        int size7 = arrayList4.size();
                        for (int i15 = 0; i15 < size7; i15++) {
                            ((IndirectPointerInputModifierNode) arrayList4.get(i15)).k0();
                        }
                    }
                }
                indirectPointerNavigationGestureDetector.b = 0;
                indirectPointerNavigationGestureDetector.c = true;
                return true;
            }
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x015f, code lost:
    
        if (o(r25) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00d6, code lost:
    
        r10 = Integer.MIN_VALUE;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        boolean z4 = this.G0;
        s0 s0Var = this.F0;
        if (z4) {
            removeCallbacks(s0Var);
            s0Var.run();
        }
        if (!m(motionEvent) && isAttachedToWindow()) {
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.F;
            AndroidComposeView androidComposeView = androidComposeViewAccessibilityDelegateCompat.m;
            android.view.accessibility.AccessibilityManager accessibilityManager = androidComposeViewAccessibilityDelegateCompat.p;
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                int action = motionEvent.getAction();
                if (action != 7 && action != 9) {
                    if (action != 10) {
                        z2 = false;
                    } else {
                        int i2 = androidComposeViewAccessibilityDelegateCompat.n;
                        if (i2 != Integer.MIN_VALUE) {
                            if (i2 != Integer.MIN_VALUE) {
                                androidComposeViewAccessibilityDelegateCompat.n = Integer.MIN_VALUE;
                                AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, Integer.MIN_VALUE, 128, null, 12);
                                AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i2, 256, null, 12);
                            }
                            z2 = true;
                            z = true;
                        } else {
                            z2 = androidComposeView.getAndroidViewsHandler$ui().dispatchGenericMotionEvent(motionEvent);
                        }
                    }
                    z = true;
                } else {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    androidComposeView.r(true);
                    HitTestResult hitTestResult = new HitTestResult();
                    z = true;
                    long floatToRawIntBits = (Float.floatToRawIntBits(x) << 32) | (Float.floatToRawIntBits(y) & 4294967295L);
                    NodeChain nodeChain = androidComposeView.getRoot().O;
                    NodeCoordinator nodeCoordinator = nodeChain.d;
                    la laVar = NodeCoordinator.e0;
                    nodeChain.d.j1(NodeCoordinator.k0, nodeCoordinator.a1(floatToRawIntBits), hitTestResult, 1, true);
                    MutableObjectList mutableObjectList = hitTestResult.j;
                    int i3 = mutableObjectList.b;
                    while (true) {
                        i3--;
                        if (-1 >= i3) {
                            break;
                        }
                        Object b = mutableObjectList.b(i3);
                        b.getClass();
                        LayoutNode g = DelegatableNodeKt.g((Modifier.Node) b);
                        if (androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().get(g) == null) {
                            if (g.O.d(8)) {
                                i = androidComposeViewAccessibilityDelegateCompat.A(g.k);
                                SemanticsNode a = SemanticsNodeKt.a(g, false);
                                if (SemanticsOwnerKt.f(a) && !SemanticsNode_androidKt.a(a)) {
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    boolean dispatchGenericMotionEvent = androidComposeView.getAndroidViewsHandler$ui().dispatchGenericMotionEvent(motionEvent);
                    int i4 = androidComposeViewAccessibilityDelegateCompat.n;
                    if (i4 != i) {
                        androidComposeViewAccessibilityDelegateCompat.n = i;
                        AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i, 128, null, 12);
                        AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i4, 256, null, 12);
                    }
                    if (i == Integer.MIN_VALUE) {
                        z2 = dispatchGenericMotionEvent;
                    } else {
                        z2 = true;
                    }
                }
            } else {
                z = true;
                z2 = false;
            }
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 7) {
                if (actionMasked != 10 || !n(motionEvent)) {
                    z3 = z;
                    if ((i(motionEvent) & z3) != 0 || z2) {
                        return z3;
                    }
                } else {
                    if (motionEvent.getToolType(0) != 3 || motionEvent.getButtonState() == 0) {
                        MotionEvent motionEvent2 = this.w0;
                        if (motionEvent2 != null) {
                            motionEvent2.recycle();
                        }
                        this.w0 = MotionEvent.obtainNoHistory(motionEvent);
                        this.G0 = z;
                        postDelayed(s0Var, 8L);
                        return z2;
                    }
                    return z2;
                }
            } else {
                z3 = z;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i = 0;
        if (isFocused()) {
            LazyWindowInfo lazyWindowInfo = getComposeViewContext().t;
            int metaState = keyEvent.getMetaState();
            lazyWindowInfo.getClass();
            ((SnapshotMutableStateImpl) WindowInfoImpl.a).setValue(new PointerKeyboardModifiers(metaState));
            if (!((FocusOwnerImpl) getFocusOwner()).e(keyEvent, new j6(20)) && !super.dispatchKeyEvent(keyEvent)) {
                return false;
            }
            return true;
        }
        return ((FocusOwnerImpl) getFocusOwner()).e(keyEvent, new p0(i, this, keyEvent));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        NodeChain nodeChain;
        if (isFocused()) {
            FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) getFocusOwner();
            if (focusOwnerImpl.d.e) {
                System.out.println((Object) "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated.");
            } else {
                FocusTargetNode a = FocusTraversalKt.a(focusOwnerImpl.c);
                if (a != null) {
                    if (!a.j.w) {
                        InlineClassHelperKt.b("visitAncestors called on an unattached node");
                    }
                    Modifier.Node node = a.j;
                    LayoutNode g = DelegatableNodeKt.g(a);
                    while (g != null) {
                        if ((g.O.f.m & 131072) != 0) {
                            while (node != null) {
                                if ((node.l & 131072) != 0) {
                                    Modifier.Node node2 = node;
                                    MutableVector mutableVector = null;
                                    while (node2 != null) {
                                        if ((node2.l & 131072) != 0 && (node2 instanceof DelegatingNode)) {
                                            int i = 0;
                                            for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                                if ((node3.l & 131072) != 0) {
                                                    i++;
                                                    if (i == 1) {
                                                        node2 = node3;
                                                    } else {
                                                        if (mutableVector == null) {
                                                            mutableVector = new MutableVector(new Modifier.Node[16]);
                                                        }
                                                        if (node2 != null) {
                                                            mutableVector.b(node2);
                                                            node2 = null;
                                                        }
                                                        mutableVector.b(node3);
                                                    }
                                                }
                                            }
                                            if (i == 1) {
                                            }
                                        }
                                        node2 = DelegatableNodeKt.b(mutableVector);
                                    }
                                }
                                node = node.n;
                            }
                        }
                        g = g.w();
                        if (g != null && (nodeChain = g.O) != null) {
                            node = nodeChain.e;
                        } else {
                            node = null;
                        }
                    }
                }
            }
        }
        if (!super.dispatchKeyEventPreIme(keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        this.N0 = true;
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            this.N0 = false;
            z(viewStructure);
        } catch (Throwable th) {
            this.N0 = false;
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        View view;
        Object autoClearFocusBehavior;
        FocusTargetNode g;
        if (this.G0) {
            s0 s0Var = this.F0;
            removeCallbacks(s0Var);
            MotionEvent motionEvent2 = this.w0;
            motionEvent2.getClass();
            if (motionEvent.getActionMasked() == 0 && motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) {
                this.G0 = false;
            } else {
                s0Var.run();
            }
        }
        if (!m(motionEvent) && isAttachedToWindow() && (motionEvent.getActionMasked() != 2 || o(motionEvent))) {
            int i = i(motionEvent);
            int i2 = 1;
            if ((i & 2) != 0) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (motionEvent.getActionMasked() != 0 && motionEvent.getActionMasked() != 5) {
                z = false;
            } else {
                z = true;
            }
            if (!motionEvent.isFromSource(8194) && !motionEvent.isFromSource(1048584)) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z && z2) {
                Object parent = getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                } else {
                    view = null;
                }
                if (view == null || (autoClearFocusBehavior = view.getTag(R.id.auto_clear_focus_behavior_tag)) == null) {
                    autoClearFocusBehavior = new AutoClearFocusBehavior(i2);
                }
                if (autoClearFocusBehavior.equals(new AutoClearFocusBehavior(i2)) && (g = ((FocusOwnerImpl) getFocusOwner()).g()) != null) {
                    NodeCoordinator f = DelegatableNodeKt.f(g);
                    if (!LayoutCoordinatesKt.c(f).l(f, true).a((Float.floatToRawIntBits(motionEvent.getX()) << 32) | (Float.floatToRawIntBits(motionEvent.getY()) & 4294967295L))) {
                        FocusManager.a(getFocusOwner());
                    }
                }
            }
            if ((i & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    public final OwnedLayer f(Function2 function2, fc fcVar, GraphicsLayer graphicsLayer) {
        MutableVector mutableVector;
        Reference poll;
        Object obj;
        if (graphicsLayer != null) {
            return new GraphicsLayerOwnerLayer(graphicsLayer, null, this, function2, fcVar);
        }
        do {
            WeakCache weakCache = this.y0;
            ReferenceQueue referenceQueue = weakCache.b;
            mutableVector = weakCache.a;
            poll = referenceQueue.poll();
            if (poll != null) {
                mutableVector.j(poll);
            }
        } while (poll != null);
        while (true) {
            int i = mutableVector.l;
            if (i != 0) {
                obj = ((Reference) mutableVector.k(i - 1)).get();
                if (obj != null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        OwnedLayer ownedLayer = (OwnedLayer) obj;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            GraphicsContext graphicsContext = graphicsLayerOwnerLayer.k;
            if (graphicsContext != null) {
                if (!graphicsLayerOwnerLayer.j.s) {
                    InlineClassHelperKt.a("layer should have been released before reuse");
                }
                graphicsLayerOwnerLayer.j = graphicsContext.b();
                graphicsLayerOwnerLayer.p = false;
                graphicsLayerOwnerLayer.m = function2;
                graphicsLayerOwnerLayer.n = fcVar;
                graphicsLayerOwnerLayer.z = false;
                graphicsLayerOwnerLayer.A = false;
                graphicsLayerOwnerLayer.B = true;
                androidx.compose.ui.graphics.Matrix.d(graphicsLayerOwnerLayer.q);
                float[] fArr = graphicsLayerOwnerLayer.r;
                if (fArr != null) {
                    androidx.compose.ui.graphics.Matrix.d(fArr);
                }
                graphicsLayerOwnerLayer.x = TransformOrigin.b;
                graphicsLayerOwnerLayer.C = false;
                graphicsLayerOwnerLayer.o = 9223372034707292159L;
                graphicsLayerOwnerLayer.y = null;
                graphicsLayerOwnerLayer.w = 0;
                return ownedLayer;
            }
            throw q.p("currently reuse is only supported when we manage the layer lifecycle");
        }
        return new GraphicsLayerOwnerLayer(getGraphicsContext().b(), getGraphicsContext(), this, function2, fcVar);
    }

    public final View findViewByAccessibilityIdTraversal(int i) {
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(this, Integer.valueOf(i));
                if (invoke instanceof View) {
                    return (View) invoke;
                }
                return null;
            }
            return Companion.a(this, i);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        int i2;
        if (view != null && !this.c0.c) {
            View rootView = getRootView();
            rootView.getClass();
            View findNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) rootView, view, i);
            Rect rect = null;
            if (findNextFocus == null || !AndroidComposeView_androidKt.a(this, findNextFocus)) {
                findNextFocus = null;
            }
            if (view == this) {
                FocusTargetNode a = FocusTraversalKt.a(((FocusOwnerImpl) getFocusOwner()).c);
                if (a != null) {
                    rect = FocusTraversalKt.b(a);
                }
                if (rect == null) {
                    rect = FocusInteropUtils_androidKt.a(view, this);
                }
            } else {
                rect = FocusInteropUtils_androidKt.a(view, this);
            }
            FocusDirection d = FocusInteropUtils_androidKt.d(i);
            if (d != null) {
                i2 = d.a;
            } else {
                i2 = 6;
            }
            ?? obj = new Object();
            if (((FocusOwnerImpl) getFocusOwner()).f(i2, rect, new o0(obj, 0)) == null) {
                return view;
            }
            Object obj2 = obj.j;
            if (obj2 == null) {
                if (findNextFocus == null) {
                    return super.focusSearch(view, i);
                }
            } else if (findNextFocus == null || i2 == 1 || i2 == 2 || TwoDimensionalFocusSearchKt.g(FocusTraversalKt.b((FocusTargetNode) obj2), FocusInteropUtils_androidKt.a(findNextFocus, this), rect, i2)) {
                return this;
            }
            return findNextFocus;
        }
        return super.focusSearch(view, i);
    }

    public final void g(LayoutNode layoutNode, boolean z) {
        this.c0.g(layoutNode, z);
    }

    @Override // androidx.compose.ui.node.Owner
    public AccessibilityManager getAccessibilityManager() {
        return getComposeViewContext().k;
    }

    public final AndroidViewsHandler getAndroidViewsHandler$ui() {
        if (this.W == null) {
            AndroidViewsHandler androidViewsHandler = new AndroidViewsHandler(getContext());
            this.W = androidViewsHandler;
            addView(androidViewsHandler, -1);
            requestLayout();
        }
        AndroidViewsHandler androidViewsHandler2 = this.W;
        androidViewsHandler2.getClass();
        return androidViewsHandler2;
    }

    @Override // androidx.compose.ui.node.Owner
    public AutofillTree getAutofillTree() {
        return this.I;
    }

    @Override // androidx.compose.ui.node.Owner
    public Clipboard getClipboard() {
        return getComposeViewContext().n;
    }

    @Override // androidx.compose.ui.node.Owner
    public ClipboardManager getClipboardManager() {
        return getComposeViewContext().m;
    }

    public final ComposeViewContext getComposeViewContext() {
        return get_composeViewContext();
    }

    public final boolean getComposeViewContextIncrementedDuringInit$ui() {
        return this.M0;
    }

    public final Configuration getConfiguration() {
        return (Configuration) ((SnapshotMutableStateImpl) this.P).getValue();
    }

    public final AndroidContentCaptureManager getContentCaptureManager$ui() {
        return this.G;
    }

    @Override // androidx.compose.ui.node.Owner
    public CoroutineContext getCoroutineContext() {
        return this.w;
    }

    @Override // androidx.compose.ui.node.Owner
    public Density getDensity() {
        return (Density) ((SnapshotMutableStateImpl) this.t).getValue();
    }

    @Override // androidx.compose.ui.focus.PlatformFocusOwner
    public Rect getEmbeddedViewFocusRect() {
        if (isFocused()) {
            FocusTargetNode a = FocusTraversalKt.a(((FocusOwnerImpl) getFocusOwner()).c);
            if (a == null) {
                return null;
            }
            return FocusTraversalKt.b(a);
        }
        View findFocus = findFocus();
        if (findFocus == null) {
            return null;
        }
        return FocusInteropUtils_androidKt.a(findFocus, this);
    }

    @Override // androidx.compose.ui.node.Owner
    public FocusOwner getFocusOwner() {
        return this.v;
    }

    @Override // android.view.View
    public final void getFocusedRect(android.graphics.Rect rect) {
        Rect embeddedViewFocusRect = getEmbeddedViewFocusRect();
        if (embeddedViewFocusRect != null) {
            rect.left = Math.round(embeddedViewFocusRect.a);
            rect.top = Math.round(embeddedViewFocusRect.b);
            rect.right = Math.round(embeddedViewFocusRect.c);
            rect.bottom = Math.round(embeddedViewFocusRect.d);
            return;
        }
        if (!Intrinsics.a(((FocusOwnerImpl) getFocusOwner()).f(6, null, new h(3)), Boolean.TRUE)) {
            rect.set(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public FontFamily.Resolver getFontFamilyResolver() {
        return (FontFamily.Resolver) this.r0.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public Font.ResourceLoader getFontLoader() {
        return getComposeViewContext().o;
    }

    public final LifecycleRetainedValuesStoreOwner.FrameEndScheduler getFrameEndScheduler$ui() {
        return this.n;
    }

    @Override // androidx.compose.ui.node.Owner
    public GraphicsContext getGraphicsContext() {
        return this.H;
    }

    @Override // androidx.compose.ui.node.Owner
    public HapticFeedback getHapticFeedBack() {
        return getComposeViewContext().q;
    }

    public boolean getHasPendingMeasureOrLayout() {
        if (!this.c0.b.c() && this.r.isEmpty()) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public int getImportantForAutofill() {
        return 1;
    }

    @Override // androidx.compose.ui.node.Owner
    public InputModeManagerImpl getInputModeManager() {
        int i;
        InputModeManagerImpl inputModeManagerImpl = this.t0;
        if (inputModeManagerImpl == null) {
            if (isInTouchMode()) {
                i = 1;
            } else {
                i = 2;
            }
            inputModeManagerImpl = new InputModeManagerImpl(i);
            this.t0 = inputModeManagerImpl;
        }
        return inputModeManagerImpl;
    }

    public final InsetsListener getInsetsListener() {
        return this.A;
    }

    public final long getLastMatrixRecalculationAnimationTime$ui() {
        return this.j0;
    }

    @Override // android.view.View, android.view.ViewParent, androidx.compose.ui.node.Owner
    public LayoutDirection getLayoutDirection() {
        return (LayoutDirection) ((SnapshotMutableStateImpl) this.s0).getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public LocaleList getLocaleList() {
        return (LocaleList) this.Q.getValue();
    }

    public long getMeasureIteration() {
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.c0;
        if (!measureAndLayoutDelegate.c) {
            InlineClassHelperKt.a("measureIteration should be only used during the measure/layout pass");
        }
        return measureAndLayoutDelegate.g;
    }

    @Override // androidx.compose.ui.node.Owner
    public ModifierLocalManager getModifierLocalManager() {
        return this.u0;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidComposeView getOutOfFrameExecutor() {
        if (isAttachedToWindow()) {
            return this;
        }
        return null;
    }

    @Override // androidx.compose.ui.node.Owner
    public Placeable.PlacementScope getPlacementScope() {
        return PlaceableKt.b(this);
    }

    public final Function2<FocusDirection, Boolean, Unit> getPlayNavigationSoundEffect$ui() {
        return this.H0;
    }

    @Override // androidx.compose.ui.node.Owner
    public PointerIconService getPointerIconService() {
        return this.Q0;
    }

    /* renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui, reason: not valid java name */
    public final IndirectPointerEventPrimaryDirectionalMotionAxis m3getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui() {
        return this.m;
    }

    @Override // androidx.compose.ui.node.Owner
    public RectManager getRectManager() {
        return this.D;
    }

    @Override // androidx.compose.ui.node.Owner
    public RetainedValuesStore getRetainedValuesStore() {
        return this.q;
    }

    @Override // androidx.compose.ui.node.Owner
    public LayoutNode getRoot() {
        return this.B;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DisposableSaveableStateRegistry getSavedStateRegistry() {
        String str;
        boolean z;
        DisposableSaveableStateRegistry disposableSaveableStateRegistry = this.p;
        if (disposableSaveableStateRegistry == null) {
            ComposeViewContext composeViewContext = getComposeViewContext();
            composeViewContext.g();
            SavedStateRegistryOwner savedStateRegistryOwner = composeViewContext.e;
            savedStateRegistryOwner.getClass();
            ViewParent parent = getParent();
            parent.getClass();
            View view = (View) parent;
            Object tag = view.getTag(R.id.compose_view_saveable_id_tag);
            LinkedHashMap linkedHashMap = null;
            if (tag instanceof String) {
                str = (String) tag;
            } else {
                str = null;
            }
            if (str == null) {
                str = String.valueOf(view.getId());
            }
            String f = jb.f("SaveableStateRegistry:", str);
            SavedStateRegistry f2 = savedStateRegistryOwner.f();
            Bundle a = f2.a(f);
            if (a != null) {
                linkedHashMap = new LinkedHashMap();
                for (String str2 : a.keySet()) {
                    ArrayList parcelableArrayList = a.getParcelableArrayList(str2);
                    parcelableArrayList.getClass();
                    linkedHashMap.put(str2, parcelableArrayList);
                }
            }
            SaveableStateRegistry a2 = SaveableStateRegistryKt.a(linkedHashMap, new a7(6));
            int i = 0;
            if (f2.b(f) == null) {
                try {
                    z = true;
                    f2.c(f, new i5(1 == true ? 1 : 0, a2));
                } catch (IllegalArgumentException unused) {
                }
                DisposableSaveableStateRegistry disposableSaveableStateRegistry2 = new DisposableSaveableStateRegistry(a2, new x7(i, f2, f, z));
                this.p = disposableSaveableStateRegistry2;
                return disposableSaveableStateRegistry2;
            }
            z = false;
            DisposableSaveableStateRegistry disposableSaveableStateRegistry22 = new DisposableSaveableStateRegistry(a2, new x7(i, f2, f, z));
            this.p = disposableSaveableStateRegistry22;
            return disposableSaveableStateRegistry22;
        }
        return disposableSaveableStateRegistry;
    }

    public final boolean getScrollCaptureInProgress() {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT >= 31 && (scrollCapture = this.O0) != null && ((Boolean) ((SnapshotMutableStateImpl) scrollCapture.a).getValue()).booleanValue()) {
            return true;
        }
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof AndroidComposeView) {
                return ((AndroidComposeView) parent).getScrollCaptureInProgress();
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.node.Owner
    public SemanticsOwner getSemanticsOwner() {
        return this.E;
    }

    @Override // androidx.compose.ui.node.Owner
    public LayoutNodeDrawScope getSharedDrawScope() {
        return getComposeViewContext().s;
    }

    @Override // androidx.compose.ui.node.Owner
    public boolean getShowLayoutBounds() {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.a.a(this);
        }
        return this.V;
    }

    @Override // androidx.compose.ui.node.Owner
    public OwnerSnapshotObserver getSnapshotObserver() {
        return this.U;
    }

    @Override // androidx.compose.ui.node.Owner
    public SoftwareKeyboardController getSoftwareKeyboardController() {
        DelegatingSoftwareKeyboardController delegatingSoftwareKeyboardController = this.q0;
        if (delegatingSoftwareKeyboardController == null) {
            DelegatingSoftwareKeyboardController delegatingSoftwareKeyboardController2 = new DelegatingSoftwareKeyboardController(getTextInputService());
            this.q0 = delegatingSoftwareKeyboardController2;
            return delegatingSoftwareKeyboardController2;
        }
        return delegatingSoftwareKeyboardController;
    }

    @Override // androidx.compose.ui.node.Owner
    public TextInputService getTextInputService() {
        TextInputService textInputService = this.o0;
        if (textInputService == null) {
            TextInputService textInputService2 = new TextInputService(getLegacyTextInputServiceAndroid());
            this.o0 = textInputService2;
            return textInputService2;
        }
        return textInputService;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.platform.TextToolbar, androidx.compose.ui.platform.AndroidTextToolbar, java.lang.Object] */
    @Override // androidx.compose.ui.node.Owner
    public TextToolbar getTextToolbar() {
        AndroidTextToolbar androidTextToolbar = this.v0;
        if (androidTextToolbar == null) {
            ?? obj = new Object();
            new r1(3, obj);
            TextToolbarStatus[] textToolbarStatusArr = TextToolbarStatus.j;
            this.v0 = obj;
            return obj;
        }
        return androidTextToolbar;
    }

    public final RootForTest.UncaughtExceptionHandler getUncaughtExceptionHandler$ui() {
        return null;
    }

    @Override // androidx.compose.ui.node.Owner
    public ViewConfiguration getViewConfiguration() {
        return getComposeViewContext().r;
    }

    @Override // androidx.compose.ui.node.Owner
    public WindowInfo getWindowInfo() {
        return getComposeViewContext().t;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0198 A[Catch: all -> 0x01b3, TryCatch #2 {all -> 0x01b3, blocks: (B:91:0x0184, B:97:0x018e, B:99:0x0192, B:101:0x0198, B:102:0x01a2, B:106:0x019b), top: B:90:0x0184 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x019b A[Catch: all -> 0x01b3, TryCatch #2 {all -> 0x01b3, blocks: (B:91:0x0184, B:97:0x018e, B:99:0x0192, B:101:0x0198, B:102:0x01a2, B:106:0x019b), top: B:90:0x0184 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0053 A[Catch: all -> 0x007b, TryCatch #3 {all -> 0x007b, blocks: (B:121:0x0039, B:123:0x0043, B:128:0x0053, B:131:0x0082, B:13:0x0085, B:21:0x0098, B:23:0x009e, B:88:0x0174, B:89:0x0180, B:132:0x005b, B:138:0x0067, B:141:0x006f), top: B:120:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ce A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:5:0x001d, B:7:0x0026, B:25:0x00aa, B:26:0x00b1, B:33:0x00c2, B:35:0x00ca, B:37:0x00ce, B:38:0x00d1, B:40:0x00d5, B:42:0x00db, B:44:0x00df, B:45:0x00e5, B:48:0x00ed, B:51:0x00f5, B:52:0x0101, B:54:0x0107, B:56:0x010d, B:58:0x0113, B:59:0x0119, B:61:0x011d, B:62:0x0121, B:67:0x0134, B:69:0x0138, B:70:0x013f, B:76:0x0150, B:77:0x015a, B:79:0x0160, B:80:0x0163, B:86:0x016a), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00df A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:5:0x001d, B:7:0x0026, B:25:0x00aa, B:26:0x00b1, B:33:0x00c2, B:35:0x00ca, B:37:0x00ce, B:38:0x00d1, B:40:0x00d5, B:42:0x00db, B:44:0x00df, B:45:0x00e5, B:48:0x00ed, B:51:0x00f5, B:52:0x0101, B:54:0x0107, B:56:0x010d, B:58:0x0113, B:59:0x0119, B:61:0x011d, B:62:0x0121, B:67:0x0134, B:69:0x0138, B:70:0x013f, B:76:0x0150, B:77:0x015a, B:79:0x0160, B:80:0x0163, B:86:0x016a), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0113 A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:5:0x001d, B:7:0x0026, B:25:0x00aa, B:26:0x00b1, B:33:0x00c2, B:35:0x00ca, B:37:0x00ce, B:38:0x00d1, B:40:0x00d5, B:42:0x00db, B:44:0x00df, B:45:0x00e5, B:48:0x00ed, B:51:0x00f5, B:52:0x0101, B:54:0x0107, B:56:0x010d, B:58:0x0113, B:59:0x0119, B:61:0x011d, B:62:0x0121, B:67:0x0134, B:69:0x0138, B:70:0x013f, B:76:0x0150, B:77:0x015a, B:79:0x0160, B:80:0x0163, B:86:0x016a), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x011d A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:5:0x001d, B:7:0x0026, B:25:0x00aa, B:26:0x00b1, B:33:0x00c2, B:35:0x00ca, B:37:0x00ce, B:38:0x00d1, B:40:0x00d5, B:42:0x00db, B:44:0x00df, B:45:0x00e5, B:48:0x00ed, B:51:0x00f5, B:52:0x0101, B:54:0x0107, B:56:0x010d, B:58:0x0113, B:59:0x0119, B:61:0x011d, B:62:0x0121, B:67:0x0134, B:69:0x0138, B:70:0x013f, B:76:0x0150, B:77:0x015a, B:79:0x0160, B:80:0x0163, B:86:0x016a), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0138 A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:5:0x001d, B:7:0x0026, B:25:0x00aa, B:26:0x00b1, B:33:0x00c2, B:35:0x00ca, B:37:0x00ce, B:38:0x00d1, B:40:0x00d5, B:42:0x00db, B:44:0x00df, B:45:0x00e5, B:48:0x00ed, B:51:0x00f5, B:52:0x0101, B:54:0x0107, B:56:0x010d, B:58:0x0113, B:59:0x0119, B:61:0x011d, B:62:0x0121, B:67:0x0134, B:69:0x0138, B:70:0x013f, B:76:0x0150, B:77:0x015a, B:79:0x0160, B:80:0x0163, B:86:0x016a), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0150 A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:5:0x001d, B:7:0x0026, B:25:0x00aa, B:26:0x00b1, B:33:0x00c2, B:35:0x00ca, B:37:0x00ce, B:38:0x00d1, B:40:0x00d5, B:42:0x00db, B:44:0x00df, B:45:0x00e5, B:48:0x00ed, B:51:0x00f5, B:52:0x0101, B:54:0x0107, B:56:0x010d, B:58:0x0113, B:59:0x0119, B:61:0x011d, B:62:0x0121, B:67:0x0134, B:69:0x0138, B:70:0x013f, B:76:0x0150, B:77:0x015a, B:79:0x0160, B:80:0x0163, B:86:0x016a), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0160 A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:5:0x001d, B:7:0x0026, B:25:0x00aa, B:26:0x00b1, B:33:0x00c2, B:35:0x00ca, B:37:0x00ce, B:38:0x00d1, B:40:0x00d5, B:42:0x00db, B:44:0x00df, B:45:0x00e5, B:48:0x00ed, B:51:0x00f5, B:52:0x0101, B:54:0x0107, B:56:0x010d, B:58:0x0113, B:59:0x0119, B:61:0x011d, B:62:0x0121, B:67:0x0134, B:69:0x0138, B:70:0x013f, B:76:0x0150, B:77:0x015a, B:79:0x0160, B:80:0x0163, B:86:0x016a), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0163 A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:5:0x001d, B:7:0x0026, B:25:0x00aa, B:26:0x00b1, B:33:0x00c2, B:35:0x00ca, B:37:0x00ce, B:38:0x00d1, B:40:0x00d5, B:42:0x00db, B:44:0x00df, B:45:0x00e5, B:48:0x00ed, B:51:0x00f5, B:52:0x0101, B:54:0x0107, B:56:0x010d, B:58:0x0113, B:59:0x0119, B:61:0x011d, B:62:0x0121, B:67:0x0134, B:69:0x0138, B:70:0x013f, B:76:0x0150, B:77:0x015a, B:79:0x0160, B:80:0x0163, B:86:0x016a), top: B:4:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0174 A[Catch: all -> 0x007b, TRY_ENTER, TryCatch #3 {all -> 0x007b, blocks: (B:121:0x0039, B:123:0x0043, B:128:0x0053, B:131:0x0082, B:13:0x0085, B:21:0x0098, B:23:0x009e, B:88:0x0174, B:89:0x0180, B:132:0x005b, B:138:0x0067, B:141:0x006f), top: B:120:0x0039 }] */
    /* JADX WARN: Type inference failed for: r9v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int i(MotionEvent motionEvent) {
        ?? obj;
        int actionMasked;
        MotionEvent motionEvent2;
        boolean z;
        PointerInputEventProcessor pointerInputEventProcessor;
        boolean z2;
        int actionMasked2;
        MotionEvent motionEvent3;
        boolean z3;
        AndroidComposeView androidComposeView;
        int i;
        boolean z4;
        MotionEvent motionEvent4;
        int H;
        HitPathTracker hitPathTracker;
        AndroidComposeView androidComposeView2;
        MotionEvent motionEvent5;
        int i2;
        int action;
        MotionEvent motionEvent6;
        float f;
        MotionEvent motionEvent7;
        float x;
        boolean z5;
        MotionEvent motionEvent8;
        long j;
        boolean z6;
        HitPathTracker hitPathTracker2;
        AndroidComposeView androidComposeView3 = this;
        androidComposeView3.removeCallbacks(androidComposeView3.E0);
        try {
            B(motionEvent);
            androidComposeView3.k0 = true;
            androidComposeView3.r(false);
            obj = new Object();
            Trace.beginSection("AndroidOwner:onTouch");
            try {
                actionMasked = motionEvent.getActionMasked();
                motionEvent2 = androidComposeView3.w0;
                if (motionEvent2 != null && motionEvent2.getToolType(0) == 3) {
                    z = true;
                } else {
                    z = false;
                }
                pointerInputEventProcessor = androidComposeView3.O;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (motionEvent2 != null) {
                try {
                    if (motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) {
                        z2 = false;
                        if (z2) {
                            if (motionEvent2.getButtonState() != 0 || (actionMasked2 = motionEvent2.getActionMasked()) == 0 || actionMasked2 == 2 || actionMasked2 == 6) {
                                motionEvent3 = motionEvent2;
                                pointerInputEventProcessor.b();
                            } else if (motionEvent2.getActionMasked() != 10 && z) {
                                androidComposeView3.I(motionEvent2, 10, motionEvent2.getEventTime(), true);
                                motionEvent3 = motionEvent2;
                            }
                            if (motionEvent.getToolType(0) != 3) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (z && z3 && actionMasked != 3 && actionMasked != 9 && n(motionEvent)) {
                                i = 9;
                                androidComposeView = this;
                                androidComposeView.I(motionEvent, 9, motionEvent.getEventTime(), true);
                            } else {
                                androidComposeView = this;
                                i = 9;
                            }
                            if (motionEvent.getButtonState() == 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (actionMasked == 8 && !z4 && motionEvent3 != null && !motionEvent3.isFromSource(4098)) {
                                obj.j = true;
                            }
                            if (motionEvent3 != null) {
                                motionEvent3.recycle();
                            }
                            motionEvent4 = androidComposeView.w0;
                            if (motionEvent4 != null && motionEvent4.getAction() == 10) {
                                motionEvent5 = androidComposeView.w0;
                                if (motionEvent5 == null) {
                                    i2 = motionEvent5.getPointerId(0);
                                } else {
                                    i2 = -1;
                                }
                                action = motionEvent.getAction();
                                MotionEventAdapter motionEventAdapter = androidComposeView.N;
                                if (action != i && motionEvent.getHistorySize() == 0) {
                                    if (i2 >= 0) {
                                        motionEventAdapter.c.delete(i2);
                                        motionEventAdapter.b.delete(i2);
                                    }
                                } else if (motionEvent.getAction() == 0 && motionEvent.getHistorySize() == 0) {
                                    motionEvent6 = androidComposeView.w0;
                                    float f2 = Float.NaN;
                                    if (motionEvent6 == null) {
                                        f = motionEvent6.getX();
                                    } else {
                                        f = Float.NaN;
                                    }
                                    motionEvent7 = androidComposeView.w0;
                                    if (motionEvent7 != null) {
                                        f2 = motionEvent7.getY();
                                    }
                                    x = motionEvent.getX();
                                    float y = motionEvent.getY();
                                    if (f != x && f2 == y) {
                                        z5 = false;
                                    } else {
                                        z5 = true;
                                    }
                                    motionEvent8 = androidComposeView.w0;
                                    if (motionEvent8 == null) {
                                        j = motionEvent8.getEventTime();
                                    } else {
                                        j = -1;
                                    }
                                    if (j == motionEvent.getEventTime()) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    if (!z5 || z6) {
                                        if (i2 >= 0) {
                                            motionEventAdapter.c.delete(i2);
                                            motionEventAdapter.b.delete(i2);
                                        }
                                        hitPathTracker2 = pointerInputEventProcessor.b;
                                        if (!hitPathTracker2.d) {
                                            hitPathTracker2.d = true;
                                        } else {
                                            hitPathTracker2.g.a.g();
                                        }
                                    }
                                }
                            }
                            androidComposeView.w0 = MotionEvent.obtainNoHistory(motionEvent);
                            if (obj.j) {
                                androidComposeView.I(motionEvent, 10, motionEvent.getEventTime(), true);
                            }
                            H = H(motionEvent);
                            Trace.endSection();
                            if ((H & 4) != 0 || !obj.j) {
                                androidComposeView2 = this;
                            } else {
                                hitPathTracker = pointerInputEventProcessor.b;
                                if (!hitPathTracker.d) {
                                    hitPathTracker.d = true;
                                } else {
                                    hitPathTracker.g.a.g();
                                }
                                androidComposeView2 = this;
                                androidComposeView2.I(motionEvent, 9, motionEvent.getEventTime(), true);
                            }
                            androidComposeView2.k0 = false;
                            return H;
                        }
                    }
                    z2 = true;
                    if (z2) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    Trace.endSection();
                    throw th;
                }
            }
            Trace.endSection();
            if ((H & 4) != 0) {
                hitPathTracker = pointerInputEventProcessor.b;
                if (!hitPathTracker.d) {
                }
                androidComposeView2 = this;
                androidComposeView2.I(motionEvent, 9, motionEvent.getEventTime(), true);
                androidComposeView2.k0 = false;
                return H;
            }
            androidComposeView2 = this;
            androidComposeView2.k0 = false;
            return H;
        } catch (Throwable th4) {
            th = th4;
            androidComposeView3 = this;
            androidComposeView3.k0 = false;
            throw th;
        }
        motionEvent3 = motionEvent2;
        if (motionEvent.getToolType(0) != 3) {
        }
        if (z) {
        }
        androidComposeView = this;
        i = 9;
        if (motionEvent.getButtonState() == 0) {
        }
        if (actionMasked == 8) {
            obj.j = true;
        }
        if (motionEvent3 != null) {
        }
        motionEvent4 = androidComposeView.w0;
        if (motionEvent4 != null) {
            motionEvent5 = androidComposeView.w0;
            if (motionEvent5 == null) {
            }
            action = motionEvent.getAction();
            MotionEventAdapter motionEventAdapter2 = androidComposeView.N;
            if (action != i) {
            }
            if (motionEvent.getAction() == 0) {
                motionEvent6 = androidComposeView.w0;
                float f22 = Float.NaN;
                if (motionEvent6 == null) {
                }
                motionEvent7 = androidComposeView.w0;
                if (motionEvent7 != null) {
                }
                x = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (f != x) {
                }
                z5 = true;
                motionEvent8 = androidComposeView.w0;
                if (motionEvent8 == null) {
                }
                if (j == motionEvent.getEventTime()) {
                }
                if (!z5) {
                }
                if (i2 >= 0) {
                }
                hitPathTracker2 = pointerInputEventProcessor.b;
                if (!hitPathTracker2.d) {
                }
            }
        }
        androidComposeView.w0 = MotionEvent.obtainNoHistory(motionEvent);
        if (obj.j) {
        }
        H = H(motionEvent);
    }

    public final void k(LayoutNode layoutNode) {
        this.c0.r(layoutNode, false);
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i = D.l;
        for (int i2 = 0; i2 < i; i2++) {
            k((LayoutNode) objArr[i2]);
        }
    }

    public final boolean n(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (0.0f <= x && x <= getWidth() && 0.0f <= y && y <= getHeight()) {
            return true;
        }
        return false;
    }

    public final boolean o(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        if (motionEvent.getPointerCount() != 1 || (motionEvent2 = this.w0) == null || motionEvent2.getPointerCount() != motionEvent.getPointerCount() || motionEvent.getRawX() != motionEvent2.getRawX() || motionEvent.getRawY() != motionEvent2.getRawY()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.lifecycle.ViewModelProvider$Factory, java.lang.Object] */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        RetainedValuesStore retainedValuesStore;
        Object obj;
        super.onAttachedToWindow();
        if (!getRoot().L()) {
            getRoot().d(this);
        }
        int i = 1;
        setAttached(true);
        if (Build.VERSION.SDK_INT < 30) {
            setShowLayoutBounds(Companion.b());
        }
        this.A.onViewAttachedToWindow(this);
        if (!this.M0) {
            getComposeViewContext().e();
        }
        int i2 = 0;
        this.M0 = false;
        k(getRoot());
        j(getRoot());
        SnapshotStateObserver snapshotStateObserver = getSnapshotObserver().a;
        snapshotStateObserver.h = Snapshot.Companion.d(snapshotStateObserver.d);
        AndroidComposeView outOfFrameExecutor = getOutOfFrameExecutor();
        if (outOfFrameExecutor != null) {
            outOfFrameExecutor.E(new n0(this, i));
            getComposeViewContext().d();
            ComposeViewContext composeViewContext = getComposeViewContext();
            composeViewContext.g();
            ViewModelStoreOwner viewModelStoreOwner = composeViewContext.f;
            LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler = this.n;
            if (viewModelStoreOwner != null && frameEndScheduler != null) {
                ViewModelStore e = viewModelStoreOwner.e();
                ?? obj2 = new Object();
                CreationExtras.Empty empty = CreationExtras.Empty.b;
                e.getClass();
                empty.getClass();
                LifecycleRetainedValuesStoreOwner lifecycleRetainedValuesStoreOwner = (LifecycleRetainedValuesStoreOwner) new ViewModelProvider(e, obj2, empty).a(Reflection.a(LifecycleRetainedValuesStoreOwner.class));
                Object parent = getParent();
                parent.getClass();
                int id = ((View) parent).getId();
                MutableIntObjectMap mutableIntObjectMap = lifecycleRetainedValuesStoreOwner.b;
                Object b = mutableIntObjectMap.b(id);
                if (b == null) {
                    b = new MutableObjectList(1);
                    mutableIntObjectMap.i(id, b);
                }
                MutableObjectList mutableObjectList = (MutableObjectList) b;
                Object[] objArr = mutableObjectList.a;
                int i3 = mutableObjectList.b;
                while (true) {
                    if (i2 < i3) {
                        obj = objArr[i2];
                        if (!((LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry) obj).c) {
                            break;
                        } else {
                            i2++;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = (LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry) obj;
                if (retainedValuesStoreEntry == null) {
                    retainedValuesStoreEntry = new LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry();
                    mutableObjectList.g(retainedValuesStoreEntry);
                }
                retainedValuesStoreEntry.c = true;
                this.o = retainedValuesStoreEntry;
                retainedValuesStore = retainedValuesStoreEntry.b;
            } else {
                retainedValuesStore = null;
            }
            if (retainedValuesStore == null) {
                retainedValuesStore = ForgetfulRetainedValuesStore.a;
            }
            this.q = retainedValuesStore;
            Function1 function1 = this.m0;
            if (function1 != null) {
                function1.b(getComposeViewContext());
                this.m0 = null;
            }
            Lifecycle g = getComposeViewContext().d().g();
            g.a(this);
            g.a(this.G);
            InputModeManagerImpl inputModeManager = getInputModeManager();
            if (!isInTouchMode()) {
                i = 2;
            }
            ((SnapshotMutableStateImpl) inputModeManager.a).setValue(new InputMode(i));
            getViewTreeObserver().addOnGlobalLayoutListener(this);
            getViewTreeObserver().addOnScrollChangedListener(this);
            getViewTreeObserver().addOnTouchModeChangeListener(this);
            if (Build.VERSION.SDK_INT >= 31) {
                AndroidComposeViewTranslationCallbackS.a.b(this);
            }
            AndroidAutofillManager autofillManager = getAutofillManager();
            if (autofillManager != null) {
                ((FocusOwnerImpl) getFocusOwner()).g.g(autofillManager);
                getSemanticsOwner().d.g(autofillManager);
            }
            ((FocusOwnerImpl) getFocusOwner()).g.g(this);
            return;
        }
        u2.l("Expected the view to be attached to window.");
    }

    @Override // android.view.View
    public final boolean onCheckIsTextEditor() {
        AndroidPlatformTextInputSession androidPlatformTextInputSession = (AndroidPlatformTextInputSession) SessionMutex.a(this.p0);
        if (androidPlatformTextInputSession == null) {
            return getLegacyTextInputServiceAndroid().d;
        }
        if (((InputMethodSession) SessionMutex.a(androidPlatformTextInputSession.m)) != null && (!r1.e)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        K(configuration);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0051  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int i;
        int i2;
        int i3;
        AndroidPlatformTextInputSession androidPlatformTextInputSession = (AndroidPlatformTextInputSession) SessionMutex.a(this.p0);
        int i4 = 1;
        if (androidPlatformTextInputSession == null) {
            TextInputServiceAndroid legacyTextInputServiceAndroid = getLegacyTextInputServiceAndroid();
            if (legacyTextInputServiceAndroid.d) {
                ImeOptions imeOptions = legacyTextInputServiceAndroid.h;
                TextFieldValue textFieldValue = legacyTextInputServiceAndroid.g;
                int i5 = imeOptions.e;
                boolean z = imeOptions.a;
                if (i5 == 1) {
                    if (!z) {
                        i = 0;
                        editorInfo.imeOptions = i;
                        i2 = imeOptions.d;
                        if (i2 == 1) {
                            editorInfo.inputType = 1;
                        } else if (i2 == 2) {
                            editorInfo.inputType = 1;
                            editorInfo.imeOptions = Integer.MIN_VALUE | i;
                        } else if (i2 == 3) {
                            editorInfo.inputType = 2;
                        } else if (i2 == 4) {
                            editorInfo.inputType = 3;
                        } else if (i2 == 5) {
                            editorInfo.inputType = 17;
                        } else if (i2 == 6) {
                            editorInfo.inputType = 33;
                        } else if (i2 == 7) {
                            editorInfo.inputType = 129;
                        } else if (i2 == 8) {
                            editorInfo.inputType = 18;
                        } else if (i2 == 9) {
                            editorInfo.inputType = 8194;
                        } else if (i2 == 10) {
                            editorInfo.inputType = 145;
                        } else if (i2 == 11) {
                            editorInfo.inputType = 113;
                        } else if (i2 == 12) {
                            editorInfo.inputType = 97;
                        } else if (i2 == 13) {
                            editorInfo.inputType = 49;
                        } else if (i2 == 14) {
                            editorInfo.inputType = 65;
                        } else if (i2 == 15) {
                            editorInfo.inputType = 81;
                        } else if (i2 == 16) {
                            editorInfo.inputType = 177;
                        } else if (i2 == 17) {
                            editorInfo.inputType = 193;
                        } else if (i2 == 18) {
                            editorInfo.inputType = 4;
                        } else if (i2 == 19) {
                            editorInfo.inputType = 20;
                        } else if (i2 == 20) {
                            editorInfo.inputType = 36;
                        } else if (i2 == 21) {
                            editorInfo.inputType = 4098;
                        } else if (i2 == 22) {
                            editorInfo.inputType = 12290;
                        } else if (i2 == 23) {
                            editorInfo.inputType = 8210;
                        } else if (i2 == 24) {
                            editorInfo.inputType = 4114;
                        } else if (i2 == 25) {
                            editorInfo.inputType = 12306;
                        } else {
                            u2.l("Invalid Keyboard Type");
                            return null;
                        }
                        if (!z) {
                            int i6 = editorInfo.inputType;
                            if ((i6 & 15) == 1) {
                                editorInfo.inputType = i6 | 131072;
                                if (i5 == 1) {
                                    editorInfo.imeOptions |= 1073741824;
                                }
                            }
                        }
                        i3 = editorInfo.inputType;
                        if ((i3 & 15) == 1) {
                            int i7 = imeOptions.b;
                            if (i7 == 1) {
                                editorInfo.inputType = i3 | 4096;
                            } else if (i7 == 2) {
                                editorInfo.inputType = i3 | 8192;
                            } else if (i7 == 3) {
                                editorInfo.inputType = i3 | 16384;
                            }
                            if (imeOptions.c) {
                                editorInfo.inputType |= 32768;
                            }
                        }
                        long j = textFieldValue.b;
                        int i8 = TextRange.c;
                        editorInfo.initialSelStart = (int) (j >> 32);
                        editorInfo.initialSelEnd = (int) (j & 4294967295L);
                        EditorInfoCompat.a(editorInfo, textFieldValue.a.k);
                        editorInfo.imeOptions |= 33554432;
                        if (EmojiCompat.g()) {
                            EmojiCompat.a().l(editorInfo);
                        }
                        RecordingInputConnection recordingInputConnection = new RecordingInputConnection(legacyTextInputServiceAndroid.g, new TextInputServiceAndroid$createInputConnection$1(legacyTextInputServiceAndroid), legacyTextInputServiceAndroid.h.c);
                        legacyTextInputServiceAndroid.i.add(new WeakReference(recordingInputConnection));
                        return recordingInputConnection;
                    }
                    i = 6;
                    editorInfo.imeOptions = i;
                    i2 = imeOptions.d;
                    if (i2 == 1) {
                    }
                    if (!z) {
                    }
                    i3 = editorInfo.inputType;
                    if ((i3 & 15) == 1) {
                    }
                    long j2 = textFieldValue.b;
                    int i82 = TextRange.c;
                    editorInfo.initialSelStart = (int) (j2 >> 32);
                    editorInfo.initialSelEnd = (int) (j2 & 4294967295L);
                    EditorInfoCompat.a(editorInfo, textFieldValue.a.k);
                    editorInfo.imeOptions |= 33554432;
                    if (EmojiCompat.g()) {
                    }
                    RecordingInputConnection recordingInputConnection2 = new RecordingInputConnection(legacyTextInputServiceAndroid.g, new TextInputServiceAndroid$createInputConnection$1(legacyTextInputServiceAndroid), legacyTextInputServiceAndroid.h.c);
                    legacyTextInputServiceAndroid.i.add(new WeakReference(recordingInputConnection2));
                    return recordingInputConnection2;
                }
                if (i5 == 0) {
                    i = 1;
                } else if (i5 == 2) {
                    i = 2;
                } else if (i5 == 6) {
                    i = 5;
                } else if (i5 == 5) {
                    i = 7;
                } else if (i5 == 3) {
                    i = 3;
                } else if (i5 == 4) {
                    i = 4;
                } else {
                    if (i5 != 7) {
                        u2.l("invalid ImeAction");
                        return null;
                    }
                    i = 6;
                }
                editorInfo.imeOptions = i;
                i2 = imeOptions.d;
                if (i2 == 1) {
                }
                if (!z) {
                }
                i3 = editorInfo.inputType;
                if ((i3 & 15) == 1) {
                }
                long j22 = textFieldValue.b;
                int i822 = TextRange.c;
                editorInfo.initialSelStart = (int) (j22 >> 32);
                editorInfo.initialSelEnd = (int) (j22 & 4294967295L);
                EditorInfoCompat.a(editorInfo, textFieldValue.a.k);
                editorInfo.imeOptions |= 33554432;
                if (EmojiCompat.g()) {
                }
                RecordingInputConnection recordingInputConnection22 = new RecordingInputConnection(legacyTextInputServiceAndroid.g, new TextInputServiceAndroid$createInputConnection$1(legacyTextInputServiceAndroid), legacyTextInputServiceAndroid.h.c);
                legacyTextInputServiceAndroid.i.add(new WeakReference(recordingInputConnection22));
                return recordingInputConnection22;
            }
        } else {
            InputMethodSession inputMethodSession = (InputMethodSession) SessionMutex.a(androidPlatformTextInputSession.m);
            if (inputMethodSession != null) {
                synchronized (inputMethodSession.c) {
                    if (inputMethodSession.e) {
                        return null;
                    }
                    NullableInputConnectionWrapper a = NullableInputConnectionWrapper_androidKt.a(((LegacyTextInputMethodRequest) inputMethodSession.a).a(editorInfo), new b(i4, inputMethodSession));
                    inputMethodSession.d.b(new WeakReference(a));
                    return a;
                }
            }
        }
        return null;
    }

    @Override // android.view.View
    public final void onCreateVirtualViewTranslationRequests(long[] jArr, int[] iArr, Consumer consumer) {
        SemanticsNode semanticsNode;
        TranslationRequestValue forText;
        ViewTranslationRequest build;
        AndroidContentCaptureManager androidContentCaptureManager = this.G;
        androidContentCaptureManager.getClass();
        for (long j : jArr) {
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidContentCaptureManager.c().b((int) j);
            if (semanticsNodeWithAdjustedBounds != null && (semanticsNode = semanticsNodeWithAdjustedBounds.a) != null) {
                u0.p();
                ViewTranslationRequest.Builder k = u0.k(androidContentCaptureManager.j.getAutofillId(), semanticsNode.f);
                Object e = semanticsNode.d.j.e(SemanticsProperties.C);
                if (e == null) {
                    e = null;
                }
                List list = (List) e;
                if (list != null) {
                    forText = TranslationRequestValue.forText(new AnnotatedString(ListUtilsKt.a(list, "\n", null, 62)));
                    k.setValue("android:text", forText);
                    build = k.build();
                    consumer.accept(build);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setAttached(false);
        this.A.onViewDetachedFromWindow(this);
        View view = this.u;
        if (l() && view != null) {
            removeView(view);
        }
        int i = Build.VERSION.SDK_INT;
        if (i > 28) {
            MutableObjectList mutableObjectList = U0;
            synchronized (mutableObjectList) {
                mutableObjectList.l(this);
            }
        }
        getComposeViewContext().b();
        SnapshotStateObserver snapshotStateObserver = getSnapshotObserver().a;
        p pVar = snapshotStateObserver.h;
        if (pVar != null) {
            pVar.a();
        }
        snapshotStateObserver.a();
        Lifecycle g = getComposeViewContext().d().g();
        g.b(this.G);
        g.b(this);
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        getViewTreeObserver().removeOnScrollChangedListener(this);
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.o;
        if (retainedValuesStoreEntry != null) {
            retainedValuesStoreEntry.c = false;
        }
        this.o = null;
        if (i >= 31) {
            AndroidComposeViewTranslationCallbackS.a.a(this);
        }
        AndroidAutofillManager autofillManager = getAutofillManager();
        if (autofillManager != null) {
            getSemanticsOwner().d.l(autofillManager);
            ((FocusOwnerImpl) getFocusOwner()).g.l(autofillManager);
        }
        RectManager rectManager = getRectManager();
        rectManager.g = rectManager.d.b(0L, 0L, null, 0, 0);
        getRectManager().a();
        RectManager rectManager2 = getRectManager();
        q0 q0Var = rectManager2.i;
        if (q0Var != null) {
            rectManager2.b.removeCallbacks(q0Var);
            rectManager2.i = null;
        }
        ((FocusOwnerImpl) getFocusOwner()).g.l(this);
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, android.graphics.Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z && !hasFocus()) {
            FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) getFocusOwner();
            FocusTransactionsKt.f(focusOwnerImpl.c, true);
            if (focusOwnerImpl.g() != null) {
                FocusTargetNode g = focusOwnerImpl.g();
                focusOwnerImpl.j(null);
                if (g != null) {
                    g.Z0(FocusStateImpl.j, FocusStateImpl.m);
                }
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        this.j0 = 0L;
        L();
        int i = Build.VERSION.SDK_INT;
        if (32 <= i && i < 34) {
            K(getResources().getConfiguration());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection("AndroidOwner:onLayout");
        try {
            this.j0 = 0L;
            this.c0.l(this.J0);
            this.a0 = null;
            L();
            if (this.W != null) {
                Trace.beginSection("AndroidOwner:viewLayout");
                getAndroidViewsHandler$ui().layout(0, 0, i3 - i, i4 - i2);
                Trace.endSection();
            }
        } catch (Throwable th) {
            throw th;
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ac, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b0, code lost:
    
        throw r8;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.c0;
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!getRoot().L()) {
                getRoot().d(this);
            }
            if (!isAttachedToWindow()) {
                k(getRoot());
            }
            long e = e(i);
            long e2 = e(i2);
            long a = Constraints.Companion.a((int) (e >>> 32), (int) (e & 4294967295L), (int) (e2 >>> 32), (int) (4294967295L & e2));
            Constraints constraints = this.a0;
            if (constraints == null) {
                this.a0 = new Constraints(a);
                this.b0 = false;
            } else if (!Constraints.b(constraints.a, a)) {
                this.b0 = true;
            }
            measureAndLayoutDelegate.s(a);
            measureAndLayoutDelegate.n();
            setMeasuredDimension(getRoot().A(), getRoot().p());
            if (this.W != null) {
                Trace.beginSection("AndroidOwner:androidViewMeasure");
                getAndroidViewsHandler$ui().measure(View.MeasureSpec.makeMeasureSpec(getRoot().A(), 1073741824), View.MeasureSpec.makeMeasureSpec(getRoot().p(), 1073741824));
                Trace.endSection();
            }
        } finally {
        }
    }

    @Override // android.view.View
    public final void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i) {
        if (viewStructure != null && !this.N0) {
            z(viewStructure);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        androidx.compose.ui.input.pointer.PointerIcon pointerIcon;
        int toolType = motionEvent.getToolType(i);
        if (!motionEvent.isFromSource(8194) && motionEvent.isFromSource(16386) && ((toolType == 2 || toolType == 4) && (pointerIcon = ((AndroidComposeView$pointerIconService$1) getPointerIconService()).a) != null)) {
            Context context = getContext();
            if (pointerIcon instanceof AndroidPointerIconType) {
                return PointerIcon.getSystemIcon(context, ((AndroidPointerIconType) pointerIcon).b);
            }
            return PointerIcon.getSystemIcon(context, 1000);
        }
        return super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
        CancellationHandle cancellationHandle;
        if (Build.VERSION.SDK_INT < 30) {
            setShowLayoutBounds(Companion.b());
        }
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.o;
        if (retainedValuesStoreEntry != null) {
            LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler = this.n;
            frameEndScheduler.getClass();
            LifecycleRetainedValuesStore lifecycleRetainedValuesStore = retainedValuesStoreEntry.a;
            ManagedRetainedValuesStore managedRetainedValuesStore = lifecycleRetainedValuesStore.a;
            if (managedRetainedValuesStore.a && !managedRetainedValuesStore.c) {
                try {
                    cancellationHandle = ((Wrapper_androidKt$setContent$1) frameEndScheduler).a.s(new r1(29, retainedValuesStoreEntry));
                } catch (CancellationException unused) {
                    ManagedRetainedValuesStore managedRetainedValuesStore2 = lifecycleRetainedValuesStore.a;
                    if (!managedRetainedValuesStore2.b) {
                        if (managedRetainedValuesStore2.c) {
                            PreconditionsKt.a("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
                        }
                        managedRetainedValuesStore2.a();
                        managedRetainedValuesStore2.c = true;
                    }
                    cancellationHandle = null;
                }
                CancellationHandle cancellationHandle2 = retainedValuesStoreEntry.d;
                if (cancellationHandle2 != null) {
                    cancellationHandle2.cancel();
                }
                retainedValuesStoreEntry.d = cancellationHandle;
            }
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        LayoutDirection layoutDirection;
        if (this.l) {
            int[] iArr = FocusInteropUtils_androidKt.a;
            if (i != 0) {
                if (i != 1) {
                    layoutDirection = null;
                } else {
                    layoutDirection = LayoutDirection.k;
                }
            } else {
                layoutDirection = LayoutDirection.j;
            }
            if (layoutDirection == null) {
                layoutDirection = LayoutDirection.j;
            }
            setLayoutDirection(layoutDirection);
        }
    }

    @Override // android.view.View
    public final void onScrollCaptureSearch(android.graphics.Rect rect, Point point, Consumer consumer) {
        ScrollCapture scrollCapture;
        if (Build.VERSION.SDK_INT >= 31 && (scrollCapture = this.O0) != null) {
            scrollCapture.a(this, getSemanticsOwner(), getCoroutineContext(), consumer);
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        L();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        LifecycleRetainedValuesStoreOwner.RetainedValuesStoreEntry retainedValuesStoreEntry = this.o;
        if (retainedValuesStoreEntry != null) {
            ManagedRetainedValuesStore managedRetainedValuesStore = retainedValuesStoreEntry.a.a;
            if (managedRetainedValuesStore.a && !managedRetainedValuesStore.c) {
                CancellationHandle cancellationHandle = retainedValuesStoreEntry.d;
                if (cancellationHandle != null) {
                    cancellationHandle.cancel();
                }
                retainedValuesStoreEntry.d = null;
                return;
            }
            if (!managedRetainedValuesStore.b) {
                if (!managedRetainedValuesStore.c) {
                    PreconditionsKt.a("ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?");
                }
                if (!managedRetainedValuesStore.d.f()) {
                    PreconditionsKt.a("Attempted to start retaining exited values with pending exited values");
                }
                managedRetainedValuesStore.c = false;
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
    public final void onTouchModeChanged(boolean z) {
        int i;
        InputModeManagerImpl inputModeManager = getInputModeManager();
        if (z) {
            i = 1;
        } else {
            i = 2;
        }
        ((SnapshotMutableStateImpl) inputModeManager.a).setValue(new InputMode(i));
    }

    @Override // android.view.View
    public final void onVirtualViewTranslationResponses(LongSparseArray longSparseArray) {
        AndroidContentCaptureManager androidContentCaptureManager = this.G;
        androidContentCaptureManager.getClass();
        AndroidContentCaptureManager.j(androidContentCaptureManager, longSparseArray);
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        boolean b;
        this.L0 = true;
        super.onWindowFocusChanged(z);
        if (z && Build.VERSION.SDK_INT < 30 && getShowLayoutBounds() != (b = Companion.b())) {
            setShowLayoutBounds(b);
            j(getRoot());
        }
    }

    public final void p(float[] fArr) {
        A();
        androidx.compose.ui.graphics.Matrix.e(fArr, this.h0);
        AndroidComposeView_androidKt.b(fArr, Float.intBitsToFloat((int) (this.l0 >> 32)), Float.intBitsToFloat((int) (this.l0 & 4294967295L)), this.f0);
    }

    public final long q(long j) {
        A();
        long b = androidx.compose.ui.graphics.Matrix.b(j, this.h0);
        float intBitsToFloat = Float.intBitsToFloat((int) (this.l0 >> 32)) + Float.intBitsToFloat((int) (b >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (this.l0 & 4294967295L)) + Float.intBitsToFloat((int) (b & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
    }

    public final void r(boolean z) {
        n0 n0Var;
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.c0;
        if (!measureAndLayoutDelegate.b.c() && measureAndLayoutDelegate.e.a.l == 0) {
            return;
        }
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            if (z) {
                n0Var = this.J0;
            } else {
                n0Var = this.K0;
            }
            if (measureAndLayoutDelegate.l(n0Var)) {
                requestLayout();
            }
            measureAndLayoutDelegate.b(false);
            getRectManager().a();
            if (this.M) {
                getViewTreeObserver().dispatchOnGlobalLayout();
                this.M = false;
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i, android.graphics.Rect rect) {
        int i2;
        Rect rect2;
        int i3 = 1;
        if (!isFocused()) {
            FocusDirection d = FocusInteropUtils_androidKt.d(i);
            if (d != null) {
                i2 = d.a;
            } else {
                i2 = 7;
            }
            FocusOwner focusOwner = getFocusOwner();
            if (rect != null) {
                rect2 = new Rect(rect.left, rect.top, rect.right, rect.bottom);
            } else {
                rect2 = null;
            }
            Boolean f = ((FocusOwnerImpl) focusOwner).f(i2, rect2, new r0(i2, 0));
            Boolean bool = Boolean.TRUE;
            if (!Intrinsics.a(f, bool)) {
                if (!Intrinsics.a(((FocusOwnerImpl) getFocusOwner()).f(i2, null, new r0(i2, i3)), bool)) {
                    if (!hasFocus() || (i2 != 1 && i2 != 2)) {
                        return false;
                    }
                    return ((FocusOwnerImpl) getFocusOwner()).i(i2);
                }
            }
        }
        return true;
    }

    public final void s(LayoutNode layoutNode, long j) {
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.c0;
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            measureAndLayoutDelegate.m(layoutNode, j);
            if (!measureAndLayoutDelegate.b.c()) {
                measureAndLayoutDelegate.b(false);
                getRectManager().a();
                this.K0.a();
                if (this.M) {
                    getViewTreeObserver().dispatchOnGlobalLayout();
                    this.M = false;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    public void setAccessibilityEventBatchIntervalMillis(long j) {
        this.F.q = j;
    }

    public final void setComposeViewContext(ComposeViewContext composeViewContext) {
        Function1 function1;
        if (getCoroutineContext() != composeViewContext.c().j() && !getRoot().n().isEmpty()) {
            InlineClassHelperKt.a("Changing ComposeViewContext cannot change the coroutine context without disposing of the composition first.");
        }
        Snapshot a = Snapshot.Companion.a();
        if (a != null) {
            function1 = a.e();
        } else {
            function1 = null;
        }
        Snapshot b = Snapshot.Companion.b(a);
        try {
            ComposeViewContext composeViewContext2 = get_composeViewContext();
            if (composeViewContext != composeViewContext2) {
                if (isAttachedToWindow()) {
                    composeViewContext2.b();
                    composeViewContext.e();
                }
                set_composeViewContext(composeViewContext);
                setCoroutineContext(composeViewContext.c().j());
            }
        } finally {
            Snapshot.Companion.e(a, b, function1);
        }
    }

    public final void setComposeViewContextIncrementedDuringInit$ui(boolean z) {
        this.M0 = z;
    }

    public final void setConfiguration(Configuration configuration) {
        ((SnapshotMutableStateImpl) this.P).setValue(configuration);
    }

    public final void setContentCaptureManager$ui(AndroidContentCaptureManager androidContentCaptureManager) {
        this.G = androidContentCaptureManager;
    }

    public void setCoroutineContext(CoroutineContext coroutineContext) {
        this.w = coroutineContext;
    }

    public final void setFrameEndScheduler$ui(LifecycleRetainedValuesStoreOwner.FrameEndScheduler frameEndScheduler) {
        this.n = frameEndScheduler;
    }

    public final void setLastMatrixRecalculationAnimationTime$ui(long j) {
        this.j0 = j;
    }

    public final void setOnReadyForComposition(Function1<? super ComposeViewContext, Unit> function1) {
        getDerivedIsAttached();
        if (!isAttachedToWindow() && !this.M0) {
            this.m0 = function1;
        } else {
            function1.b(getComposeViewContext());
        }
    }

    public final void setPlayNavigationSoundEffect$ui(Function2<? super FocusDirection, ? super Boolean, Unit> function2) {
        this.H0 = function2;
    }

    /* renamed from: setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui, reason: not valid java name */
    public final void m4setPrimaryDirectionalMotionAxisOverrider2epLt8$ui(IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        this.m = indirectPointerEventPrimaryDirectionalMotionAxis;
    }

    @Override // androidx.compose.ui.node.Owner
    public void setShowLayoutBounds(boolean z) {
        this.V = z;
    }

    public void setUncaughtExceptionHandler(RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.c0.getClass();
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public final boolean t(int i) {
        View view;
        if (i != 7 && i != 8) {
            Integer c = FocusInteropUtils_androidKt.c(i);
            if (c != null) {
                int intValue = c.intValue();
                FocusTargetNode g = ((FocusOwnerImpl) getFocusOwner()).g();
                if (g != null) {
                    Integer c2 = FocusInteropUtils_androidKt.c(i);
                    if (c2 != null) {
                        int intValue2 = c2.intValue();
                        ViewFactoryHolder viewFactoryHolder = DelegatableNodeKt.g(g).x;
                        if (viewFactoryHolder != null) {
                            view = viewFactoryHolder.getInteropView();
                        } else {
                            view = null;
                        }
                        View findFocus = findFocus();
                        FocusFinder focusFinder = FocusFinder.getInstance();
                        View rootView = getRootView();
                        rootView.getClass();
                        View findNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, findFocus, intValue2);
                        if (findNextFocus == null || view == null || !AndroidComposeView_androidKt.a(view, findNextFocus)) {
                            findNextFocus = null;
                        }
                        if (findNextFocus != null) {
                            return FocusInteropUtils_androidKt.b(findNextFocus, Integer.valueOf(intValue), null);
                        }
                    } else {
                        throw q.p("Invalid focus direction");
                    }
                } else {
                    u2.l("findNextViewInEmbeddedView called when owner does not have anything focused.");
                    return false;
                }
            } else {
                throw q.p("Invalid focus direction");
            }
        }
        return false;
    }

    public final void u() {
        int i = 0;
        if (this.T) {
            getSnapshotObserver().a.c(new wc(i));
            this.T = false;
        }
        AndroidViewsHandler androidViewsHandler = this.W;
        if (androidViewsHandler != null) {
            d(androidViewsHandler);
        }
        AndroidAutofillManager autofillManager = getAutofillManager();
        if (autofillManager != null) {
            MutableIntSet mutableIntSet = autofillManager.q;
            if (mutableIntSet.d == 0 && autofillManager.r) {
                autofillManager.j.a().commit();
                autofillManager.r = false;
            }
            if (mutableIntSet.d != 0) {
                autofillManager.r = true;
            }
        }
        while (true) {
            MutableObjectList mutableObjectList = this.z0;
            if (mutableObjectList.e() && mutableObjectList.b(0) != null) {
                int i2 = mutableObjectList.b;
                for (int i3 = 0; i3 < i2; i3++) {
                    Function0 function0 = (Function0) mutableObjectList.b(i3);
                    mutableObjectList.p(i3, null);
                    if (function0 != null) {
                        function0.a();
                    }
                }
                mutableObjectList.n(0, i2);
            } else {
                return;
            }
        }
    }

    public final void v(LayoutNode layoutNode) {
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.F;
        androidComposeViewAccessibilityDelegateCompat.G = true;
        if (androidComposeViewAccessibilityDelegateCompat.v()) {
            androidComposeViewAccessibilityDelegateCompat.w(layoutNode);
        }
        AndroidContentCaptureManager androidContentCaptureManager = this.G;
        androidContentCaptureManager.p = true;
        if (androidContentCaptureManager.d()) {
            androidContentCaptureManager.q.j(Unit.a);
        }
    }

    public final void w(LayoutNode layoutNode, boolean z, boolean z2, boolean z3) {
        LayoutNode w;
        LayoutNode w2;
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.c0;
        if (z) {
            DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = measureAndLayoutDelegate.b;
            LayoutNode layoutNode2 = layoutNode.q;
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P;
            if (layoutNode2 == null) {
                InlineClassHelperKt.b("Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope");
            }
            int ordinal = layoutNodeLayoutDelegate.d.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2 && ordinal != 3) {
                        if (ordinal == 4) {
                            if (!layoutNodeLayoutDelegate.e || z2) {
                                layoutNodeLayoutDelegate.e = true;
                                layoutNodeLayoutDelegate.p.E = true;
                                if (!layoutNode.Z) {
                                    if ((!Intrinsics.a(layoutNode.N(), Boolean.TRUE) && !MeasureAndLayoutDelegate.i(layoutNode)) || ((w = layoutNode.w()) != null && w.P.e)) {
                                        if ((layoutNode.M() || MeasureAndLayoutDelegate.j(layoutNode)) && ((w2 = layoutNode.w()) == null || !w2.r())) {
                                            depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.l);
                                        }
                                    } else {
                                        depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.j);
                                    }
                                    if (!measureAndLayoutDelegate.d && z3) {
                                        F(layoutNode);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        k8.e();
                        return;
                    }
                } else {
                    return;
                }
            }
            measureAndLayoutDelegate.h.b(new MeasureAndLayoutDelegate.PostponedRequest(layoutNode, true, z2));
            return;
        }
        if (measureAndLayoutDelegate.r(layoutNode, z2) && z3) {
            F(layoutNode);
        }
    }

    public final void x(LayoutNode layoutNode, boolean z, boolean z2) {
        boolean z3;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.P;
        MeasureAndLayoutDelegate measureAndLayoutDelegate = this.c0;
        if (z) {
            DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = measureAndLayoutDelegate.b;
            int ordinal = layoutNodeLayoutDelegate.d.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal != 3) {
                            if (ordinal != 4) {
                                k8.e();
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
            if ((!layoutNodeLayoutDelegate.e && !layoutNodeLayoutDelegate.f) || z2) {
                layoutNodeLayoutDelegate.f = true;
                layoutNodeLayoutDelegate.g = true;
                MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.p;
                measurePassDelegate.F = true;
                measurePassDelegate.G = true;
                if (!layoutNode.Z) {
                    LayoutNode w = layoutNode.w();
                    if (Intrinsics.a(layoutNode.N(), Boolean.TRUE) && ((w == null || !w.P.e) && (w == null || !w.P.f))) {
                        depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.k);
                    } else if (layoutNode.M() && ((w == null || !w.q()) && (w == null || !w.r()))) {
                        depthSortedSetsForDifferentPasses.a(layoutNode, Invalidation.m);
                    }
                    if (!measureAndLayoutDelegate.d) {
                        F(null);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        measureAndLayoutDelegate.getClass();
        int ordinal2 = layoutNodeLayoutDelegate.d.ordinal();
        if (ordinal2 != 0 && ordinal2 != 1 && ordinal2 != 2 && ordinal2 != 3) {
            if (ordinal2 == 4) {
                LayoutNode w2 = layoutNode.w();
                if (w2 != null && !w2.M()) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (!z2) {
                    if (!layoutNode.r()) {
                        if (layoutNode.q() && layoutNode.M() == z3 && layoutNode.M() == layoutNodeLayoutDelegate.p.D) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                MeasurePassDelegate measurePassDelegate2 = layoutNodeLayoutDelegate.p;
                measurePassDelegate2.F = true;
                measurePassDelegate2.G = true;
                if (!layoutNode.Z && measurePassDelegate2.D && z3) {
                    if ((w2 == null || !w2.q()) && (w2 == null || !w2.r())) {
                        measureAndLayoutDelegate.b.a(layoutNode, Invalidation.m);
                    }
                    if (!measureAndLayoutDelegate.d) {
                        F(null);
                        return;
                    }
                    return;
                }
                return;
            }
            k8.e();
        }
    }

    public final void y() {
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this.F;
        androidComposeViewAccessibilityDelegateCompat.G = true;
        Handler handler = androidComposeViewAccessibilityDelegateCompat.m.getHandler();
        if (androidComposeViewAccessibilityDelegateCompat.v() && !androidComposeViewAccessibilityDelegateCompat.R && handler != null) {
            androidComposeViewAccessibilityDelegateCompat.R = true;
            handler.post(androidComposeViewAccessibilityDelegateCompat.T);
        }
        AndroidContentCaptureManager androidContentCaptureManager = this.G;
        androidContentCaptureManager.p = true;
        Handler handler2 = androidContentCaptureManager.j.getHandler();
        if (androidContentCaptureManager.d() && !androidContentCaptureManager.v && handler2 != null) {
            androidContentCaptureManager.v = true;
            handler2.post(androidContentCaptureManager.w);
        }
    }

    public final void z(ViewStructure viewStructure) {
        AndroidAutofillManager autofillManager = getAutofillManager();
        if (autofillManager != null) {
            LayoutNode layoutNode = autofillManager.k.a;
            AutofillId autofillId = autofillManager.p;
            String str = autofillManager.n;
            RectManager rectManager = autofillManager.m;
            PopulateViewStructure_androidKt.a(viewStructure, layoutNode, autofillId, str, rectManager);
            Object[] objArr = ObjectListKt.a;
            MutableObjectList mutableObjectList = new MutableObjectList(2);
            mutableObjectList.g(layoutNode);
            mutableObjectList.g(viewStructure);
            while (mutableObjectList.e()) {
                Object m = mutableObjectList.m(mutableObjectList.b - 1);
                m.getClass();
                ViewStructure viewStructure2 = (ViewStructure) m;
                Object m2 = mutableObjectList.m(mutableObjectList.b - 1);
                m2.getClass();
                List n = ((LayoutNode) ((SemanticsInfo) m2)).n();
                int size = n.size();
                for (int i = 0; i < size; i++) {
                    SemanticsInfo semanticsInfo = (SemanticsInfo) n.get(i);
                    if (!((LayoutNode) semanticsInfo).Z) {
                        LayoutNode layoutNode2 = (LayoutNode) semanticsInfo;
                        if (layoutNode2.L() && layoutNode2.M()) {
                            SemanticsConfiguration y = layoutNode2.y();
                            if (y != null) {
                                MutableScatterMap mutableScatterMap = y.j;
                                if (mutableScatterMap.b(SemanticsActions.g) || mutableScatterMap.b(SemanticsActions.h) || mutableScatterMap.b(SemanticsProperties.r) || mutableScatterMap.b(SemanticsProperties.s) || (Build.VERSION.SDK_INT >= 34 && mutableScatterMap.b(SemanticsPropertiesAndroid.c))) {
                                    ViewStructure newChild = viewStructure2.newChild(viewStructure2.addChildCount(1));
                                    PopulateViewStructure_androidKt.a(newChild, semanticsInfo, autofillId, str, rectManager);
                                    mutableObjectList.g(semanticsInfo);
                                    mutableObjectList.g(newChild);
                                }
                            }
                            mutableObjectList.g(semanticsInfo);
                            mutableObjectList.g(viewStructure2);
                        }
                    }
                }
            }
        }
        AndroidAutofill autofill = getAutofill();
        if (autofill != null) {
            AndroidAutofill_androidKt.a(autofill, viewStructure);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidAutofill getAutofill() {
        return this.R;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidAutofillManager getAutofillManager() {
        return this.S;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidDragAndDropManager getDragAndDropManager() {
        return this.x;
    }

    public MutableIntObjectMap<LayoutNode> getLayoutNodes() {
        return this.C;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        addView(view, -1);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        ViewGroup.LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.width = i;
        generateDefaultLayoutParams.height = i2;
        addViewInLayout(view, -1, generateDefaultLayoutParams, true);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, i, layoutParams, true);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInLayout(view, -1, layoutParams, true);
    }

    @Deprecated
    public static /* synthetic */ void getFontLoader$annotations() {
    }

    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui$annotations() {
    }

    public static /* synthetic */ void getPlayNavigationSoundEffect$ui$annotations() {
    }

    /* renamed from: getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations, reason: not valid java name */
    public static /* synthetic */ void m2getPrimaryDirectionalMotionAxisOverridedqNNBbU$ui$annotations() {
    }

    public static /* synthetic */ void getRoot$annotations() {
    }

    @Deprecated
    public static /* synthetic */ void getTextInputService$annotations() {
    }

    public static /* synthetic */ void getWindowInfo$annotations() {
    }

    public RootForTest getRootForTest() {
        return this;
    }

    public View getView() {
        return this;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class RootModifierNode extends Modifier.Node implements BringIntoViewModifierNode, SemanticsModifierNode, RotaryInputModifierNode, KeyInputModifierNode, LayoutModifierNode, TraversableNode {
        public final b x = new b(0, this);

        public RootModifierNode() {
        }

        @Override // androidx.compose.ui.input.key.KeyInputModifierNode
        public final boolean I(KeyEvent keyEvent) {
            FocusDirection focusDirection;
            int i;
            int[] iArr = FocusInteropUtils_androidKt.a;
            long a = KeyEvent_androidKt.a(keyEvent);
            int i2 = 3;
            int i3 = 2;
            if (Key.a(a, Key.b)) {
                focusDirection = new FocusDirection(2);
            } else if (Key.a(a, Key.c)) {
                focusDirection = new FocusDirection(1);
            } else if (Key.a(a, Key.p)) {
                if (keyEvent.isShiftPressed()) {
                    i = 2;
                } else {
                    i = 1;
                }
                focusDirection = new FocusDirection(i);
            } else if (Key.a(a, Key.g)) {
                focusDirection = new FocusDirection(4);
            } else if (Key.a(a, Key.f)) {
                focusDirection = new FocusDirection(3);
            } else if (!Key.a(a, Key.d) && !Key.a(a, Key.C)) {
                if (!Key.a(a, Key.e) && !Key.a(a, Key.D)) {
                    if (!Key.a(a, Key.h) && !Key.a(a, Key.r) && !Key.a(a, Key.E)) {
                        if (!Key.a(a, Key.a) && !Key.a(a, Key.u)) {
                            focusDirection = null;
                        } else {
                            focusDirection = new FocusDirection(8);
                        }
                    } else {
                        focusDirection = new FocusDirection(7);
                    }
                } else {
                    focusDirection = new FocusDirection(6);
                }
            } else {
                focusDirection = new FocusDirection(5);
            }
            boolean z = false;
            if (focusDirection != null) {
                int i4 = focusDirection.a;
                if (KeyEvent_androidKt.b(keyEvent) == 2) {
                    AndroidComposeView androidComposeView = AndroidComposeView.this;
                    FocusTargetNode g = ((FocusOwnerImpl) androidComposeView.getFocusOwner()).g();
                    if (g != null && g.x && androidComposeView.t(i4)) {
                        Function2<FocusDirection, Boolean, Unit> playNavigationSoundEffect$ui = androidComposeView.getPlayNavigationSoundEffect$ui();
                        if (keyEvent.getRepeatCount() > 0) {
                            z = true;
                        }
                        playNavigationSoundEffect$ui.n(focusDirection, Boolean.valueOf(z));
                        return true;
                    }
                    Boolean f = ((FocusOwnerImpl) androidComposeView.getFocusOwner()).f(i4, androidComposeView.getEmbeddedViewFocusRect(), new defpackage.c(i2, focusDirection));
                    if (f == null) {
                        return true;
                    }
                    if (f.booleanValue()) {
                        Function2<FocusDirection, Boolean, Unit> playNavigationSoundEffect$ui2 = androidComposeView.getPlayNavigationSoundEffect$ui();
                        if (keyEvent.getRepeatCount() > 0) {
                            z = true;
                        }
                        playNavigationSoundEffect$ui2.n(focusDirection, Boolean.valueOf(z));
                        return true;
                    }
                    if (i4 != 1 && i4 != 2) {
                        return false;
                    }
                    Integer c = FocusInteropUtils_androidKt.c(i4);
                    if (c != null) {
                        i3 = c.intValue();
                    }
                    FocusFinder focusFinder = FocusFinder.getInstance();
                    View rootView = androidComposeView.getRootView();
                    rootView.getClass();
                    View findNextFocus = focusFinder.findNextFocus((ViewGroup) rootView, androidComposeView.getView(), i3);
                    if (findNextFocus == null || findNextFocus.equals(androidComposeView)) {
                        return ((FocusOwnerImpl) androidComposeView.getFocusOwner()).i(i4);
                    }
                }
            }
            return false;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
            Placeable w = measurable.w(j);
            return measureScope.v0(w.j, w.k, MapsKt.b(), this.x, new defpackage.f(w, 1));
        }

        @Override // androidx.compose.ui.relocation.BringIntoViewModifierNode
        public final Object l(NodeCoordinator nodeCoordinator, p0 p0Var, ContinuationImpl continuationImpl) {
            Rect rect;
            long S = nodeCoordinator.S(0L);
            Rect rect2 = (Rect) p0Var.a();
            if (rect2 != null) {
                rect = rect2.i(S);
            } else {
                rect = null;
            }
            if (rect != null) {
                AndroidComposeView.this.requestRectangleOnScreen(new android.graphics.Rect((int) rect.a, (int) rect.b, (int) rect.c, (int) rect.d), false);
            }
            return Unit.a;
        }

        @Override // androidx.compose.ui.input.key.KeyInputModifierNode
        public final boolean o(KeyEvent keyEvent) {
            return false;
        }

        @Override // androidx.compose.ui.node.TraversableNode
        public final Object p() {
            return "androidx.compose.ui.layout.WindowInsetsRulers";
        }

        @Override // androidx.compose.ui.node.SemanticsModifierNode
        public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    public final void setUncaughtExceptionHandler$ui(RootForTest.UncaughtExceptionHandler uncaughtExceptionHandler) {
    }
}
