.class public final Lnet/blip/shared/SelectableLazyListScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/foundation/lazy/LazyListScope;

.field public final b:Lma;

.field public final c:Ljava/util/HashMap;

.field public d:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListScope;Lma;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/shared/SelectableLazyListScope;->a:Landroidx/compose/foundation/lazy/LazyListScope;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/shared/SelectableLazyListScope;->b:Lma;

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lnet/blip/shared/SelectableLazyListScope;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(ILnet/blip/shared/SelectionListKt$items$3;Lnet/blip/shared/SelectionListKt$items$4;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    :goto_0
    move-object v3, v1

    .line 21
    check-cast v3, Lkotlin/ranges/IntProgressionIterator;

    .line 22
    .line 23
    iget-boolean v3, v3, Lkotlin/ranges/IntProgressionIterator;->l:Z

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    move-object v3, v1

    .line 28
    check-cast v3, Lkotlin/collections/IntIterator;

    .line 29
    .line 30
    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object v4, v3

    .line 35
    check-cast v4, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p3, v4}, Lnet/blip/shared/SelectionListKt$items$4;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v2, 0x0

    .line 70
    const/4 v3, 0x1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-instance v4, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;

    .line 84
    .line 85
    iget v5, p0, Lnet/blip/shared/SelectableLazyListScope;->d:I

    .line 86
    .line 87
    add-int/2addr v5, v1

    .line 88
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/4 v7, 0x5

    .line 95
    invoke-static {v3, v7, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-direct {v4, v5, v6, v2}, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;-><init>(ILkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/SharedFlowImpl;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lnet/blip/shared/SelectableLazyListScope;->c:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    new-instance p3, Lnet/blip/shared/e;

    .line 128
    .line 129
    invoke-direct {p3, v0, p0, p4}, Lnet/blip/shared/e;-><init>(Ljava/util/LinkedHashMap;Lnet/blip/shared/SelectableLazyListScope;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 130
    .line 131
    .line 132
    new-instance p4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 133
    .line 134
    const v0, 0x112d53ba

    .line 135
    .line 136
    .line 137
    invoke-direct {p4, v0, v3, p3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1, v2, p2, p4}, Lnet/blip/shared/SelectableLazyListScope;->b(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final b(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 1
    iget v0, p0, Lnet/blip/shared/SelectableLazyListScope;->d:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lnet/blip/shared/SelectableLazyListScope;->d:I

    .line 5
    .line 6
    iget-object p0, p0, Lnet/blip/shared/SelectableLazyListScope;->a:Landroidx/compose/foundation/lazy/LazyListScope;

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/lazy/LazyListScope;->b(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    .line 1
    iget v0, p0, Lnet/blip/shared/SelectableLazyListScope;->d:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lnet/blip/shared/SelectableLazyListScope;->d:I

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/shared/SelectableLazyListScope;->a:Landroidx/compose/foundation/lazy/LazyListScope;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroidx/compose/foundation/lazy/LazyListScope;->c(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lnet/blip/shared/SelectableLazyListScope;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ne v1, v2, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 51
    :goto_2
    iget-object v0, v0, Lnet/blip/shared/SelectableLazyListScope$SelectableItemInfo;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method
