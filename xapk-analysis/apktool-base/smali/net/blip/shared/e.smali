.class public final synthetic Lnet/blip/shared/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:Ljava/util/LinkedHashMap;

.field public final synthetic k:Lnet/blip/shared/SelectableLazyListScope;

.field public final synthetic l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;Lnet/blip/shared/SelectableLazyListScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/shared/e;->j:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/shared/e;->k:Lnet/blip/shared/SelectableLazyListScope;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/shared/e;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    check-cast p3, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    check-cast p4, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v1, p4, 0x6

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    move-object v1, p3

    .line 25
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x2

    .line 36
    :goto_0
    or-int/2addr v1, p4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v1, p4

    .line 39
    :goto_1
    and-int/lit8 p4, p4, 0x30

    .line 40
    .line 41
    if-nez p4, :cond_3

    .line 42
    .line 43
    move-object p4, p3

    .line 44
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 45
    .line 46
    invoke-virtual {p4, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    if-eqz p4, :cond_2

    .line 51
    .line 52
    const/16 p4, 0x20

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/16 p4, 0x10

    .line 56
    .line 57
    :goto_2
    or-int/2addr v1, p4

    .line 58
    :cond_3
    and-int/lit16 p4, v1, 0x93

    .line 59
    .line 60
    const/16 v0, 0x92

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    if-eq p4, v0, :cond_4

    .line 64
    .line 65
    const/4 p4, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    move p4, v2

    .line 68
    :goto_3
    and-int/lit8 v0, v1, 0x1

    .line 69
    .line 70
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 71
    .line 72
    invoke-virtual {p3, v0, p4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-eqz p4, :cond_a

    .line 77
    .line 78
    iget-object p4, p0, Lnet/blip/shared/e;->j:Ljava/util/LinkedHashMap;

    .line 79
    .line 80
    invoke-virtual {p4, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    check-cast p4, Ljava/lang/Integer;

    .line 85
    .line 86
    iget-object v0, p0, Lnet/blip/shared/e;->k:Lnet/blip/shared/SelectableLazyListScope;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    if-eqz p4, :cond_5

    .line 90
    .line 91
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    iget-object v5, v0, Lnet/blip/shared/SelectableLazyListScope;->c:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    move-object v4, v3

    .line 109
    :goto_4
    new-instance v5, Lnet/blip/shared/SelectableLazyItemScope;

    .line 110
    .line 111
    if-eqz v4, :cond_6

    .line 112
    .line 113
    iget-object v6, v4, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_6
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    :goto_5
    if-eqz v4, :cond_7

    .line 123
    .line 124
    iget-object v2, v4, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;->c:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_7
    const/4 v4, 0x7

    .line 128
    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    :goto_6
    invoke-direct {v5, v6, v2, p1}, Lnet/blip/shared/SelectableLazyItemScope;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableSharedFlow;Landroidx/compose/foundation/lazy/LazyItemScope;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-virtual {p3, p4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    or-int/2addr p1, v4

    .line 144
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    or-int/2addr p1, v4

    .line 149
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-nez p1, :cond_8

    .line 154
    .line 155
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 156
    .line 157
    if-ne v4, p1, :cond_9

    .line 158
    .line 159
    :cond_8
    new-instance v4, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;

    .line 160
    .line 161
    invoke-direct {v4, v5, p4, v0, v3}, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;-><init>(Lnet/blip/shared/SelectableLazyItemScope;Ljava/lang/Integer;Lnet/blip/shared/SelectableLazyListScope;Lkotlin/coroutines/Continuation;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_9
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 168
    .line 169
    invoke-static {p3, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 170
    .line 171
    .line 172
    and-int/lit8 p1, v1, 0x70

    .line 173
    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object p0, p0, Lnet/blip/shared/e;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 179
    .line 180
    invoke-virtual {p0, v5, p2, p3, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto :goto_7

    .line 184
    :cond_a
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 185
    .line 186
    .line 187
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 188
    .line 189
    return-object p0
.end method
