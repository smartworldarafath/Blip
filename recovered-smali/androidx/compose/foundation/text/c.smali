.class public final synthetic Landroidx/compose/foundation/text/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/ui/text/input/TextInputService;

.field public final synthetic m:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic n:Landroidx/compose/ui/text/input/ImeOptions;

.field public final synthetic o:Landroidx/compose/ui/text/input/OffsetMapping;

.field public final synthetic p:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final synthetic q:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic r:Landroidx/compose/foundation/relocation/BringIntoViewRequester;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/LegacyTextFieldState;ZLandroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/c;->j:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/compose/foundation/text/c;->k:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/c;->l:Landroidx/compose/ui/text/input/TextInputService;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/c;->m:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/text/c;->n:Landroidx/compose/ui/text/input/ImeOptions;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/text/c;->o:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/foundation/text/c;->p:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/foundation/text/c;->q:Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/foundation/text/c;->r:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/compose/foundation/text/c;->j:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 4
    .line 5
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    check-cast p1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->f:Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v2, p0, Landroidx/compose/foundation/text/c;->m:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 40
    .line 41
    iget-object v5, p0, Landroidx/compose/foundation/text/c;->o:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-boolean v0, p0, Landroidx/compose/foundation/text/c;->k:Z

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->d:Landroidx/compose/ui/text/input/EditProcessor;

    .line 50
    .line 51
    iget-object v1, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->v:Lt6;

    .line 52
    .line 53
    iget-object v4, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->w:Lt6;

    .line 54
    .line 55
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v8, Lp2;

    .line 61
    .line 62
    const/16 v9, 0x11

    .line 63
    .line 64
    invoke-direct {v8, v0, v1, v6, v9}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/compose/foundation/text/c;->l:Landroidx/compose/ui/text/input/TextInputService;

    .line 68
    .line 69
    iget-object v1, v0, Landroidx/compose/ui/text/input/TextInputService;->a:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 70
    .line 71
    iget-object v9, p0, Landroidx/compose/foundation/text/c;->n:Landroidx/compose/ui/text/input/ImeOptions;

    .line 72
    .line 73
    invoke-interface {v1, v2, v9, v8, v4}, Landroidx/compose/ui/text/input/PlatformTextInputService;->c(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lp2;Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Landroidx/compose/ui/text/input/TextInputSession;

    .line 77
    .line 78
    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, v0, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-object v4, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object v4, v3, Landroidx/compose/foundation/text/LegacyTextFieldState;->e:Landroidx/compose/ui/text/input/TextInputSession;

    .line 89
    .line 90
    invoke-static {v3, v2, v5}, Landroidx/compose/foundation/text/CoreTextFieldKt;->f(Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-static {v3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->e(Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/4 v8, 0x0

    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    invoke-virtual {v3}, Landroidx/compose/foundation/text/LegacyTextFieldState;->d()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    iget-object v1, p0, Landroidx/compose/foundation/text/c;->r:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 114
    .line 115
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)V

    .line 116
    .line 117
    .line 118
    const/4 v1, 0x3

    .line 119
    iget-object v2, p0, Landroidx/compose/foundation/text/c;->q:Lkotlinx/coroutines/CoroutineScope;

    .line 120
    .line 121
    invoke-static {v2, v8, v8, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    iget-object p0, p0, Landroidx/compose/foundation/text/c;->p:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 131
    .line 132
    invoke-virtual {p0, v8}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->g(Landroidx/compose/ui/geometry/Offset;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_1
    return-object v7
.end method
