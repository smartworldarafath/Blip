.class public final synthetic Ls7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 14
    iput p1, p0, Ls7;->j:I

    iput-boolean p4, p0, Ls7;->k:Z

    iput-object p2, p0, Ls7;->l:Ljava/lang/Object;

    iput-object p3, p0, Ls7;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavBackStackEntry;Ljava/util/List;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls7;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ls7;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p3, p0, Ls7;->k:Z

    .line 10
    .line 11
    iput-object p2, p0, Ls7;->m:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Ls7;->j:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Ls7;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Ls7;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iget-boolean p0, p0, Ls7;->k:Z

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v5, Landroidx/compose/foundation/pager/PagerState;

    .line 17
    .line 18
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    new-instance p0, Landroidx/compose/foundation/pager/f;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, v5, v4, v2}, Landroidx/compose/foundation/pager/f;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 32
    .line 33
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->y:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 34
    .line 35
    new-instance v6, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 36
    .line 37
    invoke-direct {v6, v0, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, v2, v6}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p0, Landroidx/compose/foundation/pager/f;

    .line 44
    .line 45
    invoke-direct {p0, v5, v4, v3}, Landroidx/compose/foundation/pager/f;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    .line 46
    .line 47
    .line 48
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->A:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 49
    .line 50
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 51
    .line 52
    invoke-direct {v3, v0, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Landroidx/compose/foundation/pager/f;

    .line 60
    .line 61
    invoke-direct {p0, v5, v4, v2}, Landroidx/compose/foundation/pager/f;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 65
    .line 66
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 67
    .line 68
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 69
    .line 70
    invoke-direct {v3, v0, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance p0, Landroidx/compose/foundation/pager/f;

    .line 77
    .line 78
    const/4 v2, 0x3

    .line 79
    invoke-direct {p0, v5, v4, v2}, Landroidx/compose/foundation/pager/f;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;I)V

    .line 80
    .line 81
    .line 82
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->B:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 83
    .line 84
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 85
    .line 86
    invoke-direct {v3, v0, p0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-object v1

    .line 93
    :pswitch_0
    check-cast v5, Landroidx/compose/animation/ContentTransform;

    .line 94
    .line 95
    check-cast v4, Landroidx/compose/animation/ContentTransform;

    .line 96
    .line 97
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    if-eqz p0, :cond_1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move-object v5, v4

    .line 106
    :goto_1
    return-object v5

    .line 107
    :pswitch_1
    check-cast v5, Landroidx/compose/ui/focus/FocusManager;

    .line 108
    .line 109
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 110
    .line 111
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    .line 112
    .line 113
    sget-object v0, Lnet/blip/shared/FocusBlockerKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    if-eqz p0, :cond_2

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_2
    check-cast p1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->b()Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusStateImpl;->a()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-nez p0, :cond_3

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_3
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Landroidx/compose/ui/focus/FocusDirection;

    .line 141
    .line 142
    if-nez p0, :cond_4

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    iget p1, p0, Landroidx/compose/ui/focus/FocusDirection;->a:I

    .line 146
    .line 147
    if-ne p1, v2, :cond_5

    .line 148
    .line 149
    check-cast v5, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 150
    .line 151
    invoke-virtual {v5, v2, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->h(IZ)Z

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_5
    :goto_2
    if-nez p0, :cond_6

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    iget p0, p0, Landroidx/compose/ui/focus/FocusDirection;->a:I

    .line 159
    .line 160
    if-ne p0, v3, :cond_7

    .line 161
    .line 162
    check-cast v5, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 163
    .line 164
    invoke-virtual {v5, v3, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->h(IZ)Z

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_7
    :goto_3
    invoke-static {v5}, Landroidx/compose/ui/focus/FocusManager;->a(Landroidx/compose/ui/focus/FocusManager;)V

    .line 169
    .line 170
    .line 171
    :goto_4
    return-object v1

    .line 172
    :pswitch_2
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 173
    .line 174
    check-cast v4, Ljava/util/List;

    .line 175
    .line 176
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 177
    .line 178
    new-instance p1, Lt7;

    .line 179
    .line 180
    invoke-direct {p1, v5, v4, p0}, Lt7;-><init>(Landroidx/navigation/NavBackStackEntry;Ljava/util/List;Z)V

    .line 181
    .line 182
    .line 183
    iget-object p0, v5, Landroidx/navigation/NavBackStackEntry;->t:Landroidx/lifecycle/LifecycleRegistry;

    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 186
    .line 187
    .line 188
    new-instance p0, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$lambda$0$0$0$$inlined$onDispose$1;

    .line 189
    .line 190
    invoke-direct {p0, v5, p1}, Landroidx/navigation/compose/DialogHostKt$PopulateVisibleList$lambda$0$0$0$$inlined$onDispose$1;-><init>(Landroidx/navigation/NavBackStackEntry;Lt7;)V

    .line 191
    .line 192
    .line 193
    return-object p0

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
