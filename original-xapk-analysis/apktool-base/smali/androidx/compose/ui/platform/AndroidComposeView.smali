.class public final Landroidx/compose/ui/platform/AndroidComposeView;
.super Landroid/view/ViewGroup;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/Owner;
.implements Landroidx/compose/ui/focus/PlatformFocusOwner;
.implements Landroidx/compose/ui/node/RootForTest;
.implements Landroidx/compose/ui/input/pointer/MatrixPositionCalculator;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Landroidx/compose/ui/node/OutOfFrameExecutor;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroidx/compose/ui/focus/FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AndroidComposeView$AndroidComposeViewNavigationSoundEffect;,
        Landroidx/compose/ui/platform/AndroidComposeView$Companion;,
        Landroidx/compose/ui/platform/AndroidComposeView$RootModifierNode;
    }
.end annotation


# static fields
.field public static R0:Ljava/lang/Class;

.field public static S0:Ljava/lang/reflect/Method;

.field public static T0:Ljava/lang/reflect/Method;

.field public static final U0:Landroidx/collection/MutableObjectList;

.field public static V0:Lr;

.field public static W0:Ljava/lang/reflect/Method;

.field public static X0:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Landroidx/compose/ui/layout/InsetsListener;

.field public A0:F

.field public final B:Landroidx/compose/ui/node/LayoutNode;

.field public B0:F

.field public final C:Landroidx/collection/MutableIntObjectMap;

.field public C0:F

.field public final D:Landroidx/compose/ui/spatial/RectManager;

.field public D0:F

.field public final E:Landroidx/compose/ui/semantics/SemanticsOwner;

.field public final E0:Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

.field public final F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

.field public final F0:Ls0;

.field public G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

.field public G0:Z

.field public final H:Landroidx/compose/ui/graphics/GraphicsContext;

.field public H0:Lkotlin/jvm/functions/Function2;

.field public final I:Landroidx/compose/ui/autofill/AutofillTree;

.field public final I0:Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;

.field public final J:Landroidx/collection/MutableObjectList;

.field public final J0:Ln0;

.field public K:Landroidx/collection/MutableObjectList;

.field public final K0:Ln0;

.field public L:Z

.field public L0:Z

.field public M:Z

.field public M0:Z

.field public final N:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

.field public N0:Z

.field public final O:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

.field public final O0:Landroidx/compose/ui/scrollcapture/ScrollCapture;

.field public final P:Landroidx/compose/runtime/MutableState;

.field public P0:Landroid/view/View;

.field public final Q:Landroidx/compose/runtime/State;

.field public final Q0:Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

.field public final R:Landroidx/compose/ui/autofill/AndroidAutofill;

.field public final S:Landroidx/compose/ui/autofill/AndroidAutofillManager;

.field public T:Z

.field public final U:Landroidx/compose/ui/node/OwnerSnapshotObserver;

.field public V:Z

.field public W:Landroidx/compose/ui/platform/AndroidViewsHandler;

.field public a0:Landroidx/compose/ui/unit/Constraints;

.field public b0:Z

.field public final c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

.field public d0:J

.field public final e0:[I

.field public final f0:[F

.field public final g0:Landroid/graphics/Matrix;

.field public final h0:[F

.field public final i0:[F

.field public final j:Landroidx/compose/runtime/MutableState;

.field public j0:J

.field public k:J

.field public k0:Z

.field public final l:Z

.field public l0:J

.field public m:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

.field public m0:Lkotlin/jvm/functions/Function1;

.field public n:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;

.field public n0:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

.field public o:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

.field public o0:Landroidx/compose/ui/text/input/TextInputService;

.field public p:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

.field public final p0:Ljava/util/concurrent/atomic/AtomicReference;

.field public q:Landroidx/compose/runtime/retain/RetainedValuesStore;

.field public q0:Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

.field public final r:Lkotlin/collections/ArrayDeque;

.field public final r0:Landroidx/compose/runtime/MutableState;

.field public final s:Ls0;

.field public final s0:Landroidx/compose/runtime/MutableState;

.field public final t:Landroidx/compose/runtime/MutableState;

.field public t0:Landroidx/compose/ui/input/InputModeManagerImpl;

.field public final u:Landroid/view/View;

.field public final u0:Landroidx/compose/ui/modifier/ModifierLocalManager;

.field public final v:Landroidx/compose/ui/focus/FocusOwnerImpl;

.field public v0:Landroidx/compose/ui/platform/AndroidTextToolbar;

.field public w:Lkotlin/coroutines/CoroutineContext;

.field public w0:Landroid/view/MotionEvent;

.field public final x:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

.field public x0:J

.field public final y:Landroidx/compose/runtime/MutableState;

.field public final y0:Landroidx/compose/ui/platform/WeakCache;

.field public final z:Landroidx/compose/runtime/State;

.field public final z0:Landroidx/collection/MutableObjectList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView;->U0:Landroidx/collection/MutableObjectList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/compose/ui/platform/ComposeViewContext;)V
    .locals 13

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->k:J

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    iput-boolean v7, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l:Z

    .line 19
    .line 20
    sget-object v0, Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->q:Landroidx/compose/runtime/retain/RetainedValuesStore;

    .line 23
    .line 24
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 25
    .line 26
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->r:Lkotlin/collections/ArrayDeque;

    .line 30
    .line 31
    new-instance v0, Ls0;

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    invoke-direct {v0, p0, v8}, Ls0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->s:Ls0;

    .line 38
    .line 39
    invoke-static {p1}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->j()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->t:Landroidx/compose/runtime/MutableState;

    .line 52
    .line 53
    new-instance v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 54
    .line 55
    invoke-direct {v0, p0, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->v:Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroidx/compose/ui/platform/ComposeViewContext;->c()Landroidx/compose/runtime/CompositionContext;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->j()Lkotlin/coroutines/CoroutineContext;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->w:Lkotlin/coroutines/CoroutineContext;

    .line 69
    .line 70
    new-instance v0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    .line 71
    .line 72
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$dragAndDropManager$1;

    .line 73
    .line 74
    invoke-direct {v0}, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->x:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    .line 78
    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->y:Landroidx/compose/runtime/MutableState;

    .line 86
    .line 87
    new-instance v0, Ln0;

    .line 88
    .line 89
    const/4 v9, 0x2

    .line 90
    invoke-direct {v0, p0, v9}, Ln0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->z:Landroidx/compose/runtime/State;

    .line 98
    .line 99
    new-instance v0, Landroidx/compose/ui/layout/InsetsListener;

    .line 100
    .line 101
    invoke-direct {v0}, Landroidx/compose/ui/layout/InsetsListener;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A:Landroidx/compose/ui/layout/InsetsListener;

    .line 105
    .line 106
    new-instance v0, Landroidx/compose/ui/node/LayoutNode;

    .line 107
    .line 108
    const/4 v10, 0x3

    .line 109
    invoke-direct {v0, v10}, Landroidx/compose/ui/node/LayoutNode;-><init>(I)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Landroidx/compose/ui/layout/RootMeasurePolicy;->b:Landroidx/compose/ui/layout/RootMeasurePolicy;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->g0(Landroidx/compose/ui/layout/MeasurePolicy;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->d0(Landroidx/compose/ui/unit/Density;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->i0(Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$root$1$1;

    .line 132
    .line 133
    invoke-direct {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeView$root$1$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 141
    .line 142
    iget-object v3, v3, Landroidx/compose/ui/focus/FocusOwnerImpl;->e:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    .line 143
    .line 144
    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    iget-object v3, v3, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->c:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    .line 153
    .line 154
    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNode;->h0(Landroidx/compose/ui/Modifier;)V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B:Landroidx/compose/ui/node/LayoutNode;

    .line 162
    .line 163
    sget-object v0, Landroidx/collection/IntObjectMapKt;->a:Landroidx/collection/MutableIntObjectMap;

    .line 164
    .line 165
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    .line 166
    .line 167
    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->C:Landroidx/collection/MutableIntObjectMap;

    .line 171
    .line 172
    new-instance v0, Landroidx/compose/ui/spatial/RectManager;

    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/spatial/RectManager;-><init>(Landroidx/collection/MutableIntObjectMap;Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->D:Landroidx/compose/ui/spatial/RectManager;

    .line 182
    .line 183
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    new-instance v3, Landroidx/compose/ui/semantics/EmptySemanticsModifier;

    .line 190
    .line 191
    invoke-direct {v3}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-direct {v0, v1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsOwner;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/EmptySemanticsModifier;Landroidx/collection/MutableIntObjectMap;)V

    .line 199
    .line 200
    .line 201
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->E:Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 202
    .line 203
    new-instance v11, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 204
    .line 205
    invoke-direct {v11, p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 206
    .line 207
    .line 208
    iput-object v11, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 209
    .line 210
    new-instance v12, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 211
    .line 212
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$contentCaptureManager$1;

    .line 213
    .line 214
    const-string v5, "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;"

    .line 215
    .line 216
    const/4 v6, 0x1

    .line 217
    const/4 v1, 0x0

    .line 218
    const-class v3, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;

    .line 219
    .line 220
    const-string v4, "getContentCaptureSessionCompat"

    .line 221
    .line 222
    move-object v2, p0

    .line 223
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    invoke-direct {v12, p0, v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function0;)V

    .line 227
    .line 228
    .line 229
    iput-object v12, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 230
    .line 231
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidGraphicsContext_androidKt;->a(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/graphics/GraphicsContext;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->H:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 236
    .line 237
    new-instance v0, Landroidx/compose/ui/autofill/AutofillTree;

    .line 238
    .line 239
    invoke-direct {v0}, Landroidx/compose/ui/autofill/AutofillTree;-><init>()V

    .line 240
    .line 241
    .line 242
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->I:Landroidx/compose/ui/autofill/AutofillTree;

    .line 243
    .line 244
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 245
    .line 246
    invoke-direct {v0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 247
    .line 248
    .line 249
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->J:Landroidx/collection/MutableObjectList;

    .line 250
    .line 251
    new-instance v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 252
    .line 253
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->N:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 257
    .line 258
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 259
    .line 260
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 265
    .line 266
    .line 267
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->O:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 268
    .line 269
    new-instance v0, Landroid/content/res/Configuration;

    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->P:Landroidx/compose/runtime/MutableState;

    .line 287
    .line 288
    new-instance v0, Ln0;

    .line 289
    .line 290
    invoke-direct {v0, p0, v10}, Ln0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 291
    .line 292
    .line 293
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->Q:Landroidx/compose/runtime/State;

    .line 298
    .line 299
    new-instance v0, Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 300
    .line 301
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/autofill/AndroidAutofill;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/autofill/AutofillTree;)V

    .line 306
    .line 307
    .line 308
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->R:Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 309
    .line 310
    new-instance v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 311
    .line 312
    new-instance v1, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 313
    .line 314
    invoke-direct {v1, p1}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    move-object v3, p0

    .line 330
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/autofill/AndroidAutofillManager;-><init>(Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;Landroidx/compose/ui/semantics/SemanticsOwner;Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/spatial/RectManager;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->S:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 334
    .line 335
    new-instance v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 336
    .line 337
    new-instance v1, Lm0;

    .line 338
    .line 339
    invoke-direct {v1, p0, v7}, Lm0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 340
    .line 341
    .line 342
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/OwnerSnapshotObserver;-><init>(Lm0;)V

    .line 343
    .line 344
    .line 345
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->U:Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 346
    .line 347
    new-instance v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 348
    .line 349
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 354
    .line 355
    .line 356
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 357
    .line 358
    const-wide v0, 0x7fffffff7fffffffL

    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->d0:J

    .line 364
    .line 365
    filled-new-array {v8, v8}, [I

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->e0:[I

    .line 370
    .line 371
    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->f0:[F

    .line 376
    .line 377
    new-instance v0, Landroid/graphics/Matrix;

    .line 378
    .line 379
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 380
    .line 381
    .line 382
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->g0:Landroid/graphics/Matrix;

    .line 383
    .line 384
    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->h0:[F

    .line 389
    .line 390
    invoke-static {}, Landroidx/compose/ui/graphics/Matrix;->a()[F

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->i0:[F

    .line 395
    .line 396
    const-wide/16 v0, -0x1

    .line 397
    .line 398
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 399
    .line 400
    const-wide v0, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 406
    .line 407
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 408
    .line 409
    const/4 v1, 0x0

    .line 410
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->p0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 414
    .line 415
    move-object v0, p2

    .line 416
    iget-object v0, v0, Landroidx/compose/ui/platform/ComposeViewContext;->p:Landroidx/compose/runtime/MutableState;

    .line 417
    .line 418
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->r0:Landroidx/compose/runtime/MutableState;

    .line 419
    .line 420
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    sget-object v3, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->a:[I

    .line 433
    .line 434
    if-eqz v0, :cond_1

    .line 435
    .line 436
    if-eq v0, v7, :cond_0

    .line 437
    .line 438
    move-object v0, v1

    .line 439
    goto :goto_0

    .line 440
    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 441
    .line 442
    goto :goto_0

    .line 443
    :cond_1
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 444
    .line 445
    :goto_0
    if-nez v0, :cond_2

    .line 446
    .line 447
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 448
    .line 449
    :cond_2
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->s0:Landroidx/compose/runtime/MutableState;

    .line 454
    .line 455
    new-instance v0, Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 456
    .line 457
    invoke-direct {v0, p0}, Landroidx/compose/ui/modifier/ModifierLocalManager;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 458
    .line 459
    .line 460
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->u0:Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 461
    .line 462
    new-instance v0, Landroidx/compose/ui/platform/WeakCache;

    .line 463
    .line 464
    invoke-direct {v0}, Landroidx/compose/ui/platform/WeakCache;-><init>()V

    .line 465
    .line 466
    .line 467
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->y0:Landroidx/compose/ui/platform/WeakCache;

    .line 468
    .line 469
    new-instance v0, Landroidx/collection/MutableObjectList;

    .line 470
    .line 471
    invoke-direct {v0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 472
    .line 473
    .line 474
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->z0:Landroidx/collection/MutableObjectList;

    .line 475
    .line 476
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 477
    .line 478
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A0:F

    .line 479
    .line 480
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B0:F

    .line 481
    .line 482
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->C0:F

    .line 483
    .line 484
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->D0:F

    .line 485
    .line 486
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

    .line 487
    .line 488
    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 489
    .line 490
    .line 491
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->E0:Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

    .line 492
    .line 493
    new-instance v0, Ls0;

    .line 494
    .line 495
    invoke-direct {v0, p0, v7}, Ls0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 496
    .line 497
    .line 498
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F0:Ls0;

    .line 499
    .line 500
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$AndroidComposeViewNavigationSoundEffect;

    .line 501
    .line 502
    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView$AndroidComposeViewNavigationSoundEffect;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 503
    .line 504
    .line 505
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->H0:Lkotlin/jvm/functions/Function2;

    .line 506
    .line 507
    new-instance v0, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;

    .line 508
    .line 509
    new-instance v3, Lm0;

    .line 510
    .line 511
    invoke-direct {v3, p0, v9}, Lm0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 512
    .line 513
    .line 514
    invoke-direct {v0, p1, v3}, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;-><init>(Landroid/content/Context;Lm0;)V

    .line 515
    .line 516
    .line 517
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->I0:Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;

    .line 518
    .line 519
    new-instance v0, Ln0;

    .line 520
    .line 521
    const/4 v3, 0x4

    .line 522
    invoke-direct {v0, p0, v3}, Ln0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 523
    .line 524
    .line 525
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->J0:Ln0;

    .line 526
    .line 527
    new-instance v0, Ln0;

    .line 528
    .line 529
    invoke-direct {v0, p0, v8}, Ln0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 530
    .line 531
    .line 532
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->K0:Ln0;

    .line 533
    .line 534
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 535
    .line 536
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p0, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p0, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 543
    .line 544
    .line 545
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;->a:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;

    .line 546
    .line 547
    invoke-virtual {v0, p0, v7, v8}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsO;->a(Landroid/view/View;IZ)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p0, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 554
    .line 555
    .line 556
    invoke-static {p0, v11}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 564
    .line 565
    .line 566
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 567
    .line 568
    const/16 v3, 0x1d

    .line 569
    .line 570
    if-lt v0, v3, :cond_3

    .line 571
    .line 572
    sget-object v3, Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;->a:Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;

    .line 573
    .line 574
    invoke-virtual {v3, p0}, Landroidx/compose/ui/platform/AndroidComposeViewForceDarkModeQ;->a(Landroid/view/View;)V

    .line 575
    .line 576
    .line 577
    :cond_3
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->l()Z

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    if-eqz v3, :cond_4

    .line 582
    .line 583
    new-instance v3, Landroid/view/View;

    .line 584
    .line 585
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 586
    .line 587
    .line 588
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 589
    .line 590
    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    .line 595
    .line 596
    const v4, 0x7f0a00fb

    .line 597
    .line 598
    .line 599
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 600
    .line 601
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    iput-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->u:Landroid/view/View;

    .line 605
    .line 606
    const/4 v4, -0x1

    .line 607
    invoke-virtual {p0, v3, v4}, Landroidx/compose/ui/platform/AndroidComposeView;->addView(Landroid/view/View;I)V

    .line 608
    .line 609
    .line 610
    :cond_4
    const/16 v3, 0x1f

    .line 611
    .line 612
    if-lt v0, v3, :cond_5

    .line 613
    .line 614
    new-instance v1, Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 615
    .line 616
    invoke-direct {v1}, Landroidx/compose/ui/scrollcapture/ScrollCapture;-><init>()V

    .line 617
    .line 618
    .line 619
    :cond_5
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->O0:Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 620
    .line 621
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

    .line 622
    .line 623
    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 624
    .line 625
    .line 626
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->Q0:Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

    .line 627
    .line 628
    return-void
.end method

.method public static b(Landroidx/compose/ui/platform/AndroidComposeView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final c(Landroidx/compose/ui/platform/AndroidComposeView;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->M:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->K:Landroidx/collection/MutableIntIntMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->N:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->L:Landroidx/collection/MutableIntIntMap;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->b(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eq p0, v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public static d(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->u()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    check-cast v2, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->d(Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public static e(I)J
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    int-to-long v0, p0

    .line 20
    const/16 p0, 0x20

    .line 21
    .line 22
    shl-long v2, v0, p0

    .line 23
    .line 24
    or-long/2addr v0, v2

    .line 25
    return-wide v0

    .line 26
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 27
    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_1
    const-wide/32 v0, 0x7fffffff

    .line 33
    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_2
    int-to-long v0, p0

    .line 37
    return-wide v0
.end method

.method private final getCanvasHolder()Landroidx/compose/ui/graphics/CanvasHolder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->u:Landroidx/compose/ui/graphics/CanvasHolder;

    .line 6
    .line 7
    return-object p0
.end method

.method private final getDerivedIsAttached()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->z:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic getFontLoader$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLastMatrixRecalculationAnimationTime$ui$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getLegacyTextInputServiceAndroid()Landroidx/compose/ui/text/input/TextInputServiceAndroid;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->n0:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Landroidx/compose/ui/platform/a;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Landroidx/compose/ui/platform/a;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/ui/text/input/TextInputServiceAndroid;-><init>(Landroid/view/View;Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/a;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->n0:Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public static synthetic getPlayNavigationSoundEffect$ui$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getRoot$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTextInputService$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getWindowInfo$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final get_composeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 10
    .line 11
    return-object p0
.end method

.method public static j(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->H()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 9
    .line 10
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p0, :cond_0

    .line 14
    .line 15
    aget-object v2, v0, v1

    .line 16
    .line 17
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 18
    .line 19
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->j(Landroidx/compose/ui/node/LayoutNode;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public static l()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static m(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x7fffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 16
    .line 17
    if-ge v0, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/2addr v0, v1

    .line 28
    if-ge v0, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    and-int/2addr v0, v1

    .line 39
    if-ge v0, v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    and-int/2addr v0, v1

    .line 50
    if-ge v0, v4, :cond_0

    .line 51
    .line 52
    move v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v0, v3

    .line 55
    :goto_0
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    move v6, v3

    .line 62
    :goto_1
    if-ge v6, v5, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    and-int/2addr v0, v1

    .line 73
    if-ge v0, v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    and-int/2addr v0, v1

    .line 84
    if-ge v0, v4, :cond_2

    .line 85
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 v7, 0x1d

    .line 89
    .line 90
    if-lt v0, v7, :cond_1

    .line 91
    .line 92
    sget-object v0, Landroidx/compose/ui/platform/MotionEventVerifierApi29;->a:Landroidx/compose/ui/platform/MotionEventVerifierApi29;

    .line 93
    .line 94
    invoke-virtual {v0, p0, v6}, Landroidx/compose/ui/platform/MotionEventVerifierApi29;->a(Landroid/view/MotionEvent;I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    move v0, v2

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    :goto_2
    move v0, v3

    .line 104
    :goto_3
    if-nez v0, :cond_3

    .line 105
    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    return v0
.end method

.method private final setAttached(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->y:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->t:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->s0:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final set_composeViewContext(Landroidx/compose/ui/platform/ComposeViewContext;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->k0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 10
    .line 11
    cmp-long v2, v0, v2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->C()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v1, p0

    .line 25
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Landroid/view/View;

    .line 31
    .line 32
    move-object v0, v1

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->e0:[I

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    aget v3, v0, v2

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    const/4 v4, 0x1

    .line 50
    aget v5, v0, v4

    .line 51
    .line 52
    int-to-float v5, v5

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 54
    .line 55
    .line 56
    aget v1, v0, v2

    .line 57
    .line 58
    int-to-float v1, v1

    .line 59
    aget v0, v0, v4

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    sub-float/2addr v3, v1

    .line 63
    sub-float/2addr v5, v0

    .line 64
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-long v0, v0

    .line 69
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-long v2, v2

    .line 74
    const/16 v4, 0x20

    .line 75
    .line 76
    shl-long/2addr v0, v4

    .line 77
    const-wide v4, 0xffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    and-long/2addr v2, v4

    .line 83
    or-long/2addr v0, v2

    .line 84
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public final B(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->C()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-long v2, v0

    .line 23
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-long v0, v0

    .line 28
    const/16 v4, 0x20

    .line 29
    .line 30
    shl-long/2addr v2, v4

    .line 31
    const-wide v5, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v0, v5

    .line 37
    or-long/2addr v0, v2

    .line 38
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->h0:[F

    .line 39
    .line 40
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    shr-long v7, v0, v4

    .line 49
    .line 50
    long-to-int v3, v7

    .line 51
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-float/2addr v2, v3

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    and-long/2addr v0, v5

    .line 61
    long-to-int v0, v0

    .line 62
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-float/2addr p1, v0

    .line 67
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    int-to-long v0, v0

    .line 72
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    int-to-long v2, p1

    .line 77
    shl-long/2addr v0, v4

    .line 78
    and-long/2addr v2, v5

    .line 79
    or-long/2addr v0, v2

    .line 80
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 81
    .line 82
    return-void
.end method

.method public final C()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->h0:[F

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->e0:[I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->a:Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->g0:Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-virtual {v0, p0, v2, v1, v3}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->a(Landroid/view/View;[FLandroid/graphics/Matrix;[I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v2}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->f0:[F

    .line 23
    .line 24
    invoke-static {p0, v2, v0, v3}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->a(Landroid/view/View;[F[F[I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->i0:[F

    .line 28
    .line 29
    invoke-static {v2, p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->a([F[F)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final D()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/16 v0, 0x82

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final E(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->r:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->s:Ls0;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "schedule is called when outOfFrameExecutor is not available (view is detached)"

    .line 25
    .line 26
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final F(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->s()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->j:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->b0:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 38
    .line 39
    iget-wide v0, v0, Landroidx/compose/ui/layout/Placeable;->m:J

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->f(J)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->e(J)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method public final G(J)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->A()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    shr-long v1, p1, v0

    .line 7
    .line 8
    long-to-int v1, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 14
    .line 15
    shr-long/2addr v2, v0

    .line 16
    long-to-int v2, v2

    .line 17
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-float/2addr v1, v2

    .line 22
    const-wide v2, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr p1, v2

    .line 28
    long-to-int p1, p1

    .line 29
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-wide v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 34
    .line 35
    and-long/2addr v4, v2

    .line 36
    long-to-int p2, v4

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sub-float/2addr p1, p2

    .line 42
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    int-to-long v4, p2

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    int-to-long p1, p1

    .line 52
    shl-long v0, v4, v0

    .line 53
    .line 54
    and-long/2addr p1, v2

    .line 55
    or-long/2addr p1, v0

    .line 56
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->i0:[F

    .line 57
    .line 58
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 59
    .line 60
    .line 61
    move-result-wide p0

    .line 62
    return-wide p0
.end method

.method public final H(Landroid/view/MotionEvent;)I
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->L0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->L0:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v0, Landroidx/compose/ui/platform/WindowInfoImpl;->a:Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    new-instance v3, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;-><init>(I)V

    .line 26
    .line 27
    .line 28
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->N:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->d(Landroid/view/MotionEvent;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->O:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 44
    .line 45
    if-eqz v2, :cond_9

    .line 46
    .line 47
    iget-object v1, v2, Landroidx/compose/ui/input/pointer/PointerInputEvent;->a:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    add-int/lit8 v5, v5, -0x1

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x5

    .line 57
    if-ltz v5, :cond_3

    .line 58
    .line 59
    :goto_0
    add-int/lit8 v8, v5, -0x1

    .line 60
    .line 61
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    move-object v9, v5

    .line 66
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 67
    .line 68
    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputEventData;->e:Z

    .line 69
    .line 70
    if-eqz v9, :cond_1

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    if-ne v3, v7, :cond_1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    if-gez v8, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v5, v8

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :goto_1
    move-object v5, v6

    .line 83
    :cond_4
    :goto_2
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 84
    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    iget-wide v8, v5, Landroidx/compose/ui/input/pointer/PointerInputEventData;->d:J

    .line 88
    .line 89
    iput-wide v8, p0, Landroidx/compose/ui/platform/AndroidComposeView;->k:J

    .line 90
    .line 91
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->n(Landroid/view/MotionEvent;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v4, v2, p0, v1}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->a(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/platform/AndroidComposeView;Z)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    iput-object v6, v2, Landroidx/compose/ui/input/pointer/PointerInputEvent;->b:Landroid/view/MotionEvent;

    .line 100
    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    if-ne v3, v7, :cond_7

    .line 104
    .line 105
    :cond_6
    and-int/lit8 v1, p0, 0x1

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    :cond_7
    return p0

    .line 110
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    .line 124
    .line 125
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 126
    .line 127
    .line 128
    return p0

    .line 129
    :cond_9
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->b()V

    .line 130
    .line 131
    .line 132
    return v1
.end method

.method public final I(Landroid/view/MotionEvent;IJZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eq v2, v6, :cond_1

    .line 14
    .line 15
    const/4 v7, 0x6

    .line 16
    if-eq v2, v7, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v2, 0x9

    .line 25
    .line 26
    if-eq v5, v2, :cond_2

    .line 27
    .line 28
    const/16 v2, 0xa

    .line 29
    .line 30
    if-eq v5, v2, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ltz v3, :cond_3

    .line 38
    .line 39
    move v7, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v7, 0x0

    .line 42
    :goto_1
    sub-int/2addr v2, v7

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    new-array v7, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    :goto_2
    if-ge v8, v2, :cond_5

    .line 50
    .line 51
    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    .line 52
    .line 53
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 54
    .line 55
    .line 56
    aput-object v9, v7, v8

    .line 57
    .line 58
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    new-array v8, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    :goto_3
    if-ge v9, v2, :cond_6

    .line 65
    .line 66
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    .line 67
    .line 68
    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 69
    .line 70
    .line 71
    aput-object v10, v8, v9

    .line 72
    .line 73
    add-int/lit8 v9, v9, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    const/4 v9, 0x0

    .line 77
    :goto_4
    if-ge v9, v2, :cond_8

    .line 78
    .line 79
    if-ltz v3, :cond_7

    .line 80
    .line 81
    if-gt v3, v9, :cond_7

    .line 82
    .line 83
    move v10, v6

    .line 84
    goto :goto_5

    .line 85
    :cond_7
    const/4 v10, 0x0

    .line 86
    :goto_5
    add-int/2addr v10, v9

    .line 87
    aget-object v11, v7, v9

    .line 88
    .line 89
    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 90
    .line 91
    .line 92
    aget-object v11, v8, v9

    .line 93
    .line 94
    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 95
    .line 96
    .line 97
    iget v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 98
    .line 99
    iget v12, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 100
    .line 101
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    int-to-long v13, v10

    .line 106
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    int-to-long v4, v10

    .line 111
    const/16 v10, 0x20

    .line 112
    .line 113
    shl-long/2addr v13, v10

    .line 114
    const-wide v15, 0xffffffffL

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    and-long/2addr v4, v15

    .line 120
    or-long/2addr v4, v13

    .line 121
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/platform/AndroidComposeView;->q(J)J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    shr-long v13, v4, v10

    .line 126
    .line 127
    long-to-int v10, v13

    .line 128
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 133
    .line 134
    and-long/2addr v4, v15

    .line 135
    long-to-int v4, v4

    .line 136
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iput v4, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 141
    .line 142
    add-int/lit8 v9, v9, 0x1

    .line 143
    .line 144
    move/from16 v5, p2

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    if-eqz p5, :cond_9

    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    goto :goto_6

    .line 151
    :cond_9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    move v10, v4

    .line 156
    :goto_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 161
    .line 162
    .line 163
    move-result-wide v11

    .line 164
    cmp-long v3, v3, v11

    .line 165
    .line 166
    if-nez v3, :cond_a

    .line 167
    .line 168
    move-wide/from16 v3, p3

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 172
    .line 173
    .line 174
    move-result-wide v3

    .line 175
    :goto_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 196
    .line 197
    .line 198
    move-result v15

    .line 199
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    .line 200
    .line 201
    .line 202
    move-result v16

    .line 203
    move/from16 v5, p2

    .line 204
    .line 205
    move v6, v2

    .line 206
    move-wide v1, v3

    .line 207
    move-wide/from16 v3, p3

    .line 208
    .line 209
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->N:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 214
    .line 215
    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->d(Landroid/view/MotionEvent;Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeView;->O:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 223
    .line 224
    const/4 v4, 0x1

    .line 225
    invoke-virtual {v3, v2, v0, v4}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->a(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/platform/AndroidComposeView;Z)I

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final J(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p2, Lm0;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {p2, p0, v2}, Lm0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 53
    .line 54
    .line 55
    iput v3, v0, Landroidx/compose/ui/platform/AndroidComposeView$textInputSession$1;->o:I

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->p0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    .line 59
    invoke-static {p0, p2, p1, v0}, Landroidx/compose/ui/SessionMutex;->b(Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-ne p0, v1, :cond_3

    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    :goto_1
    invoke-static {}, Lf7;->h()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final K(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 17
    .line 18
    .line 19
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 20
    .line 21
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 22
    .line 23
    cmpg-float v1, v1, v2

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 28
    .line 29
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 30
    .line 31
    if-eq v0, p1, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroidx/compose/ui/unit/AndroidDensity_androidKt;->a(Landroid/content/Context;)Landroidx/compose/ui/unit/Density;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final L()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeView;->e0:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-wide v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->d0:J

    .line 9
    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    shr-long v5, v2, v4

    .line 13
    .line 14
    long-to-int v5, v5

    .line 15
    const-wide v6, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v2, v6

    .line 21
    long-to-int v2, v2

    .line 22
    const/4 v3, 0x0

    .line 23
    aget v8, v1, v3

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    if-ne v5, v8, :cond_0

    .line 27
    .line 28
    aget v10, v1, v9

    .line 29
    .line 30
    if-ne v2, v10, :cond_0

    .line 31
    .line 32
    iget-wide v10, v0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 33
    .line 34
    const-wide/16 v12, 0x0

    .line 35
    .line 36
    cmp-long v10, v10, v12

    .line 37
    .line 38
    if-gez v10, :cond_2

    .line 39
    .line 40
    :cond_0
    aget v1, v1, v9

    .line 41
    .line 42
    int-to-long v10, v8

    .line 43
    shl-long/2addr v10, v4

    .line 44
    int-to-long v12, v1

    .line 45
    and-long/2addr v6, v12

    .line 46
    or-long/2addr v6, v10

    .line 47
    iput-wide v6, v0, Landroidx/compose/ui/platform/AndroidComposeView;->d0:J

    .line 48
    .line 49
    const v1, 0x7fffffff

    .line 50
    .line 51
    .line 52
    if-eq v5, v1, :cond_2

    .line 53
    .line 54
    if-eq v2, v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 65
    .line 66
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 67
    .line 68
    move v4, v3

    .line 69
    :goto_0
    if-ge v4, v1, :cond_1

    .line 70
    .line 71
    aget-object v5, v2, v4

    .line 72
    .line 73
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 74
    .line 75
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 76
    .line 77
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 78
    .line 79
    invoke-virtual {v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->J0()V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move v1, v9

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move v1, v3

    .line 88
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->A()V

    .line 89
    .line 90
    .line 91
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->P0:Landroid/view/View;

    .line 92
    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iput-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->P0:Landroid/view/View;

    .line 100
    .line 101
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-wide v11, v0, Landroidx/compose/ui/platform/AndroidComposeView;->d0:J

    .line 106
    .line 107
    iget-wide v5, v0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 108
    .line 109
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v13

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v17

    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->h0:[F

    .line 125
    .line 126
    array-length v5, v2

    .line 127
    const/16 v6, 0x10

    .line 128
    .line 129
    const/4 v7, 0x2

    .line 130
    if-ge v5, v6, :cond_4

    .line 131
    .line 132
    move v5, v3

    .line 133
    goto/16 :goto_f

    .line 134
    .line 135
    :cond_4
    aget v5, v2, v3

    .line 136
    .line 137
    const/high16 v6, 0x3f800000    # 1.0f

    .line 138
    .line 139
    cmpg-float v5, v5, v6

    .line 140
    .line 141
    if-nez v5, :cond_5

    .line 142
    .line 143
    move v5, v9

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    move v5, v3

    .line 146
    :goto_2
    aget v8, v2, v9

    .line 147
    .line 148
    const/4 v10, 0x0

    .line 149
    cmpg-float v8, v8, v10

    .line 150
    .line 151
    if-nez v8, :cond_6

    .line 152
    .line 153
    move v8, v9

    .line 154
    goto :goto_3

    .line 155
    :cond_6
    move v8, v3

    .line 156
    :goto_3
    and-int/2addr v5, v8

    .line 157
    aget v8, v2, v7

    .line 158
    .line 159
    cmpg-float v8, v8, v10

    .line 160
    .line 161
    if-nez v8, :cond_7

    .line 162
    .line 163
    move v8, v9

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    move v8, v3

    .line 166
    :goto_4
    and-int/2addr v5, v8

    .line 167
    const/4 v8, 0x4

    .line 168
    aget v8, v2, v8

    .line 169
    .line 170
    cmpg-float v8, v8, v10

    .line 171
    .line 172
    if-nez v8, :cond_8

    .line 173
    .line 174
    move v8, v9

    .line 175
    goto :goto_5

    .line 176
    :cond_8
    move v8, v3

    .line 177
    :goto_5
    and-int/2addr v5, v8

    .line 178
    const/4 v8, 0x5

    .line 179
    aget v8, v2, v8

    .line 180
    .line 181
    cmpg-float v8, v8, v6

    .line 182
    .line 183
    if-nez v8, :cond_9

    .line 184
    .line 185
    move v8, v9

    .line 186
    goto :goto_6

    .line 187
    :cond_9
    move v8, v3

    .line 188
    :goto_6
    and-int/2addr v5, v8

    .line 189
    const/4 v8, 0x6

    .line 190
    aget v8, v2, v8

    .line 191
    .line 192
    cmpg-float v8, v8, v10

    .line 193
    .line 194
    if-nez v8, :cond_a

    .line 195
    .line 196
    move v8, v9

    .line 197
    goto :goto_7

    .line 198
    :cond_a
    move v8, v3

    .line 199
    :goto_7
    and-int/2addr v5, v8

    .line 200
    const/16 v8, 0x8

    .line 201
    .line 202
    aget v8, v2, v8

    .line 203
    .line 204
    cmpg-float v8, v8, v10

    .line 205
    .line 206
    if-nez v8, :cond_b

    .line 207
    .line 208
    move v8, v9

    .line 209
    goto :goto_8

    .line 210
    :cond_b
    move v8, v3

    .line 211
    :goto_8
    and-int/2addr v5, v8

    .line 212
    const/16 v8, 0x9

    .line 213
    .line 214
    aget v8, v2, v8

    .line 215
    .line 216
    cmpg-float v8, v8, v10

    .line 217
    .line 218
    if-nez v8, :cond_c

    .line 219
    .line 220
    move v8, v9

    .line 221
    goto :goto_9

    .line 222
    :cond_c
    move v8, v3

    .line 223
    :goto_9
    and-int/2addr v5, v8

    .line 224
    const/16 v8, 0xa

    .line 225
    .line 226
    aget v8, v2, v8

    .line 227
    .line 228
    cmpg-float v8, v8, v6

    .line 229
    .line 230
    if-nez v8, :cond_d

    .line 231
    .line 232
    move v8, v9

    .line 233
    goto :goto_a

    .line 234
    :cond_d
    move v8, v3

    .line 235
    :goto_a
    and-int/2addr v5, v8

    .line 236
    const/16 v8, 0xc

    .line 237
    .line 238
    aget v8, v2, v8

    .line 239
    .line 240
    cmpg-float v8, v8, v10

    .line 241
    .line 242
    if-nez v8, :cond_e

    .line 243
    .line 244
    move v8, v9

    .line 245
    goto :goto_b

    .line 246
    :cond_e
    move v8, v3

    .line 247
    :goto_b
    const/16 v15, 0xd

    .line 248
    .line 249
    aget v15, v2, v15

    .line 250
    .line 251
    cmpg-float v15, v15, v10

    .line 252
    .line 253
    if-nez v15, :cond_f

    .line 254
    .line 255
    move v15, v9

    .line 256
    goto :goto_c

    .line 257
    :cond_f
    move v15, v3

    .line 258
    :goto_c
    and-int/2addr v8, v15

    .line 259
    const/16 v15, 0xe

    .line 260
    .line 261
    aget v15, v2, v15

    .line 262
    .line 263
    cmpg-float v10, v15, v10

    .line 264
    .line 265
    if-nez v10, :cond_10

    .line 266
    .line 267
    move v10, v9

    .line 268
    goto :goto_d

    .line 269
    :cond_10
    move v10, v3

    .line 270
    :goto_d
    and-int/2addr v8, v10

    .line 271
    const/16 v10, 0xf

    .line 272
    .line 273
    aget v10, v2, v10

    .line 274
    .line 275
    cmpg-float v6, v10, v6

    .line 276
    .line 277
    if-nez v6, :cond_11

    .line 278
    .line 279
    move v6, v9

    .line 280
    goto :goto_e

    .line 281
    :cond_11
    move v6, v3

    .line 282
    :goto_e
    and-int/2addr v6, v8

    .line 283
    shl-int/2addr v5, v9

    .line 284
    or-int/2addr v5, v6

    .line 285
    :goto_f
    iget-object v10, v4, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 286
    .line 287
    and-int/2addr v5, v7

    .line 288
    if-nez v5, :cond_12

    .line 289
    .line 290
    :goto_10
    move-object v15, v2

    .line 291
    goto :goto_11

    .line 292
    :cond_12
    const/4 v2, 0x0

    .line 293
    goto :goto_10

    .line 294
    :goto_11
    invoke-virtual/range {v10 .. v17}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->b(JJ[FII)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_13

    .line 299
    .line 300
    iget-boolean v2, v4, Landroidx/compose/ui/spatial/RectManager;->g:Z

    .line 301
    .line 302
    if-eqz v2, :cond_14

    .line 303
    .line 304
    :cond_13
    move v3, v9

    .line 305
    :cond_14
    iput-boolean v3, v4, Landroidx/compose/ui/spatial/RectManager;->g:Z

    .line 306
    .line 307
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 308
    .line 309
    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b(Z)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->a()V

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method public final M(F)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float v1, p1, v0

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A0:F

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A0:F

    .line 21
    .line 22
    cmpl-float v0, p1, v0

    .line 23
    .line 24
    if-lez v0, :cond_3

    .line 25
    .line 26
    :cond_0
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A0:F

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    cmpg-float v0, p1, v0

    .line 30
    .line 31
    if-gez v0, :cond_3

    .line 32
    .line 33
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B0:F

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B0:F

    .line 42
    .line 43
    cmpg-float v0, p1, v0

    .line 44
    .line 45
    if-gez v0, :cond_3

    .line 46
    .line 47
    :cond_2
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B0:F

    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public final a(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_1e

    .line 2
    .line 3
    move-object p0, p1

    .line 4
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 7
    .line 8
    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 9
    .line 10
    const-string v1, "visitAncestors called on an unattached node"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    move-object v2, v0

    .line 25
    :goto_0
    const/16 v3, 0x10

    .line 26
    .line 27
    const/high16 v4, 0x200000

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz p1, :cond_c

    .line 32
    .line 33
    iget-object v7, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 34
    .line 35
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 36
    .line 37
    iget v7, v7, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 38
    .line 39
    and-int/2addr v7, v4

    .line 40
    if-eqz v7, :cond_a

    .line 41
    .line 42
    :goto_1
    if-eqz p0, :cond_a

    .line 43
    .line 44
    iget v7, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 45
    .line 46
    and-int/2addr v7, v4

    .line 47
    if-eqz v7, :cond_9

    .line 48
    .line 49
    move-object v7, p0

    .line 50
    move-object v8, v0

    .line 51
    :goto_2
    if-eqz v7, :cond_9

    .line 52
    .line 53
    instance-of v9, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 54
    .line 55
    if-eqz v9, :cond_2

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move v9, v5

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    move v9, v6

    .line 70
    :goto_3
    if-eqz v9, :cond_8

    .line 71
    .line 72
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 73
    .line 74
    and-int/2addr v9, v4

    .line 75
    if-eqz v9, :cond_8

    .line 76
    .line 77
    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 78
    .line 79
    if-eqz v9, :cond_8

    .line 80
    .line 81
    move-object v9, v7

    .line 82
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 83
    .line 84
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 85
    .line 86
    move v10, v5

    .line 87
    :goto_4
    if-eqz v9, :cond_7

    .line 88
    .line 89
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 90
    .line 91
    and-int/2addr v11, v4

    .line 92
    if-eqz v11, :cond_6

    .line 93
    .line 94
    add-int/lit8 v10, v10, 0x1

    .line 95
    .line 96
    if-ne v10, v6, :cond_3

    .line 97
    .line 98
    move-object v7, v9

    .line 99
    goto :goto_5

    .line 100
    :cond_3
    if-nez v8, :cond_4

    .line 101
    .line 102
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 103
    .line 104
    new-array v11, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 105
    .line 106
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    if-eqz v7, :cond_5

    .line 110
    .line 111
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    move-object v7, v0

    .line 115
    :cond_5
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    if-ne v10, v6, :cond_8

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_8
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    goto :goto_2

    .line 129
    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_b

    .line 137
    .line 138
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 139
    .line 140
    if-eqz p0, :cond_b

    .line 141
    .line 142
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_b
    move-object p0, v0

    .line 146
    goto :goto_0

    .line 147
    :cond_c
    if-nez v2, :cond_d

    .line 148
    .line 149
    goto/16 :goto_e

    .line 150
    .line 151
    :cond_d
    if-eqz p2, :cond_1b

    .line 152
    .line 153
    iget-object p0, p2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 154
    .line 155
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 156
    .line 157
    if-nez p0, :cond_e

    .line 158
    .line 159
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_e
    iget-object p0, p2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 163
    .line 164
    invoke-static {p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    move-object p2, v0

    .line 169
    :goto_6
    if-eqz p1, :cond_1a

    .line 170
    .line 171
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 172
    .line 173
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 174
    .line 175
    iget v1, v1, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 176
    .line 177
    and-int/2addr v1, v4

    .line 178
    if-eqz v1, :cond_18

    .line 179
    .line 180
    :goto_7
    if-eqz p0, :cond_18

    .line 181
    .line 182
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 183
    .line 184
    and-int/2addr v1, v4

    .line 185
    if-eqz v1, :cond_17

    .line 186
    .line 187
    move-object v1, p0

    .line 188
    move-object v7, v0

    .line 189
    :goto_8
    if-eqz v1, :cond_17

    .line 190
    .line 191
    instance-of v8, v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 192
    .line 193
    if-eqz v8, :cond_10

    .line 194
    .line 195
    if-nez p2, :cond_f

    .line 196
    .line 197
    sget-object p2, Landroidx/collection/ScatterSetKt;->a:Landroidx/collection/MutableScatterSet;

    .line 198
    .line 199
    new-instance p2, Landroidx/collection/MutableScatterSet;

    .line 200
    .line 201
    invoke-direct {p2}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 202
    .line 203
    .line 204
    :cond_f
    invoke-virtual {p2, v1}, Landroidx/collection/MutableScatterSet;->d(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move v8, v5

    .line 208
    goto :goto_9

    .line 209
    :cond_10
    move v8, v6

    .line 210
    :goto_9
    if-eqz v8, :cond_16

    .line 211
    .line 212
    iget v8, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 213
    .line 214
    and-int/2addr v8, v4

    .line 215
    if-eqz v8, :cond_16

    .line 216
    .line 217
    instance-of v8, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 218
    .line 219
    if-eqz v8, :cond_16

    .line 220
    .line 221
    move-object v8, v1

    .line 222
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 223
    .line 224
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 225
    .line 226
    move v9, v5

    .line 227
    :goto_a
    if-eqz v8, :cond_15

    .line 228
    .line 229
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 230
    .line 231
    and-int/2addr v10, v4

    .line 232
    if-eqz v10, :cond_14

    .line 233
    .line 234
    add-int/lit8 v9, v9, 0x1

    .line 235
    .line 236
    if-ne v9, v6, :cond_11

    .line 237
    .line 238
    move-object v1, v8

    .line 239
    goto :goto_b

    .line 240
    :cond_11
    if-nez v7, :cond_12

    .line 241
    .line 242
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 243
    .line 244
    new-array v10, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 245
    .line 246
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_12
    if-eqz v1, :cond_13

    .line 250
    .line 251
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    move-object v1, v0

    .line 255
    :cond_13
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :cond_14
    :goto_b
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_15
    if-ne v9, v6, :cond_16

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_16
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    goto :goto_8

    .line 269
    :cond_17
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_18
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    if-eqz p1, :cond_19

    .line 277
    .line 278
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 279
    .line 280
    if-eqz p0, :cond_19

    .line 281
    .line 282
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_19
    move-object p0, v0

    .line 286
    goto :goto_6

    .line 287
    :cond_1a
    move-object v0, p2

    .line 288
    :cond_1b
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    move p1, v5

    .line 293
    :goto_c
    if-ge p1, p0, :cond_1e

    .line 294
    .line 295
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    check-cast p2, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 300
    .line 301
    if-eqz v0, :cond_1c

    .line 302
    .line 303
    invoke-virtual {v0, p2}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    goto :goto_d

    .line 308
    :cond_1c
    move v1, v5

    .line 309
    :goto_d
    if-nez v1, :cond_1d

    .line 310
    .line 311
    invoke-interface {p2}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->k0()V

    .line 312
    .line 313
    .line 314
    :cond_1d
    add-int/lit8 p1, p1, 0x1

    .line 315
    .line 316
    goto :goto_c

    .line 317
    :cond_1e
    :goto_e
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 8
    .line 9
    iget-boolean v1, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_c

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 16
    .line 17
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 18
    .line 19
    const-string v2, "visitSubtreeIf called on an unattached node"

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    const/16 v3, 0x10

    .line 29
    .line 30
    new-array v4, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 31
    .line 32
    invoke-direct {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 36
    .line 37
    iget-object v4, v0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 38
    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget v0, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 49
    .line 50
    if-eqz v0, :cond_1a

    .line 51
    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 59
    .line 60
    iget v4, v0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 61
    .line 62
    and-int/lit16 v4, v4, 0x400

    .line 63
    .line 64
    if-eqz v4, :cond_19

    .line 65
    .line 66
    move-object v4, v0

    .line 67
    :goto_1
    if-eqz v4, :cond_19

    .line 68
    .line 69
    iget-boolean v5, v4, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 70
    .line 71
    if-eqz v5, :cond_19

    .line 72
    .line 73
    iget v5, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 74
    .line 75
    and-int/lit16 v5, v5, 0x400

    .line 76
    .line 77
    if-eqz v5, :cond_18

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    move-object v6, v4

    .line 81
    move-object v7, v5

    .line 82
    :goto_2
    if-eqz v6, :cond_18

    .line 83
    .line 84
    instance-of v8, v6, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 85
    .line 86
    const/4 v9, 0x1

    .line 87
    const/4 v10, 0x0

    .line 88
    if-eqz v8, :cond_11

    .line 89
    .line 90
    check-cast v6, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 91
    .line 92
    iget-boolean v8, v6, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 93
    .line 94
    if-eqz v8, :cond_17

    .line 95
    .line 96
    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iget-boolean v6, v6, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 101
    .line 102
    if-eqz v6, :cond_17

    .line 103
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 112
    .line 113
    iget-object p2, p2, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 114
    .line 115
    iget-boolean p3, p2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 116
    .line 117
    if-nez p3, :cond_3

    .line 118
    .line 119
    goto/16 :goto_9

    .line 120
    .line 121
    :cond_3
    iget-object p3, p2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 122
    .line 123
    iget-boolean p3, p3, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 124
    .line 125
    if-nez p3, :cond_4

    .line 126
    .line 127
    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    new-instance p3, Landroidx/compose/runtime/collection/MutableVector;

    .line 131
    .line 132
    new-array v0, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 133
    .line 134
    invoke-direct {p3, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object p2, p2, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 138
    .line 139
    iget-object v0, p2, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 140
    .line 141
    if-nez v0, :cond_5

    .line 142
    .line 143
    invoke-static {p3, p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :goto_3
    iget p2, p3, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 151
    .line 152
    if-eqz p2, :cond_10

    .line 153
    .line 154
    add-int/lit8 p2, p2, -0x1

    .line 155
    .line 156
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    check-cast p2, Landroidx/compose/ui/Modifier$Node;

    .line 161
    .line 162
    iget v0, p2, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 163
    .line 164
    and-int/lit16 v0, v0, 0x400

    .line 165
    .line 166
    if-eqz v0, :cond_f

    .line 167
    .line 168
    move-object v0, p2

    .line 169
    :goto_4
    if-eqz v0, :cond_f

    .line 170
    .line 171
    iget-boolean v1, v0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 172
    .line 173
    if-eqz v1, :cond_f

    .line 174
    .line 175
    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 176
    .line 177
    and-int/lit16 v1, v1, 0x400

    .line 178
    .line 179
    if-eqz v1, :cond_e

    .line 180
    .line 181
    move-object v1, v0

    .line 182
    move-object v2, v5

    .line 183
    :goto_5
    if-eqz v1, :cond_e

    .line 184
    .line 185
    instance-of v4, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 186
    .line 187
    if-eqz v4, :cond_7

    .line 188
    .line 189
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 190
    .line 191
    iget-boolean v4, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 192
    .line 193
    if-nez v4, :cond_6

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_6
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->a1()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    iget-boolean v6, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 201
    .line 202
    if-eqz v6, :cond_d

    .line 203
    .line 204
    iget-boolean v1, v1, Landroidx/compose/ui/focus/FocusTargetNode;->x:Z

    .line 205
    .line 206
    if-nez v1, :cond_d

    .line 207
    .line 208
    iget-boolean v1, v4, Landroidx/compose/ui/focus/FocusPropertiesImpl;->a:Z

    .line 209
    .line 210
    if-eqz v1, :cond_d

    .line 211
    .line 212
    goto/16 :goto_c

    .line 213
    .line 214
    :cond_7
    iget v4, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 215
    .line 216
    and-int/lit16 v4, v4, 0x400

    .line 217
    .line 218
    if-eqz v4, :cond_d

    .line 219
    .line 220
    instance-of v4, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 221
    .line 222
    if-eqz v4, :cond_d

    .line 223
    .line 224
    move-object v4, v1

    .line 225
    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 226
    .line 227
    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 228
    .line 229
    move v6, v10

    .line 230
    :goto_6
    if-eqz v4, :cond_c

    .line 231
    .line 232
    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 233
    .line 234
    and-int/lit16 v7, v7, 0x400

    .line 235
    .line 236
    if-eqz v7, :cond_b

    .line 237
    .line 238
    add-int/lit8 v6, v6, 0x1

    .line 239
    .line 240
    if-ne v6, v9, :cond_8

    .line 241
    .line 242
    move-object v1, v4

    .line 243
    goto :goto_7

    .line 244
    :cond_8
    if-nez v2, :cond_9

    .line 245
    .line 246
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 247
    .line 248
    new-array v7, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 249
    .line 250
    invoke-direct {v2, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_9
    if-eqz v1, :cond_a

    .line 254
    .line 255
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    move-object v1, v5

    .line 259
    :cond_a
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    :cond_b
    :goto_7
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_c
    if-ne v6, v9, :cond_d

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_d
    :goto_8
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    goto :goto_5

    .line 273
    :cond_e
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :cond_f
    invoke-static {p3, p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_3

    .line 280
    .line 281
    :cond_10
    :goto_9
    if-eqz p1, :cond_1a

    .line 282
    .line 283
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_11
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 288
    .line 289
    and-int/lit16 v8, v8, 0x400

    .line 290
    .line 291
    if-eqz v8, :cond_17

    .line 292
    .line 293
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 294
    .line 295
    if-eqz v8, :cond_17

    .line 296
    .line 297
    move-object v8, v6

    .line 298
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 299
    .line 300
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 301
    .line 302
    :goto_a
    if-eqz v8, :cond_16

    .line 303
    .line 304
    iget v11, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 305
    .line 306
    and-int/lit16 v11, v11, 0x400

    .line 307
    .line 308
    if-eqz v11, :cond_15

    .line 309
    .line 310
    add-int/lit8 v10, v10, 0x1

    .line 311
    .line 312
    if-ne v10, v9, :cond_12

    .line 313
    .line 314
    move-object v6, v8

    .line 315
    goto :goto_b

    .line 316
    :cond_12
    if-nez v7, :cond_13

    .line 317
    .line 318
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 319
    .line 320
    new-array v11, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 321
    .line 322
    invoke-direct {v7, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_13
    if-eqz v6, :cond_14

    .line 326
    .line 327
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    move-object v6, v5

    .line 331
    :cond_14
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    :cond_15
    :goto_b
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :cond_16
    if-ne v10, v9, :cond_17

    .line 338
    .line 339
    goto/16 :goto_2

    .line 340
    .line 341
    :cond_17
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :cond_18
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :cond_19
    invoke-static {v1, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_0

    .line 355
    .line 356
    :cond_1a
    :goto_c
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 19
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 21
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 23
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final autofill(Landroid/util/SparseArray;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    move v3, v1

    .line 13
    :goto_0
    if-ge v3, v2, :cond_4

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 24
    .line 25
    iget-object v6, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->k:Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 26
    .line 27
    iget-object v6, v6, Landroidx/compose/ui/semantics/SemanticsOwner;->c:Landroidx/collection/IntObjectMap;

    .line 28
    .line 29
    invoke-virtual {v6, v4}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 34
    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 46
    .line 47
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 48
    .line 49
    invoke-virtual {v4, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const/4 v7, 0x0

    .line 54
    if-nez v6, :cond_0

    .line 55
    .line 56
    move-object v6, v7

    .line 57
    :cond_0
    check-cast v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 58
    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    iget-object v6, v6, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 62
    .line 63
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString;

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-direct {v8, v9}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v6, v8}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Ljava/lang/Boolean;

    .line 85
    .line 86
    :cond_1
    sget-object v6, Landroidx/compose/ui/semantics/SemanticsActions;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 87
    .line 88
    invoke-virtual {v4, v6}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move-object v7, v4

    .line 96
    :goto_1
    check-cast v7, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 97
    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    iget-object v4, v7, Landroidx/compose/ui/semantics/AccessibilityAction;->b:Lkotlin/Function;

    .line 101
    .line 102
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    new-instance v6, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 107
    .line 108
    invoke-direct {v6, v5}, Landroidx/compose/ui/autofill/AndroidFillableData;-><init>(Landroid/view/autofill/AutofillValue;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Ljava/lang/Boolean;

    .line 116
    .line 117
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofill()Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-eqz p0, :cond_b

    .line 125
    .line 126
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidAutofill;->b:Landroidx/compose/ui/autofill/AutofillTree;

    .line 127
    .line 128
    iget-object v0, p0, Landroidx/compose/ui/autofill/AutofillTree;->a:Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    :goto_2
    if-ge v1, v0, :cond_b

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Landroid/view/autofill/AutofillValue;

    .line 152
    .line 153
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    iget-object v3, p0, Landroidx/compose/ui/autofill/AutofillTree;->a:Ljava/util/LinkedHashMap;

    .line 167
    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-nez v2, :cond_6

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    invoke-static {}, Lio/sentry/d;->i()V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_7
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isDate()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_a

    .line 188
    .line 189
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isList()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_9

    .line 194
    .line 195
    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_8

    .line 200
    .line 201
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_8
    new-instance p0, Lkotlin/NotImplementedError;

    .line 205
    .line 206
    const-string p1, "An operation is not implemented: b/138604541:  Add onFill() callback for toggle"

    .line 207
    .line 208
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :cond_9
    new-instance p0, Lkotlin/NotImplementedError;

    .line 213
    .line 214
    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for list"

    .line 215
    .line 216
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :cond_a
    new-instance p0, Lkotlin/NotImplementedError;

    .line 221
    .line 222
    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for date"

    .line 223
    .line 224
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_b
    :goto_4
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->k:J

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m(IJZ)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->k:J

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 5
    .line 6
    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m(IJZ)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->J:Landroidx/collection/MutableObjectList;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->j(Landroidx/compose/ui/node/LayoutNode;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->r(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->i()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->m()V

    .line 25
    .line 26
    .line 27
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->L:Z

    .line 28
    .line 29
    const-string v1, "AndroidOwner:draw"

    .line 30
    .line 31
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getCanvasHolder()Landroidx/compose/ui/graphics/CanvasHolder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, v1, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 39
    .line 40
    iget-object v3, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 41
    .line 42
    iput-object p1, v2, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-virtual {v4, v2, v5}, Landroidx/compose/ui/node/LayoutNode;->i(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v1, Landroidx/compose/ui/graphics/CanvasHolder;->a:Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 53
    .line 54
    iput-object v3, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->e()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget v1, v0, Landroidx/collection/ObjectList;->b:I

    .line 64
    .line 65
    move v3, v2

    .line 66
    :goto_0
    if-ge v3, v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroidx/compose/ui/node/OwnedLayer;

    .line 73
    .line 74
    check-cast v4, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->g()V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    sget v1, Landroidx/compose/ui/platform/ViewLayer;->j:I

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/collection/MutableObjectList;->k()V

    .line 85
    .line 86
    .line 87
    iput-boolean v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->L:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->K:Landroidx/collection/MutableObjectList;

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->h(Landroidx/collection/ObjectList;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->k()V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->l()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A0:F

    .line 109
    .line 110
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->C0:F

    .line 111
    .line 112
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A0:F

    .line 119
    .line 120
    iput v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->C0:F

    .line 121
    .line 122
    invoke-static {p0, v0}, Landroidx/compose/ui/platform/Api35Impl;->a(Landroid/view/View;F)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->u:Landroid/view/View;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B0:F

    .line 130
    .line 131
    iget v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->D0:F

    .line 132
    .line 133
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B0:F

    .line 140
    .line 141
    iput v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->D0:F

    .line 142
    .line 143
    invoke-static {v0, v1}, Landroidx/compose/ui/platform/Api35Impl;->a(Landroid/view/View;F)V

    .line 144
    .line 145
    .line 146
    :cond_4
    iget v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B0:F

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_5

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 162
    .line 163
    .line 164
    :cond_5
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 165
    .line 166
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A0:F

    .line 167
    .line 168
    iput p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B0:F

    .line 169
    .line 170
    :cond_6
    return-void

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 173
    .line 174
    .line 175
    throw p0
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G0:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F0:Ls0;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ne v3, v1, :cond_0

    .line 18
    .line 19
    iput-boolean v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G0:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ls0;->run()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->m(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_77

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto/16 :goto_3d

    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/16 v4, 0x10

    .line 45
    .line 46
    const-string v5, "visitAncestors called on an unattached node"

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    if-ne v0, v1, :cond_33

    .line 50
    .line 51
    const/high16 v0, 0x400000

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_31

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/16 v1, 0x1a

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 95
    .line 96
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 97
    .line 98
    iget-boolean v1, v1, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Z

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    const-string p0, "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated."

    .line 103
    .line 104
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_3
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 111
    .line 112
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_10

    .line 117
    .line 118
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 119
    .line 120
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 121
    .line 122
    if-nez v1, :cond_4

    .line 123
    .line 124
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 128
    .line 129
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_1
    if-eqz v0, :cond_f

    .line 134
    .line 135
    iget-object v7, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 136
    .line 137
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 138
    .line 139
    iget v7, v7, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 140
    .line 141
    and-int/lit16 v7, v7, 0x4000

    .line 142
    .line 143
    if-eqz v7, :cond_d

    .line 144
    .line 145
    :goto_2
    if-eqz v1, :cond_d

    .line 146
    .line 147
    iget v7, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 148
    .line 149
    and-int/lit16 v7, v7, 0x4000

    .line 150
    .line 151
    if-eqz v7, :cond_c

    .line 152
    .line 153
    move-object v7, v1

    .line 154
    move-object v8, v3

    .line 155
    :goto_3
    if-eqz v7, :cond_c

    .line 156
    .line 157
    instance-of v9, v7, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 158
    .line 159
    if-eqz v9, :cond_5

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_5
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 163
    .line 164
    and-int/lit16 v9, v9, 0x4000

    .line 165
    .line 166
    if-eqz v9, :cond_b

    .line 167
    .line 168
    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 169
    .line 170
    if-eqz v9, :cond_b

    .line 171
    .line 172
    move-object v9, v7

    .line 173
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 174
    .line 175
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 176
    .line 177
    move v10, v2

    .line 178
    :goto_4
    if-eqz v9, :cond_a

    .line 179
    .line 180
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 181
    .line 182
    and-int/lit16 v11, v11, 0x4000

    .line 183
    .line 184
    if-eqz v11, :cond_9

    .line 185
    .line 186
    add-int/lit8 v10, v10, 0x1

    .line 187
    .line 188
    if-ne v10, v6, :cond_6

    .line 189
    .line 190
    move-object v7, v9

    .line 191
    goto :goto_5

    .line 192
    :cond_6
    if-nez v8, :cond_7

    .line 193
    .line 194
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 195
    .line 196
    new-array v11, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 197
    .line 198
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    if-eqz v7, :cond_8

    .line 202
    .line 203
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    move-object v7, v3

    .line 207
    :cond_8
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_9
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_a
    if-ne v10, v6, :cond_b

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_b
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    goto :goto_3

    .line 221
    :cond_c
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-eqz v0, :cond_e

    .line 229
    .line 230
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 231
    .line 232
    if-eqz v1, :cond_e

    .line 233
    .line 234
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_e
    move-object v1, v3

    .line 238
    goto :goto_1

    .line 239
    :cond_f
    move-object v7, v3

    .line 240
    :goto_6
    check-cast v7, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_10
    move-object v7, v3

    .line 244
    :goto_7
    if-eqz v7, :cond_32

    .line 245
    .line 246
    move-object v0, v7

    .line 247
    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    .line 248
    .line 249
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 250
    .line 251
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 252
    .line 253
    if-nez v1, :cond_11

    .line 254
    .line 255
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_11
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 259
    .line 260
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 261
    .line 262
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    move-object v7, v3

    .line 267
    :goto_8
    if-eqz v5, :cond_1d

    .line 268
    .line 269
    iget-object v8, v5, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 270
    .line 271
    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 272
    .line 273
    iget v8, v8, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 274
    .line 275
    and-int/lit16 v8, v8, 0x4000

    .line 276
    .line 277
    if-eqz v8, :cond_1b

    .line 278
    .line 279
    :goto_9
    if-eqz v1, :cond_1b

    .line 280
    .line 281
    iget v8, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 282
    .line 283
    and-int/lit16 v8, v8, 0x4000

    .line 284
    .line 285
    if-eqz v8, :cond_1a

    .line 286
    .line 287
    move-object v8, v1

    .line 288
    move-object v9, v3

    .line 289
    :goto_a
    if-eqz v8, :cond_1a

    .line 290
    .line 291
    instance-of v10, v8, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 292
    .line 293
    if-eqz v10, :cond_13

    .line 294
    .line 295
    if-nez v7, :cond_12

    .line 296
    .line 297
    new-instance v7, Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .line 301
    .line 302
    :cond_12
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move v10, v2

    .line 306
    goto :goto_b

    .line 307
    :cond_13
    move v10, v6

    .line 308
    :goto_b
    if-eqz v10, :cond_19

    .line 309
    .line 310
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 311
    .line 312
    and-int/lit16 v10, v10, 0x4000

    .line 313
    .line 314
    if-eqz v10, :cond_19

    .line 315
    .line 316
    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 317
    .line 318
    if-eqz v10, :cond_19

    .line 319
    .line 320
    move-object v10, v8

    .line 321
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 322
    .line 323
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 324
    .line 325
    move v11, v2

    .line 326
    :goto_c
    if-eqz v10, :cond_18

    .line 327
    .line 328
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 329
    .line 330
    and-int/lit16 v12, v12, 0x4000

    .line 331
    .line 332
    if-eqz v12, :cond_17

    .line 333
    .line 334
    add-int/lit8 v11, v11, 0x1

    .line 335
    .line 336
    if-ne v11, v6, :cond_14

    .line 337
    .line 338
    move-object v8, v10

    .line 339
    goto :goto_d

    .line 340
    :cond_14
    if-nez v9, :cond_15

    .line 341
    .line 342
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 343
    .line 344
    new-array v12, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 345
    .line 346
    invoke-direct {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    :cond_15
    if-eqz v8, :cond_16

    .line 350
    .line 351
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    move-object v8, v3

    .line 355
    :cond_16
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    :cond_17
    :goto_d
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 359
    .line 360
    goto :goto_c

    .line 361
    :cond_18
    if-ne v11, v6, :cond_19

    .line 362
    .line 363
    goto :goto_a

    .line 364
    :cond_19
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 365
    .line 366
    .line 367
    move-result-object v8

    .line 368
    goto :goto_a

    .line 369
    :cond_1a
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_1b
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    if-eqz v5, :cond_1c

    .line 377
    .line 378
    iget-object v1, v5, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 379
    .line 380
    if-eqz v1, :cond_1c

    .line 381
    .line 382
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_1c
    move-object v1, v3

    .line 386
    goto :goto_8

    .line 387
    :cond_1d
    if-eqz v7, :cond_1f

    .line 388
    .line 389
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    add-int/lit8 v1, v1, -0x1

    .line 394
    .line 395
    if-ltz v1, :cond_1f

    .line 396
    .line 397
    :goto_e
    add-int/lit8 v5, v1, -0x1

    .line 398
    .line 399
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    if-gez v5, :cond_1e

    .line 409
    .line 410
    goto :goto_f

    .line 411
    :cond_1e
    move v1, v5

    .line 412
    goto :goto_e

    .line 413
    :cond_1f
    :goto_f
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 414
    .line 415
    move-object v5, v3

    .line 416
    :goto_10
    if-eqz v1, :cond_27

    .line 417
    .line 418
    instance-of v8, v1, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 419
    .line 420
    if-eqz v8, :cond_20

    .line 421
    .line 422
    check-cast v1, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 423
    .line 424
    goto :goto_13

    .line 425
    :cond_20
    iget v8, v1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 426
    .line 427
    and-int/lit16 v8, v8, 0x4000

    .line 428
    .line 429
    if-eqz v8, :cond_26

    .line 430
    .line 431
    instance-of v8, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 432
    .line 433
    if-eqz v8, :cond_26

    .line 434
    .line 435
    move-object v8, v1

    .line 436
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 437
    .line 438
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 439
    .line 440
    move v9, v2

    .line 441
    :goto_11
    if-eqz v8, :cond_25

    .line 442
    .line 443
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 444
    .line 445
    and-int/lit16 v10, v10, 0x4000

    .line 446
    .line 447
    if-eqz v10, :cond_24

    .line 448
    .line 449
    add-int/lit8 v9, v9, 0x1

    .line 450
    .line 451
    if-ne v9, v6, :cond_21

    .line 452
    .line 453
    move-object v1, v8

    .line 454
    goto :goto_12

    .line 455
    :cond_21
    if-nez v5, :cond_22

    .line 456
    .line 457
    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    .line 458
    .line 459
    new-array v10, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 460
    .line 461
    invoke-direct {v5, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    :cond_22
    if-eqz v1, :cond_23

    .line 465
    .line 466
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    move-object v1, v3

    .line 470
    :cond_23
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    :cond_24
    :goto_12
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 474
    .line 475
    goto :goto_11

    .line 476
    :cond_25
    if-ne v9, v6, :cond_26

    .line 477
    .line 478
    goto :goto_10

    .line 479
    :cond_26
    :goto_13
    invoke-static {v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    goto :goto_10

    .line 484
    :cond_27
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 485
    .line 486
    .line 487
    move-result p0

    .line 488
    if-eqz p0, :cond_28

    .line 489
    .line 490
    goto/16 :goto_19

    .line 491
    .line 492
    :cond_28
    iget-object p0, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 493
    .line 494
    move-object p1, v3

    .line 495
    :goto_14
    if-eqz p0, :cond_30

    .line 496
    .line 497
    instance-of v0, p0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 498
    .line 499
    if-eqz v0, :cond_29

    .line 500
    .line 501
    check-cast p0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 502
    .line 503
    goto :goto_17

    .line 504
    :cond_29
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 505
    .line 506
    and-int/lit16 v0, v0, 0x4000

    .line 507
    .line 508
    if-eqz v0, :cond_2f

    .line 509
    .line 510
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 511
    .line 512
    if-eqz v0, :cond_2f

    .line 513
    .line 514
    move-object v0, p0

    .line 515
    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 516
    .line 517
    iget-object v0, v0, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 518
    .line 519
    move v1, v2

    .line 520
    :goto_15
    if-eqz v0, :cond_2e

    .line 521
    .line 522
    iget v5, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 523
    .line 524
    and-int/lit16 v5, v5, 0x4000

    .line 525
    .line 526
    if-eqz v5, :cond_2d

    .line 527
    .line 528
    add-int/lit8 v1, v1, 0x1

    .line 529
    .line 530
    if-ne v1, v6, :cond_2a

    .line 531
    .line 532
    move-object p0, v0

    .line 533
    goto :goto_16

    .line 534
    :cond_2a
    if-nez p1, :cond_2b

    .line 535
    .line 536
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 537
    .line 538
    new-array v5, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 539
    .line 540
    invoke-direct {p1, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    :cond_2b
    if-eqz p0, :cond_2c

    .line 544
    .line 545
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    move-object p0, v3

    .line 549
    :cond_2c
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    :cond_2d
    :goto_16
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 553
    .line 554
    goto :goto_15

    .line 555
    :cond_2e
    if-ne v1, v6, :cond_2f

    .line 556
    .line 557
    goto :goto_14

    .line 558
    :cond_2f
    :goto_17
    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    goto :goto_14

    .line 563
    :cond_30
    if-eqz v7, :cond_32

    .line 564
    .line 565
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 566
    .line 567
    .line 568
    move-result p0

    .line 569
    move p1, v2

    .line 570
    :goto_18
    if-ge p1, p0, :cond_32

    .line 571
    .line 572
    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    check-cast v0, Landroidx/compose/ui/input/rotary/RotaryInputModifierNode;

    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    add-int/lit8 p1, p1, 0x1

    .line 582
    .line 583
    goto :goto_18

    .line 584
    :cond_31
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->i(Landroid/view/MotionEvent;)I

    .line 585
    .line 586
    .line 587
    move-result p0

    .line 588
    and-int/lit8 p0, p0, 0x4

    .line 589
    .line 590
    if-eqz p0, :cond_32

    .line 591
    .line 592
    :goto_19
    return v6

    .line 593
    :cond_32
    return v2

    .line 594
    :cond_33
    const/high16 v0, 0x200000

    .line 595
    .line 596
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-eqz v1, :cond_76

    .line 601
    .line 602
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->N:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 603
    .line 604
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeView;->m:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 605
    .line 606
    invoke-virtual {v1, p1, v7}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c(Landroid/view/MotionEvent;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->I0:Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;

    .line 611
    .line 612
    if-eqz p1, :cond_5a

    .line 613
    .line 614
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 619
    .line 620
    iget-object v7, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 621
    .line 622
    iget-boolean v7, v7, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Z

    .line 623
    .line 624
    if-eqz v7, :cond_35

    .line 625
    .line 626
    const-string p0, "FocusRelatedWarning: Dispatching indirect pointer event while the focus system is invalidated."

    .line 627
    .line 628
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 629
    .line 630
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    :cond_34
    move p0, v2

    .line 634
    goto/16 :goto_2d

    .line 635
    .line 636
    :cond_35
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 637
    .line 638
    .line 639
    move-result-object p0

    .line 640
    if-eqz p0, :cond_42

    .line 641
    .line 642
    iget-object v7, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 643
    .line 644
    iget-boolean v7, v7, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 645
    .line 646
    if-nez v7, :cond_36

    .line 647
    .line 648
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    :cond_36
    iget-object v7, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 652
    .line 653
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 654
    .line 655
    .line 656
    move-result-object p0

    .line 657
    :goto_1a
    if-eqz p0, :cond_41

    .line 658
    .line 659
    iget-object v8, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 660
    .line 661
    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 662
    .line 663
    iget v8, v8, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 664
    .line 665
    and-int/2addr v8, v0

    .line 666
    if-eqz v8, :cond_3f

    .line 667
    .line 668
    :goto_1b
    if-eqz v7, :cond_3f

    .line 669
    .line 670
    iget v8, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 671
    .line 672
    and-int/2addr v8, v0

    .line 673
    if-eqz v8, :cond_3e

    .line 674
    .line 675
    move-object v9, v3

    .line 676
    move-object v8, v7

    .line 677
    :goto_1c
    if-eqz v8, :cond_3e

    .line 678
    .line 679
    instance-of v10, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 680
    .line 681
    if-eqz v10, :cond_37

    .line 682
    .line 683
    goto :goto_1f

    .line 684
    :cond_37
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 685
    .line 686
    and-int/2addr v10, v0

    .line 687
    if-eqz v10, :cond_3d

    .line 688
    .line 689
    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 690
    .line 691
    if-eqz v10, :cond_3d

    .line 692
    .line 693
    move-object v10, v8

    .line 694
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 695
    .line 696
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 697
    .line 698
    move v11, v2

    .line 699
    :goto_1d
    if-eqz v10, :cond_3c

    .line 700
    .line 701
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 702
    .line 703
    and-int/2addr v12, v0

    .line 704
    if-eqz v12, :cond_3b

    .line 705
    .line 706
    add-int/lit8 v11, v11, 0x1

    .line 707
    .line 708
    if-ne v11, v6, :cond_38

    .line 709
    .line 710
    move-object v8, v10

    .line 711
    goto :goto_1e

    .line 712
    :cond_38
    if-nez v9, :cond_39

    .line 713
    .line 714
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 715
    .line 716
    new-array v12, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 717
    .line 718
    invoke-direct {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 719
    .line 720
    .line 721
    :cond_39
    if-eqz v8, :cond_3a

    .line 722
    .line 723
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    move-object v8, v3

    .line 727
    :cond_3a
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    :cond_3b
    :goto_1e
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 731
    .line 732
    goto :goto_1d

    .line 733
    :cond_3c
    if-ne v11, v6, :cond_3d

    .line 734
    .line 735
    goto :goto_1c

    .line 736
    :cond_3d
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 737
    .line 738
    .line 739
    move-result-object v8

    .line 740
    goto :goto_1c

    .line 741
    :cond_3e
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 742
    .line 743
    goto :goto_1b

    .line 744
    :cond_3f
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 745
    .line 746
    .line 747
    move-result-object p0

    .line 748
    if-eqz p0, :cond_40

    .line 749
    .line 750
    iget-object v7, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 751
    .line 752
    if-eqz v7, :cond_40

    .line 753
    .line 754
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 755
    .line 756
    goto :goto_1a

    .line 757
    :cond_40
    move-object v7, v3

    .line 758
    goto :goto_1a

    .line 759
    :cond_41
    move-object v8, v3

    .line 760
    :goto_1f
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 761
    .line 762
    goto :goto_20

    .line 763
    :cond_42
    move-object v8, v3

    .line 764
    :goto_20
    if-eqz v8, :cond_55

    .line 765
    .line 766
    move-object p0, v8

    .line 767
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 768
    .line 769
    iget-object v7, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 770
    .line 771
    iget-boolean v7, v7, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 772
    .line 773
    if-nez v7, :cond_43

    .line 774
    .line 775
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    :cond_43
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 779
    .line 780
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 781
    .line 782
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 783
    .line 784
    .line 785
    move-result-object v5

    .line 786
    move-object v7, v3

    .line 787
    :goto_21
    if-eqz v5, :cond_4f

    .line 788
    .line 789
    iget-object v9, v5, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 790
    .line 791
    iget-object v9, v9, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 792
    .line 793
    iget v9, v9, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 794
    .line 795
    and-int/2addr v9, v0

    .line 796
    if-eqz v9, :cond_4d

    .line 797
    .line 798
    :goto_22
    if-eqz p0, :cond_4d

    .line 799
    .line 800
    iget v9, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 801
    .line 802
    and-int/2addr v9, v0

    .line 803
    if-eqz v9, :cond_4c

    .line 804
    .line 805
    move-object v9, p0

    .line 806
    move-object v10, v3

    .line 807
    :goto_23
    if-eqz v9, :cond_4c

    .line 808
    .line 809
    instance-of v11, v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 810
    .line 811
    if-eqz v11, :cond_45

    .line 812
    .line 813
    if-nez v7, :cond_44

    .line 814
    .line 815
    new-instance v7, Ljava/util/ArrayList;

    .line 816
    .line 817
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .line 819
    .line 820
    :cond_44
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    move v11, v2

    .line 824
    goto :goto_24

    .line 825
    :cond_45
    move v11, v6

    .line 826
    :goto_24
    if-eqz v11, :cond_4b

    .line 827
    .line 828
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 829
    .line 830
    and-int/2addr v11, v0

    .line 831
    if-eqz v11, :cond_4b

    .line 832
    .line 833
    instance-of v11, v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 834
    .line 835
    if-eqz v11, :cond_4b

    .line 836
    .line 837
    move-object v11, v9

    .line 838
    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 839
    .line 840
    iget-object v11, v11, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 841
    .line 842
    move v12, v2

    .line 843
    :goto_25
    if-eqz v11, :cond_4a

    .line 844
    .line 845
    iget v13, v11, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 846
    .line 847
    and-int/2addr v13, v0

    .line 848
    if-eqz v13, :cond_49

    .line 849
    .line 850
    add-int/lit8 v12, v12, 0x1

    .line 851
    .line 852
    if-ne v12, v6, :cond_46

    .line 853
    .line 854
    move-object v9, v11

    .line 855
    goto :goto_26

    .line 856
    :cond_46
    if-nez v10, :cond_47

    .line 857
    .line 858
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    .line 859
    .line 860
    new-array v13, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 861
    .line 862
    invoke-direct {v10, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    :cond_47
    if-eqz v9, :cond_48

    .line 866
    .line 867
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 868
    .line 869
    .line 870
    move-object v9, v3

    .line 871
    :cond_48
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 872
    .line 873
    .line 874
    :cond_49
    :goto_26
    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 875
    .line 876
    goto :goto_25

    .line 877
    :cond_4a
    if-ne v12, v6, :cond_4b

    .line 878
    .line 879
    goto :goto_23

    .line 880
    :cond_4b
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 881
    .line 882
    .line 883
    move-result-object v9

    .line 884
    goto :goto_23

    .line 885
    :cond_4c
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 886
    .line 887
    goto :goto_22

    .line 888
    :cond_4d
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 889
    .line 890
    .line 891
    move-result-object v5

    .line 892
    if-eqz v5, :cond_4e

    .line 893
    .line 894
    iget-object p0, v5, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 895
    .line 896
    if-eqz p0, :cond_4e

    .line 897
    .line 898
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 899
    .line 900
    goto :goto_21

    .line 901
    :cond_4e
    move-object p0, v3

    .line 902
    goto :goto_21

    .line 903
    :cond_4f
    if-eqz v7, :cond_51

    .line 904
    .line 905
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 906
    .line 907
    .line 908
    move-result p0

    .line 909
    add-int/lit8 p0, p0, -0x1

    .line 910
    .line 911
    if-ltz p0, :cond_51

    .line 912
    .line 913
    :goto_27
    add-int/lit8 v0, p0, -0x1

    .line 914
    .line 915
    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object p0

    .line 919
    check-cast p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 920
    .line 921
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 922
    .line 923
    invoke-interface {p0, p1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 924
    .line 925
    .line 926
    if-gez v0, :cond_50

    .line 927
    .line 928
    goto :goto_28

    .line 929
    :cond_50
    move p0, v0

    .line 930
    goto :goto_27

    .line 931
    :cond_51
    :goto_28
    sget-object p0, Landroidx/compose/ui/input/pointer/PointerEventPass;->j:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 932
    .line 933
    invoke-interface {v8, p1, p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 934
    .line 935
    .line 936
    sget-object p0, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 937
    .line 938
    invoke-interface {v8, p1, p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 939
    .line 940
    .line 941
    if-eqz v7, :cond_52

    .line 942
    .line 943
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 944
    .line 945
    .line 946
    move-result p0

    .line 947
    move v0, v2

    .line 948
    :goto_29
    if-ge v0, p0, :cond_52

    .line 949
    .line 950
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v3

    .line 954
    check-cast v3, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 955
    .line 956
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 957
    .line 958
    invoke-interface {v3, p1, v4}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 959
    .line 960
    .line 961
    add-int/lit8 v0, v0, 0x1

    .line 962
    .line 963
    goto :goto_29

    .line 964
    :cond_52
    if-eqz v7, :cond_54

    .line 965
    .line 966
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    .line 967
    .line 968
    .line 969
    move-result p0

    .line 970
    add-int/lit8 p0, p0, -0x1

    .line 971
    .line 972
    if-ltz p0, :cond_54

    .line 973
    .line 974
    :goto_2a
    add-int/lit8 v0, p0, -0x1

    .line 975
    .line 976
    invoke-interface {v7, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object p0

    .line 980
    check-cast p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 981
    .line 982
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 983
    .line 984
    invoke-interface {p0, p1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 985
    .line 986
    .line 987
    if-gez v0, :cond_53

    .line 988
    .line 989
    goto :goto_2b

    .line 990
    :cond_53
    move p0, v0

    .line 991
    goto :goto_2a

    .line 992
    :cond_54
    :goto_2b
    sget-object p0, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 993
    .line 994
    invoke-interface {v8, p1, p0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->m(Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 995
    .line 996
    .line 997
    :cond_55
    iget-object p0, p1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->a:Ljava/util/ArrayList;

    .line 998
    .line 999
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 1000
    .line 1001
    .line 1002
    move-result v0

    .line 1003
    move v3, v2

    .line 1004
    :goto_2c
    if-ge v3, v0, :cond_34

    .line 1005
    .line 1006
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    check-cast v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 1011
    .line 1012
    iget-boolean v4, v4, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->i:Z

    .line 1013
    .line 1014
    if-eqz v4, :cond_56

    .line 1015
    .line 1016
    move p0, v6

    .line 1017
    goto :goto_2d

    .line 1018
    :cond_56
    add-int/lit8 v3, v3, 0x1

    .line 1019
    .line 1020
    goto :goto_2c

    .line 1021
    :goto_2d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1022
    .line 1023
    .line 1024
    iget-object v0, p1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->c:Landroid/view/MotionEvent;

    .line 1025
    .line 1026
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    .line 1027
    .line 1028
    .line 1029
    move-result v3

    .line 1030
    if-eqz v3, :cond_58

    .line 1031
    .line 1032
    if-eq v3, v6, :cond_57

    .line 1033
    .line 1034
    const/4 p1, 0x2

    .line 1035
    if-eq v3, p1, :cond_57

    .line 1036
    .line 1037
    goto :goto_2e

    .line 1038
    :cond_57
    if-eqz p0, :cond_59

    .line 1039
    .line 1040
    iput v2, v1, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->b:I

    .line 1041
    .line 1042
    iput-boolean v6, v1, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->c:Z

    .line 1043
    .line 1044
    goto :goto_2e

    .line 1045
    :cond_58
    iget p0, p1, Landroidx/compose/ui/input/indirect/AndroidIndirectPointerEvent;->b:I

    .line 1046
    .line 1047
    iput p0, v1, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->b:I

    .line 1048
    .line 1049
    iput-boolean v2, v1, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->c:Z

    .line 1050
    .line 1051
    :cond_59
    :goto_2e
    iget-object p0, v1, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->d:Landroid/view/GestureDetector;

    .line 1052
    .line 1053
    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1054
    .line 1055
    .line 1056
    return v6

    .line 1057
    :cond_5a
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 1058
    .line 1059
    .line 1060
    move-result-object p0

    .line 1061
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 1062
    .line 1063
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 1064
    .line 1065
    .line 1066
    move-result-object p0

    .line 1067
    if-eqz p0, :cond_67

    .line 1068
    .line 1069
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 1070
    .line 1071
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 1072
    .line 1073
    if-nez p1, :cond_5b

    .line 1074
    .line 1075
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    :cond_5b
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 1079
    .line 1080
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 1081
    .line 1082
    .line 1083
    move-result-object p0

    .line 1084
    :goto_2f
    if-eqz p0, :cond_66

    .line 1085
    .line 1086
    iget-object v7, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 1087
    .line 1088
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 1089
    .line 1090
    iget v7, v7, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 1091
    .line 1092
    and-int/2addr v7, v0

    .line 1093
    if-eqz v7, :cond_64

    .line 1094
    .line 1095
    :goto_30
    if-eqz p1, :cond_64

    .line 1096
    .line 1097
    iget v7, p1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 1098
    .line 1099
    and-int/2addr v7, v0

    .line 1100
    if-eqz v7, :cond_63

    .line 1101
    .line 1102
    move-object v7, p1

    .line 1103
    move-object v8, v3

    .line 1104
    :goto_31
    if-eqz v7, :cond_63

    .line 1105
    .line 1106
    instance-of v9, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 1107
    .line 1108
    if-eqz v9, :cond_5c

    .line 1109
    .line 1110
    goto :goto_34

    .line 1111
    :cond_5c
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 1112
    .line 1113
    and-int/2addr v9, v0

    .line 1114
    if-eqz v9, :cond_62

    .line 1115
    .line 1116
    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 1117
    .line 1118
    if-eqz v9, :cond_62

    .line 1119
    .line 1120
    move-object v9, v7

    .line 1121
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 1122
    .line 1123
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 1124
    .line 1125
    move v10, v2

    .line 1126
    :goto_32
    if-eqz v9, :cond_61

    .line 1127
    .line 1128
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 1129
    .line 1130
    and-int/2addr v11, v0

    .line 1131
    if-eqz v11, :cond_60

    .line 1132
    .line 1133
    add-int/lit8 v10, v10, 0x1

    .line 1134
    .line 1135
    if-ne v10, v6, :cond_5d

    .line 1136
    .line 1137
    move-object v7, v9

    .line 1138
    goto :goto_33

    .line 1139
    :cond_5d
    if-nez v8, :cond_5e

    .line 1140
    .line 1141
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 1142
    .line 1143
    new-array v11, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 1144
    .line 1145
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 1146
    .line 1147
    .line 1148
    :cond_5e
    if-eqz v7, :cond_5f

    .line 1149
    .line 1150
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 1151
    .line 1152
    .line 1153
    move-object v7, v3

    .line 1154
    :cond_5f
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 1155
    .line 1156
    .line 1157
    :cond_60
    :goto_33
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 1158
    .line 1159
    goto :goto_32

    .line 1160
    :cond_61
    if-ne v10, v6, :cond_62

    .line 1161
    .line 1162
    goto :goto_31

    .line 1163
    :cond_62
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v7

    .line 1167
    goto :goto_31

    .line 1168
    :cond_63
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 1169
    .line 1170
    goto :goto_30

    .line 1171
    :cond_64
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 1172
    .line 1173
    .line 1174
    move-result-object p0

    .line 1175
    if-eqz p0, :cond_65

    .line 1176
    .line 1177
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 1178
    .line 1179
    if-eqz p1, :cond_65

    .line 1180
    .line 1181
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 1182
    .line 1183
    goto :goto_2f

    .line 1184
    :cond_65
    move-object p1, v3

    .line 1185
    goto :goto_2f

    .line 1186
    :cond_66
    move-object v7, v3

    .line 1187
    :goto_34
    check-cast v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 1188
    .line 1189
    goto :goto_35

    .line 1190
    :cond_67
    move-object v7, v3

    .line 1191
    :goto_35
    if-eqz v7, :cond_75

    .line 1192
    .line 1193
    move-object p0, v7

    .line 1194
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 1195
    .line 1196
    iget-object p1, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 1197
    .line 1198
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 1199
    .line 1200
    if-nez p1, :cond_68

    .line 1201
    .line 1202
    invoke-static {v5}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    :cond_68
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 1206
    .line 1207
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 1208
    .line 1209
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 1210
    .line 1211
    .line 1212
    move-result-object p1

    .line 1213
    move-object v5, v3

    .line 1214
    :goto_36
    if-eqz p1, :cond_74

    .line 1215
    .line 1216
    iget-object v8, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 1217
    .line 1218
    iget-object v8, v8, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 1219
    .line 1220
    iget v8, v8, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 1221
    .line 1222
    and-int/2addr v8, v0

    .line 1223
    if-eqz v8, :cond_72

    .line 1224
    .line 1225
    :goto_37
    if-eqz p0, :cond_72

    .line 1226
    .line 1227
    iget v8, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 1228
    .line 1229
    and-int/2addr v8, v0

    .line 1230
    if-eqz v8, :cond_71

    .line 1231
    .line 1232
    move-object v8, p0

    .line 1233
    move-object v9, v3

    .line 1234
    :goto_38
    if-eqz v8, :cond_71

    .line 1235
    .line 1236
    instance-of v10, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 1237
    .line 1238
    if-eqz v10, :cond_6a

    .line 1239
    .line 1240
    if-nez v5, :cond_69

    .line 1241
    .line 1242
    new-instance v5, Ljava/util/ArrayList;

    .line 1243
    .line 1244
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .line 1246
    .line 1247
    :cond_69
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move v10, v2

    .line 1251
    goto :goto_39

    .line 1252
    :cond_6a
    move v10, v6

    .line 1253
    :goto_39
    if-eqz v10, :cond_70

    .line 1254
    .line 1255
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 1256
    .line 1257
    and-int/2addr v10, v0

    .line 1258
    if-eqz v10, :cond_70

    .line 1259
    .line 1260
    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 1261
    .line 1262
    if-eqz v10, :cond_70

    .line 1263
    .line 1264
    move-object v10, v8

    .line 1265
    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    .line 1266
    .line 1267
    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 1268
    .line 1269
    move v11, v2

    .line 1270
    :goto_3a
    if-eqz v10, :cond_6f

    .line 1271
    .line 1272
    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 1273
    .line 1274
    and-int/2addr v12, v0

    .line 1275
    if-eqz v12, :cond_6e

    .line 1276
    .line 1277
    add-int/lit8 v11, v11, 0x1

    .line 1278
    .line 1279
    if-ne v11, v6, :cond_6b

    .line 1280
    .line 1281
    move-object v8, v10

    .line 1282
    goto :goto_3b

    .line 1283
    :cond_6b
    if-nez v9, :cond_6c

    .line 1284
    .line 1285
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    .line 1286
    .line 1287
    new-array v12, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 1288
    .line 1289
    invoke-direct {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 1290
    .line 1291
    .line 1292
    :cond_6c
    if-eqz v8, :cond_6d

    .line 1293
    .line 1294
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 1295
    .line 1296
    .line 1297
    move-object v8, v3

    .line 1298
    :cond_6d
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 1299
    .line 1300
    .line 1301
    :cond_6e
    :goto_3b
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 1302
    .line 1303
    goto :goto_3a

    .line 1304
    :cond_6f
    if-ne v11, v6, :cond_70

    .line 1305
    .line 1306
    goto :goto_38

    .line 1307
    :cond_70
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v8

    .line 1311
    goto :goto_38

    .line 1312
    :cond_71
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 1313
    .line 1314
    goto :goto_37

    .line 1315
    :cond_72
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 1316
    .line 1317
    .line 1318
    move-result-object p1

    .line 1319
    if-eqz p1, :cond_73

    .line 1320
    .line 1321
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 1322
    .line 1323
    if-eqz p0, :cond_73

    .line 1324
    .line 1325
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 1326
    .line 1327
    goto :goto_36

    .line 1328
    :cond_73
    move-object p0, v3

    .line 1329
    goto :goto_36

    .line 1330
    :cond_74
    invoke-interface {v7}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->k0()V

    .line 1331
    .line 1332
    .line 1333
    if-eqz v5, :cond_75

    .line 1334
    .line 1335
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1336
    .line 1337
    .line 1338
    move-result p0

    .line 1339
    move p1, v2

    .line 1340
    :goto_3c
    if-ge p1, p0, :cond_75

    .line 1341
    .line 1342
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v0

    .line 1346
    check-cast v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;

    .line 1347
    .line 1348
    invoke-interface {v0}, Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;->k0()V

    .line 1349
    .line 1350
    .line 1351
    add-int/lit8 p1, p1, 0x1

    .line 1352
    .line 1353
    goto :goto_3c

    .line 1354
    :cond_75
    iput v2, v1, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->b:I

    .line 1355
    .line 1356
    iput-boolean v6, v1, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector;->c:Z

    .line 1357
    .line 1358
    return v6

    .line 1359
    :cond_76
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1360
    .line 1361
    .line 1362
    move-result p0

    .line 1363
    return p0

    .line 1364
    :cond_77
    :goto_3d
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1365
    .line 1366
    .line 1367
    move-result p0

    .line 1368
    return p0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->G0:Z

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/ui/platform/AndroidComposeView;->F0:Ls0;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ls0;->run()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->m(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v2, :cond_15

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto/16 :goto_b

    .line 31
    .line 32
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeView;->F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 33
    .line 34
    iget-object v5, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 35
    .line 36
    iget-object v6, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->p:Landroid/view/accessibility/AccessibilityManager;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/16 v8, 0xa

    .line 43
    .line 44
    const/4 v9, 0x7

    .line 45
    const/4 v10, 0x1

    .line 46
    if-eqz v7, :cond_d

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_d

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const/16 v7, 0x100

    .line 59
    .line 60
    const/16 v11, 0x80

    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    const/16 v13, 0xc

    .line 64
    .line 65
    const/high16 v14, -0x80000000

    .line 66
    .line 67
    if-eq v6, v9, :cond_5

    .line 68
    .line 69
    const/16 v15, 0x9

    .line 70
    .line 71
    if-eq v6, v15, :cond_5

    .line 72
    .line 73
    if-eq v6, v8, :cond_2

    .line 74
    .line 75
    move v2, v4

    .line 76
    :goto_0
    move/from16 v23, v10

    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_2
    iget v6, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n:I

    .line 81
    .line 82
    if-eq v6, v14, :cond_4

    .line 83
    .line 84
    if-ne v6, v14, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iput v14, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n:I

    .line 88
    .line 89
    invoke-static {v2, v14, v11, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v6, v7, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 93
    .line 94
    .line 95
    :goto_1
    move v2, v10

    .line 96
    move/from16 v23, v2

    .line 97
    .line 98
    goto/16 :goto_7

    .line 99
    .line 100
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    goto :goto_0

    .line 109
    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    invoke-virtual {v5, v10}, Landroidx/compose/ui/platform/AndroidComposeView;->r(Z)V

    .line 118
    .line 119
    .line 120
    new-instance v20, Landroidx/compose/ui/node/HitTestResult;

    .line 121
    .line 122
    invoke-direct/range {v20 .. v20}, Landroidx/compose/ui/node/HitTestResult;-><init>()V

    .line 123
    .line 124
    .line 125
    move/from16 v23, v10

    .line 126
    .line 127
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    int-to-long v8, v6

    .line 136
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    int-to-long v14, v6

    .line 141
    const/16 v6, 0x20

    .line 142
    .line 143
    shl-long/2addr v8, v6

    .line 144
    const-wide v16, 0xffffffffL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    and-long v14, v14, v16

    .line 150
    .line 151
    or-long/2addr v8, v14

    .line 152
    iget-object v6, v10, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 153
    .line 154
    iget-object v10, v6, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 155
    .line 156
    sget-object v14, Landroidx/compose/ui/node/NodeCoordinator;->e0:Lla;

    .line 157
    .line 158
    invoke-virtual {v10, v8, v9}, Landroidx/compose/ui/node/NodeCoordinator;->a1(J)J

    .line 159
    .line 160
    .line 161
    move-result-wide v18

    .line 162
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 163
    .line 164
    sget-object v17, Landroidx/compose/ui/node/NodeCoordinator;->k0:Landroidx/compose/ui/node/NodeCoordinator$Companion$SemanticsSource$1;

    .line 165
    .line 166
    const/16 v21, 0x1

    .line 167
    .line 168
    const/16 v22, 0x1

    .line 169
    .line 170
    move-object/from16 v16, v6

    .line 171
    .line 172
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/node/NodeCoordinator;->j1(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 173
    .line 174
    .line 175
    move-object/from16 v6, v20

    .line 176
    .line 177
    iget-object v6, v6, Landroidx/compose/ui/node/HitTestResult;->j:Landroidx/collection/MutableObjectList;

    .line 178
    .line 179
    iget v8, v6, Landroidx/collection/ObjectList;->b:I

    .line 180
    .line 181
    add-int/lit8 v8, v8, -0x1

    .line 182
    .line 183
    :goto_2
    const/4 v9, -0x1

    .line 184
    if-ge v9, v8, :cond_6

    .line 185
    .line 186
    invoke-virtual {v6, v8}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 194
    .line 195
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    invoke-virtual {v10}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    check-cast v10, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 212
    .line 213
    if-eqz v10, :cond_7

    .line 214
    .line 215
    :cond_6
    const/high16 v10, -0x80000000

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_7
    iget-object v10, v9, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 219
    .line 220
    const/16 v14, 0x8

    .line 221
    .line 222
    invoke-virtual {v10, v14}, Landroidx/compose/ui/node/NodeChain;->d(I)Z

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-nez v10, :cond_8

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_8
    iget v10, v9, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 230
    .line 231
    invoke-virtual {v2, v10}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->A(I)I

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    invoke-static {v9, v4}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->a(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    invoke-static {v9}, Landroidx/compose/ui/semantics/SemanticsOwnerKt;->f(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    if-nez v14, :cond_9

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_9
    invoke-static {v9}, Landroidx/compose/ui/semantics/SemanticsNode_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-eqz v9, :cond_a

    .line 251
    .line 252
    :goto_3
    add-int/lit8 v8, v8, -0x1

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_a
    :goto_4
    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    iget v6, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n:I

    .line 264
    .line 265
    if-ne v6, v10, :cond_b

    .line 266
    .line 267
    :goto_5
    const/high16 v2, -0x80000000

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_b
    iput v10, v2, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n:I

    .line 271
    .line 272
    invoke-static {v2, v10, v11, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 273
    .line 274
    .line 275
    invoke-static {v2, v6, v7, v12, v13}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->E(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;IILjava/lang/Integer;I)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :goto_6
    if-ne v10, v2, :cond_c

    .line 280
    .line 281
    move v2, v5

    .line 282
    goto :goto_7

    .line 283
    :cond_c
    move/from16 v2, v23

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_d
    move/from16 v23, v10

    .line 287
    .line 288
    move v2, v4

    .line 289
    :goto_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    const/4 v6, 0x7

    .line 294
    if-eq v5, v6, :cond_12

    .line 295
    .line 296
    const/16 v6, 0xa

    .line 297
    .line 298
    if-eq v5, v6, :cond_f

    .line 299
    .line 300
    :cond_e
    move/from16 v5, v23

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_f
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->n(Landroid/view/MotionEvent;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_e

    .line 308
    .line 309
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    const/4 v5, 0x3

    .line 314
    if-ne v4, v5, :cond_10

    .line 315
    .line 316
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    if-eqz v4, :cond_10

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_10
    iget-object v4, v0, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 324
    .line 325
    if-eqz v4, :cond_11

    .line 326
    .line 327
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 328
    .line 329
    .line 330
    :cond_11
    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    iput-object v1, v0, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 335
    .line 336
    move/from16 v5, v23

    .line 337
    .line 338
    iput-boolean v5, v0, Landroidx/compose/ui/platform/AndroidComposeView;->G0:Z

    .line 339
    .line 340
    const-wide/16 v4, 0x8

    .line 341
    .line 342
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    .line 344
    .line 345
    return v2

    .line 346
    :cond_12
    move/from16 v5, v23

    .line 347
    .line 348
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->o(Landroid/view/MotionEvent;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-nez v3, :cond_13

    .line 353
    .line 354
    :goto_8
    return v2

    .line 355
    :cond_13
    :goto_9
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->i(Landroid/view/MotionEvent;)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    and-int/2addr v0, v5

    .line 360
    if-eqz v0, :cond_14

    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_14
    if-eqz v2, :cond_15

    .line 364
    .line 365
    :goto_a
    return v5

    .line 366
    :cond_15
    :goto_b
    return v4
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v0, Landroidx/compose/ui/platform/WindowInfoImpl;->a:Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    new-instance v3, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Landroidx/compose/ui/input/pointer/PointerKeyboardModifiers;-><init>(I)V

    .line 26
    .line 27
    .line 28
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Lj6;

    .line 38
    .line 39
    const/16 v3, 0x14

    .line 40
    .line 41
    invoke-direct {v2, v3}, Lj6;-><init>(I)V

    .line 42
    .line 43
    .line 44
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 45
    .line 46
    invoke-virtual {v0, p1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->e(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return v1

    .line 60
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v2, Lp0;

    .line 67
    .line 68
    invoke-direct {v2, v1, p0, p1}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 72
    .line 73
    invoke-virtual {v0, p1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->e(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    return p0
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 14
    .line 15
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->d:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 16
    .line 17
    iget-boolean v3, v3, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v0, "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated."

    .line 22
    .line 23
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_b

    .line 37
    .line 38
    iget-object v3, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 39
    .line 40
    iget-boolean v3, v3, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    const-string v3, "visitAncestors called on an unattached node"

    .line 45
    .line 46
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v3, v0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 50
    .line 51
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    if-eqz v0, :cond_b

    .line 56
    .line 57
    iget-object v4, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 58
    .line 59
    iget-object v4, v4, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 60
    .line 61
    iget v4, v4, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 62
    .line 63
    const/high16 v5, 0x20000

    .line 64
    .line 65
    and-int/2addr v4, v5

    .line 66
    const/4 v6, 0x0

    .line 67
    if-eqz v4, :cond_9

    .line 68
    .line 69
    :goto_1
    if-eqz v3, :cond_9

    .line 70
    .line 71
    iget v4, v3, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 72
    .line 73
    and-int/2addr v4, v5

    .line 74
    if-eqz v4, :cond_8

    .line 75
    .line 76
    move-object v4, v3

    .line 77
    move-object v7, v6

    .line 78
    :goto_2
    if-eqz v4, :cond_8

    .line 79
    .line 80
    iget v8, v4, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 81
    .line 82
    and-int/2addr v8, v5

    .line 83
    if-eqz v8, :cond_7

    .line 84
    .line 85
    instance-of v8, v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 86
    .line 87
    if-eqz v8, :cond_7

    .line 88
    .line 89
    move-object v8, v4

    .line 90
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 91
    .line 92
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->y:Landroidx/compose/ui/Modifier$Node;

    .line 93
    .line 94
    move v9, v1

    .line 95
    :goto_3
    if-eqz v8, :cond_6

    .line 96
    .line 97
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 98
    .line 99
    and-int/2addr v10, v5

    .line 100
    if-eqz v10, :cond_5

    .line 101
    .line 102
    add-int/lit8 v9, v9, 0x1

    .line 103
    .line 104
    if-ne v9, v2, :cond_2

    .line 105
    .line 106
    move-object v4, v8

    .line 107
    goto :goto_4

    .line 108
    :cond_2
    if-nez v7, :cond_3

    .line 109
    .line 110
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 111
    .line 112
    const/16 v10, 0x10

    .line 113
    .line 114
    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 115
    .line 116
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    if-eqz v4, :cond_4

    .line 120
    .line 121
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v4, v6

    .line 125
    :cond_4
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_4
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    if-ne v9, v2, :cond_7

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    goto :goto_2

    .line 139
    :cond_8
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 149
    .line 150
    if-eqz v3, :cond_a

    .line 151
    .line 152
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_a
    move-object v3, v6

    .line 156
    goto :goto_0

    .line 157
    :cond_b
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    if-eqz p0, :cond_c

    .line 162
    .line 163
    return v2

    .line 164
    :cond_c
    return v1
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->N0:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->N0:Z

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->z(Landroid/view/ViewStructure;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->N0:Z

    .line 16
    .line 17
    throw p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F0:Ls0;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v2, v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G0:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ls0;->run()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->m(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_e

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v2, 0x2

    .line 68
    if-ne v0, v2, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->o(Landroid/view/MotionEvent;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    goto/16 :goto_7

    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->i(Landroid/view/MotionEvent;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    and-int/lit8 v2, v0, 0x2

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_7

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v4, 0x5

    .line 105
    if-ne v2, v4, :cond_6

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    move v2, v1

    .line 109
    goto :goto_3

    .line 110
    :cond_7
    :goto_2
    move v2, v3

    .line 111
    :goto_3
    const/16 v4, 0x2002

    .line 112
    .line 113
    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_9

    .line 118
    .line 119
    const v4, 0x100008

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_8

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_8
    move v4, v1

    .line 130
    goto :goto_5

    .line 131
    :cond_9
    :goto_4
    move v4, v3

    .line 132
    :goto_5
    if-eqz v2, :cond_d

    .line 133
    .line 134
    if-eqz v4, :cond_d

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    instance-of v4, v2, Landroid/view/View;

    .line 141
    .line 142
    if-eqz v4, :cond_a

    .line 143
    .line 144
    check-cast v2, Landroid/view/View;

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_a
    const/4 v2, 0x0

    .line 148
    :goto_6
    if-eqz v2, :cond_b

    .line 149
    .line 150
    const v4, 0x7f0a0059

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-nez v2, :cond_c

    .line 158
    .line 159
    :cond_b
    new-instance v2, Landroidx/compose/ui/platform/AutoClearFocusBehavior;

    .line 160
    .line 161
    invoke-direct {v2, v3}, Landroidx/compose/ui/platform/AutoClearFocusBehavior;-><init>(I)V

    .line 162
    .line 163
    .line 164
    :cond_c
    new-instance v4, Landroidx/compose/ui/platform/AutoClearFocusBehavior;

    .line 165
    .line 166
    invoke-direct {v4, v3}, Landroidx/compose/ui/platform/AutoClearFocusBehavior;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_d

    .line 174
    .line 175
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 180
    .line 181
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_d

    .line 186
    .line 187
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-interface {v4, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->l(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    int-to-long v4, v4

    .line 212
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    int-to-long v6, p1

    .line 217
    const/16 p1, 0x20

    .line 218
    .line 219
    shl-long/2addr v4, p1

    .line 220
    const-wide v8, 0xffffffffL

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    and-long/2addr v6, v8

    .line 226
    or-long/2addr v4, v6

    .line 227
    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/geometry/Rect;->a(J)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-nez p1, :cond_d

    .line 232
    .line 233
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusManager;->a(Landroidx/compose/ui/focus/FocusManager;)V

    .line 238
    .line 239
    .line 240
    :cond_d
    and-int/lit8 p0, v0, 0x1

    .line 241
    .line 242
    if-eqz p0, :cond_e

    .line 243
    .line 244
    return v3

    .line 245
    :cond_e
    :goto_7
    return v1
.end method

.method public final f(Lkotlin/jvm/functions/Function2;Lfc;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Landroidx/compose/ui/node/OwnedLayer;
    .locals 7

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v3, p0

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    move-object v1, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move-object v5, p2

    .line 17
    :cond_1
    iget-object p0, v3, Landroidx/compose/ui/platform/AndroidComposeView;->y0:Landroidx/compose/ui/platform/WeakCache;

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/compose/ui/platform/WeakCache;->b:Ljava/lang/ref/ReferenceQueue;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/platform/WeakCache;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->j(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    if-nez p1, :cond_1

    .line 33
    .line 34
    :cond_3
    iget p1, p0, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    add-int/lit8 p1, p1, -0x1

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->k(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/ref/Reference;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    move-object p1, p2

    .line 55
    :goto_0
    check-cast p1, Landroidx/compose/ui/node/OwnedLayer;

    .line 56
    .line 57
    if-eqz p1, :cond_8

    .line 58
    .line 59
    move-object p0, p1

    .line 60
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 61
    .line 62
    iget-object p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->k:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 63
    .line 64
    if-eqz p3, :cond_7

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 67
    .line 68
    iget-boolean v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->s:Z

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    const-string v0, "layer should have been released before reuse"

    .line 73
    .line 74
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-interface {p3}, Landroidx/compose/ui/graphics/GraphicsContext;->b()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    iput-object p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->j:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 82
    .line 83
    const/4 p3, 0x0

    .line 84
    iput-boolean p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->p:Z

    .line 85
    .line 86
    iput-object v4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->m:Lkotlin/jvm/functions/Function2;

    .line 87
    .line 88
    iput-object v5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->n:Lkotlin/jvm/functions/Function0;

    .line 89
    .line 90
    iput-boolean p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->z:Z

    .line 91
    .line 92
    iput-boolean p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->A:Z

    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->B:Z

    .line 96
    .line 97
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->q:[F

    .line 98
    .line 99
    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->r:[F

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->d([F)V

    .line 107
    .line 108
    .line 109
    :cond_6
    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 110
    .line 111
    iput-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->x:J

    .line 112
    .line 113
    iput-boolean p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->C:Z

    .line 114
    .line 115
    const-wide v0, 0x7fffffff7fffffffL

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    iput-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->o:J

    .line 121
    .line 122
    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->y:Landroidx/compose/ui/graphics/Outline;

    .line 123
    .line 124
    iput p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->w:I

    .line 125
    .line 126
    return-object p1

    .line 127
    :cond_7
    const-string p0, "currently reuse is only supported when we manage the layer lifecycle"

    .line 128
    .line 129
    invoke-static {p0}, Lq;->p(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    throw p0

    .line 134
    :cond_8
    new-instance v1, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 135
    .line 136
    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-interface {p0}, Landroidx/compose/ui/graphics/GraphicsContext;->b()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object v6, v5

    .line 145
    move-object v5, v4

    .line 146
    move-object v4, v3

    .line 147
    invoke-virtual {v4}, Landroidx/compose/ui/platform/AndroidComposeView;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 152
    .line 153
    .line 154
    return-object v1
.end method

.method public final findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const-class v0, Landroid/view/View;

    .line 8
    .line 9
    const-string v1, "findViewByAccessibilityIdTraversal"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v4, v3, v5

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    new-array v1, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    aput-object p1, v1, v5

    .line 33
    .line 34
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    instance-of p1, p0, Landroid/view/View;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    check-cast p0, Landroid/view/View;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object p0

    .line 50
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 4
    .line 5
    iget-boolean v0, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->a(Landroid/view/View;Landroid/view/View;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v1

    .line 39
    :goto_0
    if-ne p1, p0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 48
    .line 49
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_2
    if-nez v1, :cond_4

    .line 60
    .line 61
    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->a(Landroid/view/View;Landroid/view/View;)Landroidx/compose/ui/geometry/Rect;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->a(Landroid/view/View;Landroid/view/View;)Landroidx/compose/ui/geometry/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_4
    :goto_1
    invoke-static {p2}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->d(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    iget v2, v2, Landroidx/compose/ui/focus/FocusDirection;->a:I

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    const/4 v2, 0x6

    .line 80
    :goto_2
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-instance v5, Lo0;

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-direct {v5, v3, v6}, Lo0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    .line 93
    .line 94
    .line 95
    check-cast v4, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 96
    .line 97
    invoke-virtual {v4, v2, v1, v5}, Landroidx/compose/ui/focus/FocusOwnerImpl;->f(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-nez v4, :cond_6

    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_6
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 105
    .line 106
    if-nez v3, :cond_7

    .line 107
    .line 108
    if-nez v0, :cond_b

    .line 109
    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_7
    if-nez v0, :cond_8

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    const/4 p1, 0x1

    .line 119
    if-ne v2, p1, :cond_9

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_9
    const/4 p1, 0x2

    .line 123
    if-ne v2, p1, :cond_a

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_a
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 127
    .line 128
    invoke-static {v3}, Landroidx/compose/ui/focus/FocusTraversalKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v0, p0}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->a(Landroid/view/View;Landroid/view/View;)Landroidx/compose/ui/geometry/Rect;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p1, p2, v1, v2}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->g(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;I)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_b

    .line 141
    .line 142
    :goto_3
    return-object p0

    .line 143
    :cond_b
    return-object v0

    .line 144
    :cond_c
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0
.end method

.method public final g(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->g(Landroidx/compose/ui/node/LayoutNode;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAccessibilityManager()Landroidx/compose/ui/platform/AccessibilityManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->k:Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->W:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AndroidViewsHandler;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->W:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->addView(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->W:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public getAutofill()Landroidx/compose/ui/autofill/AndroidAutofill;
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->R:Landroidx/compose/ui/autofill/AndroidAutofill;

    return-object p0
.end method

.method public bridge synthetic getAutofill()Landroidx/compose/ui/autofill/Autofill;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofill()Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->S:Landroidx/compose/ui/autofill/AndroidAutofillManager;

    return-object p0
.end method

.method public bridge synthetic getAutofillManager()Landroidx/compose/ui/autofill/AutofillManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getAutofillTree()Landroidx/compose/ui/autofill/AutofillTree;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->I:Landroidx/compose/ui/autofill/AutofillTree;

    .line 2
    .line 3
    return-object p0
.end method

.method public getClipboard()Landroidx/compose/ui/platform/Clipboard;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->n:Landroidx/compose/ui/platform/Clipboard;

    .line 6
    .line 7
    return-object p0
.end method

.method public getClipboardManager()Landroidx/compose/ui/platform/ClipboardManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->m:Landroidx/compose/ui/platform/AndroidClipboardManager;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->get_composeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getComposeViewContextIncrementedDuringInit$ui()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M0:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->P:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/content/res/Configuration;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getContentCaptureManager$ui()Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->w:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->t:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/ui/unit/Density;

    .line 10
    .line 11
    return-object p0
.end method

.method public getDragAndDropManager()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->x:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    return-object p0
.end method

.method public bridge synthetic getDragAndDropManager()Landroidx/compose/ui/draganddrop/DragAndDropManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getEmbeddedViewFocusRect()Landroidx/compose/ui/geometry/Rect;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->a(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->b(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    return-object v1

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->a(Landroid/view/View;Landroid/view/View;)Landroidx/compose/ui/geometry/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_2
    return-object v1
.end method

.method public getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->v:Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getEmbeddedViewFocusRect()Landroidx/compose/ui/geometry/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    iget p0, v0, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lh;

    .line 45
    .line 46
    const/4 v2, 0x3

    .line 47
    invoke-direct {v1, v2}, Lh;-><init>(I)V

    .line 48
    .line 49
    .line 50
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 51
    .line 52
    const/4 v2, 0x6

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {v0, v2, v3, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->f(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    const/high16 p0, -0x80000000

    .line 67
    .line 68
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->r0:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 8
    .line 9
    return-object p0
.end method

.method public getFontLoader()Landroidx/compose/ui/text/font/Font$ResourceLoader;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->o:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getFrameEndScheduler$ui()Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->n:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->H:Landroidx/compose/ui/graphics/GraphicsContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->q:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 6
    .line 7
    return-object p0
.end method

.method public getHasPendingMeasureOrLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->r:Lkotlin/collections/ArrayDeque;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public getImportantForAutofill()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public bridge synthetic getInputModeManager()Landroidx/compose/ui/input/InputModeManager;
    .locals 0

    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInputModeManager()Landroidx/compose/ui/input/InputModeManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getInputModeManager()Landroidx/compose/ui/input/InputModeManagerImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->t0:Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    :goto_0
    invoke-direct {v0, v1}, Landroidx/compose/ui/input/InputModeManagerImpl;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->t0:Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 20
    .line 21
    :cond_1
    return-object v0
.end method

.method public final getInsetsListener()Landroidx/compose/ui/layout/InsetsListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A:Landroidx/compose/ui/layout/InsetsListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLastMatrixRecalculationAnimationTime$ui()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->s0:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    .line 11
    return-object p0
.end method

.method public bridge synthetic getLayoutNodes()Landroidx/collection/IntObjectMap;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutNodes()Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getLayoutNodes()Landroidx/collection/MutableIntObjectMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->C:Landroidx/collection/MutableIntObjectMap;

    return-object p0
.end method

.method public getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->Q:Landroidx/compose/runtime/State;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/text/intl/LocaleList;

    .line 8
    .line 9
    return-object p0
.end method

.method public getMeasureIteration()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "measureIteration should be only used during the measure/layout pass"

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->g:J

    .line 13
    .line 14
    return-wide v0
.end method

.method public getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->u0:Landroidx/compose/ui/modifier/ModifierLocalManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getOutOfFrameExecutor()Landroidx/compose/ui/node/OutOfFrameExecutor;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getOutOfFrameExecutor()Landroidx/compose/ui/platform/AndroidComposeView;

    move-result-object p0

    return-object p0
.end method

.method public getOutOfFrameExecutor()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getPlacementScope()Landroidx/compose/ui/layout/Placeable$PlacementScope;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/layout/PlaceableKt;->b(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getPlayNavigationSoundEffect$ui()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->H0:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->Q0:Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui()Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->m:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRectManager()Landroidx/compose/ui/spatial/RectManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->D:Landroidx/compose/ui/spatial/RectManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRetainedValuesStore()Landroidx/compose/runtime/retain/RetainedValuesStore;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->q:Landroidx/compose/runtime/retain/RetainedValuesStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRoot()Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->B:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRootForTest()Landroidx/compose/ui/node/RootForTest;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->p:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/platform/ComposeViewContext;->g()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Landroidx/compose/ui/platform/ComposeViewContext;->e:Landroidx/savedstate/SavedStateRegistryOwner;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast v1, Landroid/view/View;

    .line 25
    .line 26
    const v2, 0x7f0a0079

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    instance-of v3, v2, Ljava/lang/String;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v2, v4

    .line 42
    :goto_0
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_1
    const-string v1, "SaveableStateRegistry:"

    .line 53
    .line 54
    invoke-static {v1, v2}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0}, Landroidx/savedstate/SavedStateRegistryOwner;->f()Landroidx/savedstate/SavedStateRegistry;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Ljava/lang/Iterable;

    .line 78
    .line 79
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    new-instance v2, La7;

    .line 107
    .line 108
    const/4 v3, 0x6

    .line 109
    invoke-direct {v2, v3}, La7;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v4, v2}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->a(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->b(Ljava/lang/String;)Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/4 v4, 0x0

    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    :catch_0
    move v5, v4

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    :try_start_0
    new-instance v3, Li5;

    .line 126
    .line 127
    const/4 v5, 0x1

    .line 128
    invoke-direct {v3, v5, v2}, Li5;-><init>(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1, v3}, Landroidx/savedstate/SavedStateRegistry;->c(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    :goto_2
    new-instance v3, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 135
    .line 136
    new-instance v6, Lx7;

    .line 137
    .line 138
    invoke-direct {v6, v4, v0, v1, v5}, Lx7;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v3, v2, v6}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Lx7;)V

    .line 142
    .line 143
    .line 144
    iput-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->p:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 145
    .line 146
    return-object v3

    .line 147
    :cond_4
    return-object v0
.end method

.method public final getScrollCaptureInProgress()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->O0:Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    if-eqz p0, :cond_2

    .line 34
    .line 35
    instance-of v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getScrollCaptureInProgress()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_1
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method public getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->E:Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->s:Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 6
    .line 7
    return-object p0
.end method

.method public getShowLayoutBounds()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/platform/Api30Impl;->a:Landroidx/compose/ui/platform/Api30Impl;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/Api30Impl;->a(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->V:Z

    .line 15
    .line 16
    return p0
.end method

.method public getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->U:Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSoftwareKeyboardController()Landroidx/compose/ui/platform/SoftwareKeyboardController;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->q0:Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getTextInputService()Landroidx/compose/ui/text/input/TextInputService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;-><init>(Landroidx/compose/ui/text/input/TextInputService;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->q0:Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public getTextInputService()Landroidx/compose/ui/text/input/TextInputService;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->o0:Landroidx/compose/ui/text/input/TextInputService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/text/input/TextInputService;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLegacyTextInputServiceAndroid()Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/TextInputService;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->o0:Landroidx/compose/ui/text/input/TextInputService;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->v0:Landroidx/compose/ui/platform/AndroidTextToolbar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/ui/platform/AndroidTextToolbar;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lr1;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v2, v0}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroidx/compose/ui/platform/TextToolbarStatus;->j:[Landroidx/compose/ui/platform/TextToolbarStatus;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->v0:Landroidx/compose/ui/platform/AndroidTextToolbar;

    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method public final getUncaughtExceptionHandler$ui()Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->r:Landroidx/compose/ui/platform/AndroidViewConfiguration;

    .line 6
    .line 7
    return-object p0
.end method

.method public getWindowInfo()Landroidx/compose/ui/platform/WindowInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->t:Landroidx/compose/ui/platform/LazyWindowInfo;

    .line 6
    .line 7
    return-object p0
.end method

.method public final i(Landroid/view/MotionEvent;)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/platform/AndroidComposeView;->E0:Landroidx/compose/ui/platform/AndroidComposeView$resendMotionEventRunnable$1;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->B(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    iput-boolean v8, v1, Landroidx/compose/ui/platform/AndroidComposeView;->k0:Z

    .line 16
    .line 17
    invoke-virtual {v1, v7}, Landroidx/compose/ui/platform/AndroidComposeView;->r(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 21
    .line 22
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "AndroidOwner:onTouch"

    .line 26
    .line 27
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    iget-object v2, v1, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 35
    .line 36
    const/4 v11, 0x3

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 40
    .line 41
    .line 42
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    if-ne v3, v11, :cond_0

    .line 44
    .line 45
    move v12, v8

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v12, v7

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_10

    .line 51
    .line 52
    :goto_0
    const/16 v13, 0xa

    .line 53
    .line 54
    iget-object v14, v1, Landroidx/compose/ui/platform/AndroidComposeView;->O:Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;

    .line 55
    .line 56
    if-eqz v2, :cond_5

    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-ne v3, v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eq v3, v4, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v3, v7

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    :goto_1
    move v3, v8

    .line 82
    :goto_2
    if-eqz v3, :cond_5

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    :cond_3
    move-object v15, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    const/4 v4, 0x2

    .line 99
    if-eq v3, v4, :cond_3

    .line 100
    .line 101
    const/4 v4, 0x6

    .line 102
    if-eq v3, v4, :cond_3

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eq v3, v13, :cond_5

    .line 109
    .line 110
    if-eqz v12, :cond_5

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    const/4 v6, 0x1

    .line 117
    const/16 v3, 0xa

    .line 118
    .line 119
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeView;->I(Landroid/view/MotionEvent;IJZ)V

    .line 120
    .line 121
    .line 122
    move-object v15, v2

    .line 123
    goto :goto_4

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object/from16 v1, p0

    .line 126
    .line 127
    goto/16 :goto_10

    .line 128
    .line 129
    :cond_5
    move-object v15, v2

    .line 130
    goto :goto_4

    .line 131
    :goto_3
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->b()V

    .line 132
    .line 133
    .line 134
    :goto_4
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-ne v1, v11, :cond_6

    .line 139
    .line 140
    move v1, v8

    .line 141
    goto :goto_5

    .line 142
    :cond_6
    move v1, v7

    .line 143
    :goto_5
    const/16 v2, 0x9

    .line 144
    .line 145
    if-nez v12, :cond_7

    .line 146
    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    if-eq v10, v11, :cond_7

    .line 150
    .line 151
    if-eq v10, v2, :cond_7

    .line 152
    .line 153
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->n(Landroid/view/MotionEvent;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_7

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 160
    .line 161
    .line 162
    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    const/4 v6, 0x1

    .line 164
    const/16 v3, 0x9

    .line 165
    .line 166
    move v1, v2

    .line 167
    move-object v2, v0

    .line 168
    move v0, v1

    .line 169
    move-object/from16 v1, p0

    .line 170
    .line 171
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeView;->I(Landroid/view/MotionEvent;IJZ)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_7
    move-object/from16 v1, p0

    .line 176
    .line 177
    move v0, v2

    .line 178
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    move v2, v8

    .line 185
    goto :goto_7

    .line 186
    :cond_8
    move v2, v7

    .line 187
    :goto_7
    const/16 v3, 0x8

    .line 188
    .line 189
    if-ne v10, v3, :cond_9

    .line 190
    .line 191
    if-nez v2, :cond_9

    .line 192
    .line 193
    if-eqz v15, :cond_9

    .line 194
    .line 195
    const/16 v2, 0x1002

    .line 196
    .line 197
    invoke-virtual {v15, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_9

    .line 202
    .line 203
    iput-boolean v8, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 204
    .line 205
    :cond_9
    if-eqz v15, :cond_a

    .line 206
    .line 207
    invoke-virtual {v15}, Landroid/view/MotionEvent;->recycle()V

    .line 208
    .line 209
    .line 210
    :cond_a
    iget-object v2, v1, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 211
    .line 212
    if-eqz v2, :cond_15

    .line 213
    .line 214
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-ne v2, v13, :cond_15

    .line 219
    .line 220
    iget-object v2, v1, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 221
    .line 222
    if-eqz v2, :cond_b

    .line 223
    .line 224
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    goto :goto_8

    .line 229
    :cond_b
    const/4 v2, -0x1

    .line 230
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 231
    .line 232
    .line 233
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    iget-object v4, v1, Landroidx/compose/ui/platform/AndroidComposeView;->N:Landroidx/compose/ui/input/pointer/MotionEventAdapter;

    .line 235
    .line 236
    if-ne v3, v0, :cond_c

    .line 237
    .line 238
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_c

    .line 243
    .line 244
    if-ltz v2, :cond_15

    .line 245
    .line 246
    iget-object v0, v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 249
    .line 250
    .line 251
    iget-object v0, v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_d

    .line 257
    .line 258
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_15

    .line 263
    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-nez v0, :cond_15

    .line 269
    .line 270
    iget-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 271
    .line 272
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 273
    .line 274
    if-eqz v0, :cond_d

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    goto :goto_9

    .line 281
    :cond_d
    move v0, v3

    .line 282
    :goto_9
    iget-object v5, v1, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 283
    .line 284
    if-eqz v5, :cond_e

    .line 285
    .line 286
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    cmpg-float v0, v0, v5

    .line 299
    .line 300
    if-nez v0, :cond_f

    .line 301
    .line 302
    cmpg-float v0, v3, v6

    .line 303
    .line 304
    if-nez v0, :cond_f

    .line 305
    .line 306
    move v0, v7

    .line 307
    goto :goto_a

    .line 308
    :cond_f
    move v0, v8

    .line 309
    :goto_a
    iget-object v3, v1, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 310
    .line 311
    if-eqz v3, :cond_10

    .line 312
    .line 313
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    .line 314
    .line 315
    .line 316
    move-result-wide v5

    .line 317
    goto :goto_b

    .line 318
    :cond_10
    const-wide/16 v5, -0x1

    .line 319
    .line 320
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 321
    .line 322
    .line 323
    move-result-wide v10

    .line 324
    cmp-long v3, v5, v10

    .line 325
    .line 326
    if-eqz v3, :cond_11

    .line 327
    .line 328
    move v3, v8

    .line 329
    goto :goto_c

    .line 330
    :cond_11
    move v3, v7

    .line 331
    :goto_c
    if-nez v0, :cond_12

    .line 332
    .line 333
    if-eqz v3, :cond_15

    .line 334
    .line 335
    :cond_12
    if-ltz v2, :cond_13

    .line 336
    .line 337
    iget-object v0, v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->c:Landroid/util/SparseBooleanArray;

    .line 338
    .line 339
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 340
    .line 341
    .line 342
    iget-object v0, v4, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->b:Landroid/util/SparseLongArray;

    .line 343
    .line 344
    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 345
    .line 346
    .line 347
    :cond_13
    iget-object v0, v14, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->b:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 348
    .line 349
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->d:Z

    .line 350
    .line 351
    if-eqz v2, :cond_14

    .line 352
    .line 353
    iput-boolean v8, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->d:Z

    .line 354
    .line 355
    goto :goto_d

    .line 356
    :cond_14
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->g:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 357
    .line 358
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 359
    .line 360
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 361
    .line 362
    .line 363
    :cond_15
    :goto_d
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    iput-object v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 368
    .line 369
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    .line 371
    if-eqz v0, :cond_16

    .line 372
    .line 373
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 374
    .line 375
    .line 376
    move-result-wide v4

    .line 377
    const/4 v6, 0x1

    .line 378
    const/16 v3, 0xa

    .line 379
    .line 380
    move-object/from16 v2, p1

    .line 381
    .line 382
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeView;->I(Landroid/view/MotionEvent;IJZ)V

    .line 383
    .line 384
    .line 385
    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/platform/AndroidComposeView;->H(Landroid/view/MotionEvent;)I

    .line 386
    .line 387
    .line 388
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 389
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 390
    .line 391
    .line 392
    and-int/lit8 v1, v0, 0x4

    .line 393
    .line 394
    if-eqz v1, :cond_18

    .line 395
    .line 396
    :cond_17
    move-object/from16 v1, p0

    .line 397
    .line 398
    goto :goto_f

    .line 399
    :cond_18
    iget-boolean v1, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 400
    .line 401
    if-eqz v1, :cond_17

    .line 402
    .line 403
    iget-object v1, v14, Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;->b:Landroidx/compose/ui/input/pointer/HitPathTracker;

    .line 404
    .line 405
    iget-boolean v2, v1, Landroidx/compose/ui/input/pointer/HitPathTracker;->d:Z

    .line 406
    .line 407
    if-eqz v2, :cond_19

    .line 408
    .line 409
    iput-boolean v8, v1, Landroidx/compose/ui/input/pointer/HitPathTracker;->d:Z

    .line 410
    .line 411
    goto :goto_e

    .line 412
    :cond_19
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/HitPathTracker;->g:Landroidx/compose/ui/input/pointer/NodeParent;

    .line 413
    .line 414
    iget-object v1, v1, Landroidx/compose/ui/input/pointer/NodeParent;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 415
    .line 416
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 417
    .line 418
    .line 419
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 420
    .line 421
    .line 422
    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 423
    const/4 v6, 0x1

    .line 424
    const/16 v3, 0x9

    .line 425
    .line 426
    move-object/from16 v1, p0

    .line 427
    .line 428
    move-object/from16 v2, p1

    .line 429
    .line 430
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/platform/AndroidComposeView;->I(Landroid/view/MotionEvent;IJZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 431
    .line 432
    .line 433
    goto :goto_f

    .line 434
    :catchall_2
    move-exception v0

    .line 435
    goto :goto_11

    .line 436
    :catchall_3
    move-exception v0

    .line 437
    move-object/from16 v1, p0

    .line 438
    .line 439
    goto :goto_11

    .line 440
    :goto_f
    iput-boolean v7, v1, Landroidx/compose/ui/platform/AndroidComposeView;->k0:Z

    .line 441
    .line 442
    return v0

    .line 443
    :goto_10
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 444
    .line 445
    .line 446
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 447
    :goto_11
    iput-boolean v7, v1, Landroidx/compose/ui/platform/AndroidComposeView;->k0:Z

    .line 448
    .line 449
    throw v0
.end method

.method public final k(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->r(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->D()Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 12
    .line 13
    iget p1, p1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 14
    .line 15
    :goto_0
    if-ge v1, p1, :cond_0

    .line 16
    .line 17
    aget-object v2, v0, v1

    .line 18
    .line 19
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->k(Landroidx/compose/ui/node/LayoutNode;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final n(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float v2, v1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    cmpg-float v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    cmpg-float v0, v1, p1

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    int-to-float p0, p0

    .line 32
    cmpg-float p0, p1, p0

    .line 33
    .line 34
    if-gtz p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final o(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->w0:Landroid/view/MotionEvent;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    cmpg-float v0, v0, v2

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    cmpg-float p0, p1, p0

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_1
    :goto_0
    return v1
.end method

.method public final onAttachedToWindow()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNode;->d(Landroidx/compose/ui/node/Owner;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->setAttached(Z)V

    .line 23
    .line 24
    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x1e

    .line 28
    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A:Landroidx/compose/ui/layout/InsetsListener;

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Landroidx/compose/ui/layout/InsetsListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M0:Z

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroidx/compose/ui/platform/ComposeViewContext;->e()V

    .line 52
    .line 53
    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M0:Z

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->k(Landroidx/compose/ui/node/LayoutNode;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->j(Landroidx/compose/ui/node/LayoutNode;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v2, v2, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 76
    .line 77
    iget-object v3, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->d:Ld;

    .line 78
    .line 79
    invoke-static {v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->d(Lkotlin/jvm/functions/Function2;)Lp;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iput-object v3, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->h:Lp;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getOutOfFrameExecutor()Landroidx/compose/ui/platform/AndroidComposeView;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_e

    .line 90
    .line 91
    new-instance v3, Ln0;

    .line 92
    .line 93
    invoke-direct {v3, p0, v0}, Ln0;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->E(Lkotlin/jvm/functions/Function0;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroidx/compose/ui/platform/ComposeViewContext;->d()Landroidx/lifecycle/LifecycleOwner;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroidx/compose/ui/platform/ComposeViewContext;->g()V

    .line 111
    .line 112
    .line 113
    iget-object v2, v2, Landroidx/compose/ui/platform/ComposeViewContext;->f:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 114
    .line 115
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->n:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;

    .line 116
    .line 117
    const/4 v4, 0x0

    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    if-nez v3, :cond_3

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-interface {v2}, Landroidx/lifecycle/ViewModelStoreOwner;->e()Landroidx/lifecycle/ViewModelStore;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    new-instance v3, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    sget-object v5, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->b:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    new-instance v6, Landroidx/lifecycle/ViewModelProvider;

    .line 141
    .line 142
    invoke-direct {v6, v2, v3, v5}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 143
    .line 144
    .line 145
    const-class v2, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner;

    .line 146
    .line 147
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v6, v2}, Landroidx/lifecycle/ViewModelProvider;->a(Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner;

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    check-cast v3, Landroid/view/View;

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    iget-object v2, v2, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner;->b:Landroidx/collection/MutableIntObjectMap;

    .line 171
    .line 172
    invoke-virtual {v2, v3}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    if-nez v5, :cond_4

    .line 177
    .line 178
    new-instance v5, Landroidx/collection/MutableObjectList;

    .line 179
    .line 180
    invoke-direct {v5, v0}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3, v5}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    check-cast v5, Landroidx/collection/MutableObjectList;

    .line 187
    .line 188
    iget-object v2, v5, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    .line 189
    .line 190
    iget v3, v5, Landroidx/collection/ObjectList;->b:I

    .line 191
    .line 192
    :goto_0
    if-ge v1, v3, :cond_6

    .line 193
    .line 194
    aget-object v6, v2, v1

    .line 195
    .line 196
    move-object v7, v6

    .line 197
    check-cast v7, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 198
    .line 199
    iget-boolean v7, v7, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->c:Z

    .line 200
    .line 201
    if-nez v7, :cond_5

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_6
    move-object v6, v4

    .line 208
    :goto_1
    check-cast v6, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 209
    .line 210
    if-nez v6, :cond_7

    .line 211
    .line 212
    new-instance v6, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 213
    .line 214
    invoke-direct {v6}, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v6}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :cond_7
    iput-boolean v0, v6, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->c:Z

    .line 221
    .line 222
    iput-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeView;->o:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 223
    .line 224
    iget-object v1, v6, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->b:Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :cond_8
    :goto_2
    move-object v1, v4

    .line 228
    :goto_3
    if-nez v1, :cond_9

    .line 229
    .line 230
    sget-object v1, Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;

    .line 231
    .line 232
    :cond_9
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->q:Landroidx/compose/runtime/retain/RetainedValuesStore;

    .line 233
    .line 234
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->m0:Lkotlin/jvm/functions/Function1;

    .line 235
    .line 236
    if-eqz v1, :cond_a

    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    iput-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeView;->m0:Lkotlin/jvm/functions/Function1;

    .line 246
    .line 247
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1}, Landroidx/compose/ui/platform/ComposeViewContext;->d()Landroidx/lifecycle/LifecycleOwner;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 260
    .line 261
    .line 262
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInputModeManager()Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_b

    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_b
    const/4 v0, 0x2

    .line 279
    :goto_4
    iget-object v1, v1, Landroidx/compose/ui/input/InputModeManagerImpl;->a:Landroidx/compose/runtime/MutableState;

    .line 280
    .line 281
    new-instance v2, Landroidx/compose/ui/input/InputMode;

    .line 282
    .line 283
    invoke-direct {v2, v0}, Landroidx/compose/ui/input/InputMode;-><init>(I)V

    .line 284
    .line 285
    .line 286
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 310
    .line 311
    .line 312
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 313
    .line 314
    const/16 v1, 0x1f

    .line 315
    .line 316
    if-lt v0, v1, :cond_c

    .line 317
    .line 318
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->a:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    .line 319
    .line 320
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->b(Landroid/view/View;)V

    .line 321
    .line 322
    .line 323
    :cond_c
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-eqz v0, :cond_d

    .line 328
    .line 329
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 334
    .line 335
    iget-object v1, v1, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/collection/MutableObjectList;

    .line 336
    .line 337
    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsOwner;->d:Landroidx/collection/MutableObjectList;

    .line 345
    .line 346
    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    :cond_d
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 354
    .line 355
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/collection/MutableObjectList;

    .line 356
    .line 357
    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :cond_e
    const-string p0, "Expected the view to be attached to window."

    .line 362
    .line 363
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    return-void
.end method

.method public final onCheckIsTextEditor()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->p0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/SessionMutex;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLegacyTextInputServiceAndroid()Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-boolean p0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->d:Z

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/SessionMutex;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroidx/compose/ui/platform/InputMethodSession;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-boolean p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->e:Z

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    xor-int/2addr p0, v0

    .line 32
    if-ne p0, v0, :cond_1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->K(Landroid/content/res/Configuration;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->p0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/SessionMutex;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_29

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLegacyTextInputServiceAndroid()Landroidx/compose/ui/text/input/TextInputServiceAndroid;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->d:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->h:Landroidx/compose/ui/text/input/ImeOptions;

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 26
    .line 27
    iget v4, v0, Landroidx/compose/ui/text/input/ImeOptions;->e:I

    .line 28
    .line 29
    iget-boolean v5, v0, Landroidx/compose/ui/text/input/ImeOptions;->a:Z

    .line 30
    .line 31
    const/4 v6, 0x7

    .line 32
    const/4 v7, 0x5

    .line 33
    const/4 v8, 0x4

    .line 34
    const/4 v9, 0x6

    .line 35
    const/4 v10, 0x3

    .line 36
    const/4 v11, 0x2

    .line 37
    if-ne v4, v1, :cond_2

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    :goto_0
    move v12, v9

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v12, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    if-nez v4, :cond_3

    .line 46
    .line 47
    move v12, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    if-ne v4, v11, :cond_4

    .line 50
    .line 51
    move v12, v11

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    if-ne v4, v9, :cond_5

    .line 54
    .line 55
    move v12, v7

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    if-ne v4, v7, :cond_6

    .line 58
    .line 59
    move v12, v6

    .line 60
    goto :goto_1

    .line 61
    :cond_6
    if-ne v4, v10, :cond_7

    .line 62
    .line 63
    move v12, v10

    .line 64
    goto :goto_1

    .line 65
    :cond_7
    if-ne v4, v8, :cond_8

    .line 66
    .line 67
    move v12, v8

    .line 68
    goto :goto_1

    .line 69
    :cond_8
    if-ne v4, v6, :cond_28

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    iput v12, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 73
    .line 74
    iget v13, v0, Landroidx/compose/ui/text/input/ImeOptions;->d:I

    .line 75
    .line 76
    if-ne v13, v1, :cond_9

    .line 77
    .line 78
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_9
    if-ne v13, v11, :cond_a

    .line 83
    .line 84
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 85
    .line 86
    const/high16 v2, -0x80000000

    .line 87
    .line 88
    or-int/2addr v2, v12

    .line 89
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_a
    if-ne v13, v10, :cond_b

    .line 94
    .line 95
    iput v11, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_b
    if-ne v13, v8, :cond_c

    .line 100
    .line 101
    iput v10, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :cond_c
    const/16 v12, 0x11

    .line 106
    .line 107
    if-ne v13, v7, :cond_d

    .line 108
    .line 109
    iput v12, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 110
    .line 111
    goto/16 :goto_2

    .line 112
    .line 113
    :cond_d
    if-ne v13, v9, :cond_e

    .line 114
    .line 115
    const/16 v2, 0x21

    .line 116
    .line 117
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_e
    if-ne v13, v6, :cond_f

    .line 122
    .line 123
    const/16 v2, 0x81

    .line 124
    .line 125
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 126
    .line 127
    goto/16 :goto_2

    .line 128
    .line 129
    :cond_f
    const/16 v6, 0x8

    .line 130
    .line 131
    const/16 v7, 0x12

    .line 132
    .line 133
    if-ne v13, v6, :cond_10

    .line 134
    .line 135
    iput v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :cond_10
    const/16 v6, 0x9

    .line 140
    .line 141
    if-ne v13, v6, :cond_11

    .line 142
    .line 143
    const/16 v2, 0x2002

    .line 144
    .line 145
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 146
    .line 147
    goto/16 :goto_2

    .line 148
    .line 149
    :cond_11
    const/16 v6, 0xa

    .line 150
    .line 151
    if-ne v13, v6, :cond_12

    .line 152
    .line 153
    const/16 v2, 0x91

    .line 154
    .line 155
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_12
    const/16 v6, 0xb

    .line 160
    .line 161
    if-ne v13, v6, :cond_13

    .line 162
    .line 163
    const/16 v2, 0x71

    .line 164
    .line 165
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 166
    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :cond_13
    const/16 v6, 0xc

    .line 170
    .line 171
    if-ne v13, v6, :cond_14

    .line 172
    .line 173
    const/16 v2, 0x61

    .line 174
    .line 175
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 176
    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :cond_14
    const/16 v6, 0xd

    .line 180
    .line 181
    if-ne v13, v6, :cond_15

    .line 182
    .line 183
    const/16 v2, 0x31

    .line 184
    .line 185
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 186
    .line 187
    goto/16 :goto_2

    .line 188
    .line 189
    :cond_15
    const/16 v6, 0xe

    .line 190
    .line 191
    if-ne v13, v6, :cond_16

    .line 192
    .line 193
    const/16 v2, 0x41

    .line 194
    .line 195
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_16
    const/16 v6, 0xf

    .line 199
    .line 200
    if-ne v13, v6, :cond_17

    .line 201
    .line 202
    const/16 v2, 0x51

    .line 203
    .line 204
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_17
    const/16 v6, 0x10

    .line 208
    .line 209
    if-ne v13, v6, :cond_18

    .line 210
    .line 211
    const/16 v2, 0xb1

    .line 212
    .line 213
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_18
    if-ne v13, v12, :cond_19

    .line 217
    .line 218
    const/16 v2, 0xc1

    .line 219
    .line 220
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_19
    if-ne v13, v7, :cond_1a

    .line 224
    .line 225
    iput v8, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_1a
    const/16 v6, 0x13

    .line 229
    .line 230
    const/16 v7, 0x14

    .line 231
    .line 232
    if-ne v13, v6, :cond_1b

    .line 233
    .line 234
    iput v7, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_1b
    if-ne v13, v7, :cond_1c

    .line 238
    .line 239
    const/16 v2, 0x24

    .line 240
    .line 241
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_1c
    const/16 v6, 0x15

    .line 245
    .line 246
    if-ne v13, v6, :cond_1d

    .line 247
    .line 248
    const/16 v2, 0x1002

    .line 249
    .line 250
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_1d
    const/16 v6, 0x16

    .line 254
    .line 255
    if-ne v13, v6, :cond_1e

    .line 256
    .line 257
    const/16 v2, 0x3002

    .line 258
    .line 259
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_1e
    const/16 v6, 0x17

    .line 263
    .line 264
    if-ne v13, v6, :cond_1f

    .line 265
    .line 266
    const/16 v2, 0x2012

    .line 267
    .line 268
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_1f
    const/16 v6, 0x18

    .line 272
    .line 273
    if-ne v13, v6, :cond_20

    .line 274
    .line 275
    const/16 v2, 0x1012

    .line 276
    .line 277
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_20
    const/16 v6, 0x19

    .line 281
    .line 282
    if-ne v13, v6, :cond_27

    .line 283
    .line 284
    const/16 v2, 0x3012

    .line 285
    .line 286
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 287
    .line 288
    :goto_2
    if-nez v5, :cond_21

    .line 289
    .line 290
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 291
    .line 292
    and-int/lit8 v5, v2, 0xf

    .line 293
    .line 294
    if-ne v5, v1, :cond_21

    .line 295
    .line 296
    const/high16 v5, 0x20000

    .line 297
    .line 298
    or-int/2addr v2, v5

    .line 299
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 300
    .line 301
    if-ne v4, v1, :cond_21

    .line 302
    .line 303
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 304
    .line 305
    const/high16 v4, 0x40000000    # 2.0f

    .line 306
    .line 307
    or-int/2addr v2, v4

    .line 308
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 309
    .line 310
    :cond_21
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 311
    .line 312
    and-int/lit8 v4, v2, 0xf

    .line 313
    .line 314
    if-ne v4, v1, :cond_25

    .line 315
    .line 316
    iget v4, v0, Landroidx/compose/ui/text/input/ImeOptions;->b:I

    .line 317
    .line 318
    if-ne v4, v1, :cond_22

    .line 319
    .line 320
    or-int/lit16 v1, v2, 0x1000

    .line 321
    .line 322
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_22
    if-ne v4, v11, :cond_23

    .line 326
    .line 327
    or-int/lit16 v1, v2, 0x2000

    .line 328
    .line 329
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_23
    if-ne v4, v10, :cond_24

    .line 333
    .line 334
    or-int/lit16 v1, v2, 0x4000

    .line 335
    .line 336
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 337
    .line 338
    :cond_24
    :goto_3
    iget-boolean v0, v0, Landroidx/compose/ui/text/input/ImeOptions;->c:Z

    .line 339
    .line 340
    if-eqz v0, :cond_25

    .line 341
    .line 342
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 343
    .line 344
    const v1, 0x8000

    .line 345
    .line 346
    .line 347
    or-int/2addr v0, v1

    .line 348
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 349
    .line 350
    :cond_25
    iget-wide v0, v3, Landroidx/compose/ui/text/input/TextFieldValue;->b:J

    .line 351
    .line 352
    sget v2, Landroidx/compose/ui/text/TextRange;->c:I

    .line 353
    .line 354
    const/16 v2, 0x20

    .line 355
    .line 356
    shr-long v4, v0, v2

    .line 357
    .line 358
    long-to-int v2, v4

    .line 359
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 360
    .line 361
    const-wide v4, 0xffffffffL

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    and-long/2addr v0, v4

    .line 367
    long-to-int v0, v0

    .line 368
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 369
    .line 370
    iget-object v0, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 371
    .line 372
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 373
    .line 374
    invoke-static {p1, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 378
    .line 379
    const/high16 v1, 0x2000000

    .line 380
    .line 381
    or-int/2addr v0, v1

    .line 382
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 383
    .line 384
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_26

    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_26
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->a()Landroidx/emoji2/text/EmojiCompat;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat;->l(Landroid/view/inputmethod/EditorInfo;)V

    .line 396
    .line 397
    .line 398
    :goto_4
    iget-object p1, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->g:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 399
    .line 400
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->h:Landroidx/compose/ui/text/input/ImeOptions;

    .line 401
    .line 402
    iget-boolean v0, v0, Landroidx/compose/ui/text/input/ImeOptions;->c:Z

    .line 403
    .line 404
    new-instance v1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;

    .line 405
    .line 406
    invoke-direct {v1, p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;-><init>(Landroidx/compose/ui/text/input/TextInputServiceAndroid;)V

    .line 407
    .line 408
    .line 409
    new-instance v2, Landroidx/compose/ui/text/input/RecordingInputConnection;

    .line 410
    .line 411
    invoke-direct {v2, p1, v1, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextInputServiceAndroid$createInputConnection$1;Z)V

    .line 412
    .line 413
    .line 414
    iget-object p0, p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid;->i:Ljava/util/ArrayList;

    .line 415
    .line 416
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 417
    .line 418
    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    return-object v2

    .line 425
    :cond_27
    const-string p0, "Invalid Keyboard Type"

    .line 426
    .line 427
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    return-object v2

    .line 431
    :cond_28
    const-string p0, "invalid ImeAction"

    .line 432
    .line 433
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    return-object v2

    .line 437
    :cond_29
    iget-object p0, v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 438
    .line 439
    invoke-static {p0}, Landroidx/compose/ui/SessionMutex;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object p0

    .line 443
    check-cast p0, Landroidx/compose/ui/platform/InputMethodSession;

    .line 444
    .line 445
    if-eqz p0, :cond_2b

    .line 446
    .line 447
    iget-object v0, p0, Landroidx/compose/ui/platform/InputMethodSession;->c:Ljava/lang/Object;

    .line 448
    .line 449
    monitor-enter v0

    .line 450
    :try_start_0
    iget-boolean v3, p0, Landroidx/compose/ui/platform/InputMethodSession;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .line 452
    if-eqz v3, :cond_2a

    .line 453
    .line 454
    monitor-exit v0

    .line 455
    return-object v2

    .line 456
    :cond_2a
    :try_start_1
    iget-object v2, p0, Landroidx/compose/ui/platform/InputMethodSession;->a:Landroidx/compose/ui/platform/PlatformTextInputMethodRequest;

    .line 457
    .line 458
    check-cast v2, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 459
    .line 460
    invoke-virtual {v2, p1}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->a(Landroid/view/inputmethod/EditorInfo;)Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    new-instance v2, Landroidx/compose/ui/platform/b;

    .line 465
    .line 466
    invoke-direct {v2, v1, p0}, Landroidx/compose/ui/platform/b;-><init>(ILjava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    invoke-static {p1, v2}, Landroidx/compose/ui/text/input/NullableInputConnectionWrapper_androidKt;->a(Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;Landroidx/compose/ui/platform/b;)Landroidx/compose/ui/text/input/NullableInputConnectionWrapper;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    iget-object p0, p0, Landroidx/compose/ui/platform/InputMethodSession;->d:Landroidx/compose/runtime/collection/MutableVector;

    .line 474
    .line 475
    new-instance v1, Landroidx/compose/ui/node/WeakReference;

    .line 476
    .line 477
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    .line 482
    .line 483
    monitor-exit v0

    .line 484
    return-object p1

    .line 485
    :catchall_0
    move-exception p0

    .line 486
    monitor-exit v0

    .line 487
    throw p0

    .line 488
    :cond_2b
    :goto_5
    return-object v2
.end method

.method public final onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length p2, p1

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p2, :cond_3

    .line 9
    .line 10
    aget-wide v1, p1, v0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c()Landroidx/collection/IntObjectMap;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    long-to-int v1, v1

    .line 17
    invoke-virtual {v3, v1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->a:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {}, Lu0;->p()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget v3, v1, Landroidx/compose/ui/semantics/SemanticsNode;->f:I

    .line 40
    .line 41
    int-to-long v3, v3

    .line 42
    invoke-static {v2, v3, v4}, Lu0;->k(Landroid/view/autofill/AutofillId;J)Landroid/view/translation/ViewTranslationRequest$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsNode;->d:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 47
    .line 48
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v3, 0x0

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    move-object v1, v3

    .line 60
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const-string v4, "\n"

    .line 65
    .line 66
    const/16 v5, 0x3e

    .line 67
    .line 68
    invoke-static {v1, v4, v3, v5}, Landroidx/compose/ui/util/ListUtilsKt;->a(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString;

    .line 73
    .line 74
    invoke-direct {v3, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v3}, Lu0;->i(Landroidx/compose/ui/text/AnnotatedString;)Landroid/view/translation/TranslationRequestValue;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v2, v1}, Lu0;->y(Landroid/view/translation/ViewTranslationRequest$Builder;Landroid/view/translation/TranslationRequestValue;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2}, Lu0;->l(Landroid/view/translation/ViewTranslationRequest$Builder;)Landroid/view/translation/ViewTranslationRequest;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->setAttached(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->A:Landroidx/compose/ui/layout/InsetsListener;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Landroidx/compose/ui/layout/InsetsListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->u:Landroid/view/View;

    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView;->l()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v2, 0x1c

    .line 29
    .line 30
    if-le v1, v2, :cond_1

    .line 31
    .line 32
    sget-object v2, Landroidx/compose/ui/platform/AndroidComposeView;->U0:Landroidx/collection/MutableObjectList;

    .line 33
    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    invoke-virtual {v2, p0}, Landroidx/collection/MutableObjectList;->l(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    monitor-exit v2

    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/platform/ComposeViewContext;->b()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v2, v2, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 56
    .line 57
    iget-object v3, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->h:Lp;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3}, Lp;->a()V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->a()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroidx/compose/ui/platform/ComposeViewContext;->d()Landroidx/lifecycle/LifecycleOwner;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2}, Landroidx/lifecycle/LifecycleOwner;->g()Landroidx/lifecycle/Lifecycle;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p0}, Landroidx/lifecycle/Lifecycle;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->o:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    iput-boolean v0, v2, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->c:Z

    .line 113
    .line 114
    :cond_3
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->o:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 116
    .line 117
    const/16 v2, 0x1f

    .line 118
    .line 119
    if-lt v1, v2, :cond_4

    .line 120
    .line 121
    sget-object v1, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->a:Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;

    .line 122
    .line 123
    invoke-virtual {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeViewTranslationCallbackS;->a(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsOwner;->d:Landroidx/collection/MutableObjectList;

    .line 137
    .line 138
    invoke-virtual {v2, v1}, Landroidx/collection/MutableObjectList;->l(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 146
    .line 147
    iget-object v2, v2, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/collection/MutableObjectList;

    .line 148
    .line 149
    invoke-virtual {v2, v1}, Landroidx/collection/MutableObjectList;->l(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iget-object v2, v1, Landroidx/compose/ui/spatial/RectManager;->d:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 157
    .line 158
    const/4 v8, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    const-wide/16 v3, 0x0

    .line 161
    .line 162
    const-wide/16 v5, 0x0

    .line 163
    .line 164
    const/4 v7, 0x0

    .line 165
    invoke-virtual/range {v2 .. v9}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->b(JJ[FII)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    iput-boolean v2, v1, Landroidx/compose/ui/spatial/RectManager;->g:Z

    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/RectManager;->a()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v2, v1, Landroidx/compose/ui/spatial/RectManager;->i:Lq0;

    .line 183
    .line 184
    if-eqz v2, :cond_6

    .line 185
    .line 186
    iget-object v3, v1, Landroidx/compose/ui/spatial/RectManager;->b:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 187
    .line 188
    invoke-virtual {v3, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 189
    .line 190
    .line 191
    iput-object v0, v1, Landroidx/compose/ui/spatial/RectManager;->i:Lq0;

    .line 192
    .line 193
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 198
    .line 199
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->g:Landroidx/collection/MutableObjectList;

    .line 200
    .line 201
    invoke-virtual {v0, p0}, Landroidx/collection/MutableObjectList;->l(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->c:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-static {p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->f(Landroidx/compose/ui/focus/FocusTargetNode;Z)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-virtual {p0, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->j(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 36
    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->j:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 41
    .line 42
    sget-object p2, Landroidx/compose/ui/focus/FocusStateImpl;->m:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 43
    .line 44
    invoke-virtual {p1, p0, p2}, Landroidx/compose/ui/focus/FocusTargetNode;->Z0(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->L()V

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x20

    .line 11
    .line 12
    if-gt v1, v0, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x22

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->K(Landroid/content/res/Configuration;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    const-string p1, "AndroidOwner:onLayout"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :try_start_0
    iput-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->J0:Ln0;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->l(Lkotlin/jvm/functions/Function0;)Z

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->a0:Landroidx/compose/ui/unit/Constraints;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->L()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->W:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const-string p1, "AndroidOwner:viewLayout"

    .line 28
    .line 29
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sub-int/2addr p4, p2

    .line 37
    sub-int/2addr p5, p3

    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    .line 49
    .line 50
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    const-string v1, "AndroidOwner:onMeasure"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Landroidx/compose/ui/node/LayoutNode;->d(Landroidx/compose/ui/node/Owner;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->k(Landroidx/compose/ui/node/LayoutNode;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->e(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    const/16 p1, 0x20

    .line 43
    .line 44
    ushr-long v3, v1, p1

    .line 45
    .line 46
    long-to-int v3, v3

    .line 47
    const-wide v4, 0xffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    and-long/2addr v1, v4

    .line 53
    long-to-int v1, v1

    .line 54
    invoke-static {p2}, Landroidx/compose/ui/platform/AndroidComposeView;->e(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    ushr-long p1, v6, p1

    .line 59
    .line 60
    long-to-int p1, p1

    .line 61
    and-long/2addr v4, v6

    .line 62
    long-to-int p2, v4

    .line 63
    invoke-static {v3, v1, p1, p2}, Landroidx/compose/ui/unit/Constraints$Companion;->a(IIII)J

    .line 64
    .line 65
    .line 66
    move-result-wide p1

    .line 67
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->a0:Landroidx/compose/ui/unit/Constraints;

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    new-instance v1, Landroidx/compose/ui/unit/Constraints;

    .line 72
    .line 73
    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->a0:Landroidx/compose/ui/unit/Constraints;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->b0:Z

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-wide v1, v1, Landroidx/compose/ui/unit/Constraints;->a:J

    .line 83
    .line 84
    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/unit/Constraints;->b(JJ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->b0:Z

    .line 92
    .line 93
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->s(J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->n()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->A()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->p()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->W:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    const-string p1, "AndroidOwner:androidViewMeasure"

    .line 123
    .line 124
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    .line 126
    .line 127
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui()Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->A()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    const/high16 v0, 0x40000000    # 2.0f

    .line 140
    .line 141
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->p()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .line 159
    .line 160
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catchall_0
    move-exception p0

    .line 165
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 166
    .line 167
    .line 168
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :catchall_1
    move-exception p0

    .line 174
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 175
    .line 176
    .line 177
    throw p0
.end method

.method public final onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->N0:Z

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->z(Landroid/view/ViewStructure;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2002

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x4002

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getPointerIconService()Landroidx/compose/ui/input/pointer/PointerIconService;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->a:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    instance-of p1, v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    check-cast v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;

    .line 46
    .line 47
    iget p1, v0, Landroidx/compose/ui/input/pointer/AndroidPointerIconType;->b:I

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_1
    const/16 p1, 0x3e8

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1e

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->b()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->o:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 15
    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->n:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->a:Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 26
    .line 27
    iget-boolean v2, v1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->a:Z

    .line 28
    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    iget-boolean v1, v1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 32
    .line 33
    if-nez v1, :cond_4

    .line 34
    .line 35
    :try_start_0
    new-instance v1, Lr1;

    .line 36
    .line 37
    const/16 v2, 0x1d

    .line 38
    .line 39
    invoke-direct {v1, v2, p1}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    check-cast p0, Landroidx/compose/ui/platform/Wrapper_androidKt$setContent$1;

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/compose/ui/platform/Wrapper_androidKt$setContent$1;->a:Landroidx/compose/runtime/CompositionContext;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/CompositionContext;->s(Lr1;)Landroidx/compose/runtime/CancellationHandle;

    .line 47
    .line 48
    .line 49
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    iget-object p0, v0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 52
    .line 53
    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->b:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const-string v0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 63
    .line 64
    invoke-static {v0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->a()V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 72
    .line 73
    :goto_0
    const/4 p0, 0x0

    .line 74
    :goto_1
    iget-object v0, p1, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->d:Landroidx/compose/runtime/CancellationHandle;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Landroidx/compose/runtime/CancellationHandle;->cancel()V

    .line 79
    .line 80
    .line 81
    :cond_3
    iput-object p0, p1, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->d:Landroidx/compose/runtime/CancellationHandle;

    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->a:[I

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 18
    .line 19
    :goto_0
    if-nez p1, :cond_2

    .line 20
    .line 21
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->j:Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    .line 23
    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 24
    .line 25
    .line 26
    :cond_3
    return-void
.end method

.method public final onScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p2, 0x1f

    .line 4
    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->O0:Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, p0, p2, v0, p3}, Landroidx/compose/ui/scrollcapture/ScrollCapture;->a(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/semantics/SemanticsOwner;Lkotlin/coroutines/CoroutineContext;Ljava/util/function/Consumer;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->o:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->a:Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 8
    .line 9
    iget-boolean v0, p1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->a:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->d:Landroidx/compose/runtime/CancellationHandle;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/compose/runtime/CancellationHandle;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry;->d:Landroidx/compose/runtime/CancellationHandle;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-boolean p0, p1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->b:Z

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-boolean p0, p1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 34
    .line 35
    if-nez p0, :cond_3

    .line 36
    .line 37
    const-string p0, "ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?"

    .line 38
    .line 39
    invoke-static {p0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object p0, p1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->d:Landroidx/collection/MutableScatterMap;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->f()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_4

    .line 49
    .line 50
    const-string p0, "Attempted to start retaining exited values with pending exited values"

    .line 51
    .line 52
    invoke-static {p0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    const/4 p0, 0x0

    .line 56
    iput-boolean p0, p1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->c:Z

    .line 57
    .line 58
    :cond_5
    :goto_0
    return-void
.end method

.method public final onTouchModeChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getInputModeManager()Landroidx/compose/ui/input/InputModeManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x2

    .line 10
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/input/InputModeManagerImpl;->a:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/input/InputMode;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/compose/ui/input/InputMode;-><init>(I)V

    .line 15
    .line 16
    .line 17
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->L0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v0, 0x1e

    .line 12
    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->b()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getShowLayoutBounds()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eq v0, p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setShowLayoutBounds(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->j(Landroidx/compose/ui/node/LayoutNode;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final p([F)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->h0:[F

    .line 5
    .line 6
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/Matrix;->e([F[F)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    shr-long/2addr v0, v2

    .line 14
    long-to-int v0, v0

    .line 15
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-wide v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 20
    .line 21
    const-wide v3, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v1, v3

    .line 27
    long-to-int v1, v1

    .line 28
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->f0:[F

    .line 33
    .line 34
    invoke-static {p1, v0, v1, p0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->b([FFF[F)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final q(J)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->h0:[F

    .line 5
    .line 6
    invoke-static {p1, p2, v0}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    shr-long v1, p1, v0

    .line 13
    .line 14
    long-to-int v1, v1

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-wide v2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 20
    .line 21
    shr-long/2addr v2, v0

    .line 22
    long-to-int v2, v2

    .line 23
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-float/2addr v2, v1

    .line 28
    const-wide v3, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr p1, v3

    .line 34
    long-to-int p1, p1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-wide v5, p0, Landroidx/compose/ui/platform/AndroidComposeView;->l0:J

    .line 40
    .line 41
    and-long/2addr v5, v3

    .line 42
    long-to-int p0, v5

    .line 43
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    add-float/2addr p0, p1

    .line 48
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    int-to-long p1, p1

    .line 53
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    int-to-long v1, p0

    .line 58
    shl-long p0, p1, v0

    .line 59
    .line 60
    and-long v0, v1, v3

    .line 61
    .line 62
    or-long/2addr p0, v0

    .line 63
    return-wide p0
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->e:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/MutableVector;

    .line 14
    .line 15
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    :goto_0
    const-string v1, "AndroidOwner:measureAndLayout"

    .line 22
    .line 23
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    :try_start_0
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->J0:Ln0;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->K0:Ln0;

    .line 32
    .line 33
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->l(Lkotlin/jvm/functions/Function0;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 40
    .line 41
    .line 42
    :cond_3
    const/4 p1, 0x0

    .line 43
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->a()V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M:Z

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 62
    .line 63
    .line 64
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->d(I)Landroidx/compose/ui/focus/FocusDirection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget p1, p1, Landroidx/compose/ui/focus/FocusDirection;->a:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x7

    .line 19
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    .line 27
    .line 28
    iget v4, p2, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    int-to-float v4, v4

    .line 31
    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    int-to-float v5, v5

    .line 34
    iget v6, p2, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    int-to-float v6, v6

    .line 37
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    int-to-float p2, p2

    .line 40
    invoke-direct {v3, v4, v5, v6, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v3, v2

    .line 45
    :goto_1
    new-instance p2, Lr0;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {p2, p1, v4}, Lr0;-><init>(II)V

    .line 49
    .line 50
    .line 51
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 52
    .line 53
    invoke-virtual {v0, p1, v3, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->f(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v3, Lr0;

    .line 71
    .line 72
    invoke-direct {v3, p1, v1}, Lr0;-><init>(II)V

    .line 73
    .line 74
    .line 75
    check-cast p2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 76
    .line 77
    invoke-virtual {p2, p1, v2, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->f(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    :goto_2
    return v1

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_6

    .line 93
    .line 94
    if-ne p1, v1, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    const/4 p2, 0x2

    .line 98
    if-ne p1, p2, :cond_6

    .line 99
    .line 100
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->i(I)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    return p0

    .line 111
    :cond_6
    return v4
.end method

.method public final s(Landroidx/compose/ui/node/LayoutNode;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    const-string v1, "AndroidOwner:measureAndLayout"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->m(Landroidx/compose/ui/node/LayoutNode;J)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->c()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroidx/compose/ui/spatial/RectManager;->a()V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->K0:Ln0;

    .line 31
    .line 32
    invoke-virtual {p2}, Ln0;->a()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-boolean p2, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M:Z

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 44
    .line 45
    .line 46
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public setAccessibilityEventBatchIntervalMillis(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->q:J

    .line 4
    .line 5
    return-void
.end method

.method public final setComposeViewContext(Landroidx/compose/ui/platform/ComposeViewContext;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/platform/ComposeViewContext;->c()Landroidx/compose/runtime/CompositionContext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->j()Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRoot()Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "Changing ComposeViewContext cannot change the coroutine context without disposing of the composition first."

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    :goto_1
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :try_start_0
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->get_composeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 52
    .line 53
    .line 54
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    if-eq p1, v3, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v3}, Landroidx/compose/ui/platform/ComposeViewContext;->b()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/platform/ComposeViewContext;->e()V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->set_composeViewContext(Landroidx/compose/ui/platform/ComposeViewContext;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/compose/ui/platform/ComposeViewContext;->c()Landroidx/compose/runtime/CompositionContext;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionContext;->j()Lkotlin/coroutines/CoroutineContext;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->setCoroutineContext(Lkotlin/coroutines/CoroutineContext;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public final setComposeViewContextIncrementedDuringInit$ui(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M0:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->P:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setContentCaptureManager$ui(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 2
    .line 3
    return-void
.end method

.method public setCoroutineContext(Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->w:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-void
.end method

.method public final setFrameEndScheduler$ui(Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->n:Landroidx/compose/ui/platform/LifecycleRetainedValuesStoreOwner$FrameEndScheduler;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastMatrixRecalculationAnimationTime$ui(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->j0:J

    .line 2
    .line 3
    return-void
.end method

.method public final setOnReadyForComposition(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/ComposeViewContext;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getDerivedIsAttached()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->M0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->m0:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getComposeViewContext()Landroidx/compose/ui/platform/ComposeViewContext;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setPlayNavigationSoundEffect$ui(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/focus/FocusDirection;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->H0:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui(Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->m:Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 2
    .line 3
    return-void
.end method

.method public setShowLayoutBounds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->V:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUncaughtExceptionHandler(Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUncaughtExceptionHandler$ui(Landroidx/compose/ui/node/RootForTest$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final t(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const/16 v0, 0x8

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->c(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "Invalid focus direction"

    .line 16
    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->g()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_6

    .line 34
    .line 35
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->c(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getInteropView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v2, v3

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast p0, Landroid/view/ViewGroup;

    .line 76
    .line 77
    invoke-virtual {v5, p0, v4, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    invoke-static {v2, p0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->a(Landroid/view/View;Landroid/view/View;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/4 v2, 0x1

    .line 90
    if-ne p1, v2, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object p0, v3

    .line 94
    :goto_1
    if-eqz p0, :cond_4

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p0, p1, v3}, Landroidx/compose/ui/focus/FocusInteropUtils_androidKt;->b(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0

    .line 105
    :cond_4
    :goto_2
    return v1

    .line 106
    :cond_5
    invoke-static {v2}, Lq;->p(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0

    .line 111
    :cond_6
    const-string p0, "findNextViewInEmbeddedView called when owner does not have anything focused."

    .line 112
    .line 113
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :cond_7
    invoke-static {v2}, Lq;->p(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    throw p0
.end method

.method public final u()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->T:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 11
    .line 12
    new-instance v2, Lwc;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lwc;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->c(Lwc;)V

    .line 18
    .line 19
    .line 20
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeView;->T:Z

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->W:Landroidx/compose/ui/platform/AndroidViewsHandler;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->d(Landroid/view/ViewGroup;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->q:Landroidx/collection/MutableIntSet;

    .line 36
    .line 37
    iget v3, v2, Landroidx/collection/IntSet;->d:I

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->r:Z

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iget-object v3, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a()Landroid/view/autofill/AutofillManager;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/view/autofill/AutofillManager;->commit()V

    .line 52
    .line 53
    .line 54
    iput-boolean v1, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->r:Z

    .line 55
    .line 56
    :cond_2
    iget v2, v2, Landroidx/collection/IntSet;->d:I

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    iput-boolean v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->r:Z

    .line 62
    .line 63
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->z0:Landroidx/collection/MutableObjectList;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->e()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    iget v2, v0, Landroidx/collection/ObjectList;->b:I

    .line 78
    .line 79
    move v3, v1

    .line 80
    :goto_1
    if-ge v3, v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-virtual {v0, v3, v5}, Landroidx/collection/MutableObjectList;->p(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableObjectList;->n(II)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    return-void
.end method

.method public final v(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->G:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->w(Landroidx/compose/ui/node/LayoutNode;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 17
    .line 18
    iput-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final w(Landroidx/compose/ui/node/LayoutNode;ZZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 2
    .line 3
    if-eqz p2, :cond_b

    .line 4
    .line 5
    iget-object p2, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 6
    .line 7
    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->q:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    iget-object v2, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope"

    .line 15
    .line 16
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v1, :cond_a

    .line 27
    .line 28
    if-eq v1, v3, :cond_c

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-eq v1, v4, :cond_a

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-eq v1, v4, :cond_a

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    if-ne v1, v4, :cond_9

    .line 38
    .line 39
    iget-boolean v1, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    iput-boolean v3, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 48
    .line 49
    iget-object p3, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 50
    .line 51
    iput-boolean v3, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->E:Z

    .line 52
    .line 53
    iget-boolean p3, p1, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 54
    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N()Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-nez p3, :cond_3

    .line 69
    .line 70
    invoke-static {p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->i(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_4

    .line 75
    .line 76
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    if-eqz p3, :cond_7

    .line 81
    .line 82
    iget-object p3, p3, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 83
    .line 84
    iget-boolean p3, p3, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 85
    .line 86
    if-ne p3, v3, :cond_7

    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-nez p3, :cond_5

    .line 93
    .line 94
    invoke-static {p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->j(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_8

    .line 99
    .line 100
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    if-eqz p3, :cond_6

    .line 105
    .line 106
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-ne p3, v3, :cond_6

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    sget-object p3, Landroidx/compose/ui/node/Invalidation;->l:Landroidx/compose/ui/node/Invalidation;

    .line 114
    .line 115
    invoke-virtual {p2, p1, p3}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    sget-object p3, Landroidx/compose/ui/node/Invalidation;->j:Landroidx/compose/ui/node/Invalidation;

    .line 120
    .line 121
    invoke-virtual {p2, p1, p3}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    :goto_1
    iget-boolean p2, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 125
    .line 126
    if-nez p2, :cond_c

    .line 127
    .line 128
    if-eqz p4, :cond_c

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->F(Landroidx/compose/ui/node/LayoutNode;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_9
    invoke-static {}, Lk8;->e()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_a
    iget-object p0, v0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->h:Landroidx/compose/runtime/collection/MutableVector;

    .line 139
    .line 140
    new-instance p2, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;

    .line 141
    .line 142
    invoke-direct {p2, p1, v3, p3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$PostponedRequest;-><init>(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_b
    invoke-virtual {v0, p1, p3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->r(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_c

    .line 154
    .line 155
    if-eqz p4, :cond_c

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->F(Landroidx/compose/ui/node/LayoutNode;)V

    .line 158
    .line 159
    .line 160
    :cond_c
    :goto_2
    return-void
.end method

.method public final x(Landroidx/compose/ui/node/LayoutNode;ZZ)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x1

    .line 8
    iget-object v6, p0, Landroidx/compose/ui/platform/AndroidComposeView;->c0:Landroidx/compose/ui/node/MeasureAndLayoutDelegate;

    .line 9
    .line 10
    if-eqz p2, :cond_b

    .line 11
    .line 12
    iget-object p2, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 13
    .line 14
    iget-object v7, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 15
    .line 16
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    if-eq v7, v5, :cond_13

    .line 23
    .line 24
    if-eq v7, v4, :cond_1

    .line 25
    .line 26
    if-eq v7, v3, :cond_13

    .line 27
    .line 28
    if-ne v7, v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    :goto_0
    iget-boolean v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    iget-boolean v2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    :cond_2
    if-nez p3, :cond_3

    .line 44
    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_3
    iput-boolean v5, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    .line 48
    .line 49
    iput-boolean v5, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->g:Z

    .line 50
    .line 51
    iget-object p3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 52
    .line 53
    iput-boolean v5, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->F:Z

    .line 54
    .line 55
    iput-boolean v5, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->G:Z

    .line 56
    .line 57
    iget-boolean p3, p1, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 58
    .line 59
    if-eqz p3, :cond_4

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->N()Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    if-eqz p3, :cond_5

    .line 80
    .line 81
    iget-object v0, p3, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 82
    .line 83
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->e:Z

    .line 84
    .line 85
    if-ne v0, v5, :cond_5

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    if-eqz p3, :cond_6

    .line 89
    .line 90
    iget-object v0, p3, Landroidx/compose/ui/node/LayoutNode;->P:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 91
    .line 92
    iget-boolean v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->f:Z

    .line 93
    .line 94
    if-ne v0, v5, :cond_6

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    sget-object p3, Landroidx/compose/ui/node/Invalidation;->k:Landroidx/compose/ui/node/Invalidation;

    .line 98
    .line 99
    invoke-virtual {p2, p1, p3}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_a

    .line 108
    .line 109
    if-eqz p3, :cond_8

    .line 110
    .line 111
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-ne v0, v5, :cond_8

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_8
    if-eqz p3, :cond_9

    .line 119
    .line 120
    invoke-virtual {p3}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    if-ne p3, v5, :cond_9

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_9
    sget-object p3, Landroidx/compose/ui/node/Invalidation;->m:Landroidx/compose/ui/node/Invalidation;

    .line 128
    .line 129
    invoke-virtual {p2, p1, p3}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 130
    .line 131
    .line 132
    :cond_a
    :goto_2
    iget-boolean p1, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 133
    .line 134
    if-nez p1, :cond_13

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->F(Landroidx/compose/ui/node/LayoutNode;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object p2, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->d:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_13

    .line 150
    .line 151
    if-eq p2, v5, :cond_13

    .line 152
    .line 153
    if-eq p2, v4, :cond_13

    .line 154
    .line 155
    if-eq p2, v3, :cond_13

    .line 156
    .line 157
    if-ne p2, v2, :cond_12

    .line 158
    .line 159
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    if-eqz p2, :cond_d

    .line 164
    .line 165
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_c

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_c
    const/4 v2, 0x0

    .line 173
    goto :goto_4

    .line 174
    :cond_d
    :goto_3
    move v2, v5

    .line 175
    :goto_4
    if-nez p3, :cond_e

    .line 176
    .line 177
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 178
    .line 179
    .line 180
    move-result p3

    .line 181
    if-nez p3, :cond_13

    .line 182
    .line 183
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    if-eqz p3, :cond_e

    .line 188
    .line 189
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    if-ne p3, v2, :cond_e

    .line 194
    .line 195
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 200
    .line 201
    iget-boolean v3, v3, Landroidx/compose/ui/node/MeasurePassDelegate;->D:Z

    .line 202
    .line 203
    if-ne p3, v3, :cond_e

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_e
    iget-object p3, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->p:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 207
    .line 208
    iput-boolean v5, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->F:Z

    .line 209
    .line 210
    iput-boolean v5, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->G:Z

    .line 211
    .line 212
    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 213
    .line 214
    if-eqz v0, :cond_f

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_f
    iget-boolean p3, p3, Landroidx/compose/ui/node/MeasurePassDelegate;->D:Z

    .line 218
    .line 219
    if-eqz p3, :cond_13

    .line 220
    .line 221
    if-eqz v2, :cond_13

    .line 222
    .line 223
    if-eqz p2, :cond_10

    .line 224
    .line 225
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->q()Z

    .line 226
    .line 227
    .line 228
    move-result p3

    .line 229
    if-ne p3, v5, :cond_10

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_10
    if-eqz p2, :cond_11

    .line 233
    .line 234
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->r()Z

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    if-ne p2, v5, :cond_11

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_11
    iget-object p2, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->b:Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;

    .line 242
    .line 243
    sget-object p3, Landroidx/compose/ui/node/Invalidation;->m:Landroidx/compose/ui/node/Invalidation;

    .line 244
    .line 245
    invoke-virtual {p2, p1, p3}, Landroidx/compose/ui/node/DepthSortedSetsForDifferentPasses;->a(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/Invalidation;)V

    .line 246
    .line 247
    .line 248
    :goto_5
    iget-boolean p1, v6, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->d:Z

    .line 249
    .line 250
    if-nez p1, :cond_13

    .line 251
    .line 252
    invoke-virtual {p0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->F(Landroidx/compose/ui/node/LayoutNode;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_12
    invoke-static {}, Lk8;->e()V

    .line 257
    .line 258
    .line 259
    :cond_13
    :goto_6
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->F:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->G:Z

    .line 5
    .line 6
    iget-object v2, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->v()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-boolean v3, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->R:Z

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iput-boolean v1, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->R:Z

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->T:Le;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->G:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 32
    .line 33
    iput-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-boolean v2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->v:Z

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iput-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->v:Z

    .line 54
    .line 55
    iget-object p0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->w:Landroidx/compose/ui/contentcapture/a;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final z(Landroid/view/ViewStructure;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofillManager()Landroidx/compose/ui/autofill/AndroidAutofillManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->k:Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/compose/ui/semantics/SemanticsOwner;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->p:Landroid/view/autofill/AutofillId;

    .line 12
    .line 13
    iget-object v3, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->n:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->m:Landroidx/compose/ui/spatial/RectManager;

    .line 16
    .line 17
    invoke-static {p1, v1, v2, v3, v0}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt;->a(Landroid/view/ViewStructure;Landroidx/compose/ui/semantics/SemanticsInfo;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V

    .line 18
    .line 19
    .line 20
    sget-object v4, Landroidx/collection/ObjectListKt;->a:[Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v4, Landroidx/collection/MutableObjectList;

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    invoke-direct {v4, v5}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v4}, Landroidx/collection/ObjectList;->e()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    iget v1, v4, Landroidx/collection/ObjectList;->b:I

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    sub-int/2addr v1, v5

    .line 44
    invoke-virtual {v4, v1}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast v1, Landroid/view/ViewStructure;

    .line 52
    .line 53
    iget v6, v4, Landroidx/collection/ObjectList;->b:I

    .line 54
    .line 55
    sub-int/2addr v6, v5

    .line 56
    invoke-virtual {v4, v6}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 64
    .line 65
    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    const/4 v8, 0x0

    .line 76
    :goto_0
    if-ge v8, v7, :cond_0

    .line 77
    .line 78
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 83
    .line 84
    move-object v10, v9

    .line 85
    check-cast v10, Landroidx/compose/ui/node/LayoutNode;

    .line 86
    .line 87
    iget-boolean v10, v10, Landroidx/compose/ui/node/LayoutNode;->Z:Z

    .line 88
    .line 89
    if-nez v10, :cond_4

    .line 90
    .line 91
    move-object v10, v9

    .line 92
    check-cast v10, Landroidx/compose/ui/node/LayoutNode;

    .line 93
    .line 94
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->L()Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-eqz v11, :cond_4

    .line 99
    .line 100
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->M()Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-nez v11, :cond_1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    if-eqz v10, :cond_3

    .line 112
    .line 113
    iget-object v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 114
    .line 115
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->g:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 116
    .line 117
    invoke-virtual {v10, v11}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-nez v11, :cond_2

    .line 122
    .line 123
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsActions;->h:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 124
    .line 125
    invoke-virtual {v10, v11}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-nez v11, :cond_2

    .line 130
    .line 131
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 132
    .line 133
    invoke-virtual {v10, v11}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-nez v11, :cond_2

    .line 138
    .line 139
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 140
    .line 141
    invoke-virtual {v10, v11}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    if-nez v11, :cond_2

    .line 146
    .line 147
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 148
    .line 149
    const/16 v12, 0x22

    .line 150
    .line 151
    if-lt v11, v12, :cond_3

    .line 152
    .line 153
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 154
    .line 155
    invoke-virtual {v10, v11}, Landroidx/collection/ScatterMap;->b(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-eqz v10, :cond_3

    .line 160
    .line 161
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/ViewStructure;->addChildCount(I)I

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    invoke-virtual {v1, v10}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-static {v10, v9, v2, v3, v0}, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt;->a(Landroid/view/ViewStructure;Landroidx/compose/ui/semantics/SemanticsInfo;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v9}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v10}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {v4, v9}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v1}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getAutofill()Landroidx/compose/ui/autofill/AndroidAutofill;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-eqz p0, :cond_6

    .line 193
    .line 194
    invoke-static {p0, p1}, Landroidx/compose/ui/autofill/AndroidAutofill_androidKt;->a(Landroidx/compose/ui/autofill/AndroidAutofill;Landroid/view/ViewStructure;)V

    .line 195
    .line 196
    .line 197
    :cond_6
    return-void
.end method
